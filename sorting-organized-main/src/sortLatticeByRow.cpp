/***
 * Sorting approach that imposes a fixed movement scheme instead of finding the best move in a greedy fashion
 * Idea by Francisco Romão and Jonas Winklmann, Implemented by Jonas Winklmann
 */

#include "sortLatticeByRow.hpp"

#include <algorithm>
#include <numeric>
#include <sstream>
#include <iostream>
#ifndef __SYNTHESIS__
#include <deque>
#endif

// Fixed-size limits for HLS-safe buffers (supports 80x250 testbench)
constexpr size_t HLS_MAX_ARRAY_XC = 256;
constexpr size_t HLS_MAX_ARRAY_AC = 256;

/**
 * @brief Convert a bounded index to double for selection arrays.
 * @param idx Index value (bounded by HLS_MAX_ARRAY_* constants).
 * @return Index represented as double.
 */
static inline int16_t to_double_index(size_t idx) {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
    return static_cast<int16_t>(idx);
}

/**
 * @brief Compute half-width offset used for elbow steps in channel moves.
 * @param sortingChannelWidth Width of the sorting channel.
 * @return Offset placing the elbow at channel center.
 */
static inline int16_t xc_center_offset(unsigned int sortingChannelWidth) {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
    return static_cast<int16_t>((sortingChannelWidth + 1) >> 1);
}

// Small, deterministic insertion sort for short double arrays (length <= MAX_SELECTION_SIZE).
// Prefer this over hlsSort here to shorten the critical path in resolveSortingDeficiencies.
static inline void insertionSortSmall(int16_t* begin, int16_t* end) {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
    size_t n = (size_t)(end - begin);
    for(size_t i = 1; i < n; ++i) {
#ifdef __SYNTHESIS__
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
#endif
        int16_t key = begin[i];
        size_t j = i;
        while(j > 0 && begin[j - 1] > key) {
#ifdef __SYNTHESIS__
#pragma HLS LOOP_TRIPCOUNT min=0 max=MAX_SELECTION_SIZE
#pragma HLS PIPELINE off
#endif
            begin[j] = begin[j - 1];
            --j;
        }
        begin[j] = key;
    }
}

// Lightweight stream abstraction to enable dataflow without depending on
// Vitis headers during normal g++ builds. Under synthesis, this maps to
// hls::stream; for CPU builds, a simple deque-backed stub is used.
#ifdef __SYNTHESIS__
#include <hls_stream.h>
template <typename T>
using HlsStream = hls::stream<T>;
#else
template <typename T>
class HlsStream {
    std::deque<T> q;
public:
    inline void write(const T &v) { q.push_back(v); }
    inline T read() { T v = q.front(); q.pop_front(); return v; }
    inline bool empty() const { return q.empty(); }
};
#endif

// Forward declaration for helper
bool& accessStateArrayDimIndepedent(Array2D& stateArray, size_t indexXC, size_t indexAC, bool vertical);

// Lightweight tokens for dataflow communication
struct IndexToken {
    unsigned int idx;
    bool last;
};

/**
 * @brief Direct check for strictly increasing order (no streams).
 * Replaces produceThresholds+consumeAndCheck to avoid hls::stream depth issues
 * that cause RTL co-simulation to deadlock.
 * @param selection Selection array to check.
 * @param count Number of elements.
 * @return true if ordering is strictly increasing, false otherwise.
 */
static inline bool checkStrictlyIncreasing(const int16_t* selection, size_t count) {
    if(count <= 1) return true;
    for(size_t i = 1; i < count; ++i) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
#endif
        // Integer comparison: strictly increasing means currentValue > prevValue
        if(selection[i] <= selection[i-1]) {
            return false;
        }
    }
    return true;
}

struct HLSIntList {
    int data[HLS_MAX_ARRAY_AC];
    unsigned short count;  // 16-bit: max is HLS_MAX_ARRAY_AC=256, avoids 64-bit timing paths
    
    void clear() {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
// BRAM OPTIMIZATION: Force register storage for frequently accessed members
#pragma HLS AGGREGATE variable=count bit
#endif
        count = 0;
    }
    void push_back(int v) {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
        if(count < HLS_MAX_ARRAY_AC) data[count++] = v;
    }
    void pop_back() {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
        if(count>0) --count;
    }
    int& operator[](size_t i) {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
        return data[i];
    }
    const int& operator[](size_t i) const {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
        return data[i];
    }
    size_t size() const {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
        return count;
    }
    bool empty() const {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
        return count == 0;
    }
    int back() const {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
        return data[count-1];
    }
    
    // Helper to erase element at beginning
    void erase_front() {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
        if(count > 0) {
            // HLS: pipeline shift loop for low latency when removing front element
            // RESTRUCTURED: Fixed bound loop with conditional to enable potential unrolling
            for(size_t i = 0; i < HLS_MAX_ARRAY_AC; i++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=HLS_MAX_ARRAY_AC
#endif
                if(i < (size_t)(count-1)) {
                    data[i] = data[i+1];
                }
            }
            count--;
        }
    }
    
    // Helper to erase range [start_idx, start_idx+num)
    void erase_range(size_t start_idx, size_t num) {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
        if(start_idx >= count) return;
        if(start_idx + num > count) num = count - start_idx;
        // Precompute loop bound to avoid addition in loop condition (timing optimization)
        const size_t shift_end = count - num;
        // HLS: pipeline range shift to minimize latency when removing elements
        // II=2 relaxed due to loop counter timing constraint (7.851ns @ II=1)
        for(size_t i = start_idx; i < shift_end; i++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=2
#pragma HLS LOOP_TRIPCOUNT min=1 max=100
#endif
            data[i] = data[i + num];
        }
        count -= num;
    }
    
    // Helper to insert sorted value
    void insert_sorted(int val) {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
        if(count >= HLS_MAX_ARRAY_AC) return;
        
        // RESTRUCTURED: Single-pass algorithm - no nested loops
        // Scan backwards from end, shifting elements until we find insertion point
        size_t insert_pos = count;
        
        // RESTRUCTURED: Fixed bound loop with conditional for HLS unroll compatibility
        // Single loop: find position by scanning backwards and shift simultaneously
        for(size_t i = 0; i < HLS_MAX_ARRAY_AC; i++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=2
#pragma HLS LOOP_TRIPCOUNT min=0 max=HLS_MAX_ARRAY_AC
#endif
            if(i < count) {
                size_t idx = count - 1 - i;  // Process from end to start
                if(data[idx] > val) {
                    // This element should be after val, shift it right
                    data[idx + 1] = data[idx];
                    insert_pos = idx;
                } else {
                    // Found insertion point, stop
                    break;
                }
            }
        }
        
        data[insert_pos] = val;
        count++;
    }
    
    // Copy subrange to another HLSIntList
    void copy_subrange(size_t start_idx, size_t num, HLSIntList& dest) const {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
        dest.clear();
        if(start_idx >= count) return;
        if(start_idx + num > count) num = count - start_idx;
        // HLS: pipeline copy to enable fast subrange extraction
        for(size_t i = 0; i < num && dest.count < HLS_MAX_ARRAY_AC; i++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=HLS_MAX_ARRAY_AC
#endif
            dest.data[dest.count++] = data[start_idx + i];
        }
    }
};

// Result structure for findUnusableAtoms - replaces std::tuple of vectors
// CRITICAL BRAM: Each HLSIntList is 256 ints, we have 3×256 = 768 of them
// Total: 768 × 256 ints × 4 bytes = 768KB - MAJOR BRAM CONSUMER
// Partitioning applied in function scope where this is used
struct UnusableAtomsResult {
    HLSIntList usableAtoms[HLS_MAX_ARRAY_XC];
    HLSIntList unusableAtoms[HLS_MAX_ARRAY_XC];
    HLSIntList targetSites[HLS_MAX_ARRAY_XC];
    bool valid;
};

// Fixed-size list for size_t (for parking spots)
struct HLSSizeTList {
    size_t data[HLS_MAX_ARRAY_AC];
    unsigned short count;  // 16-bit: max is HLS_MAX_ARRAY_AC=256, avoids 64-bit timing paths
    void clear() {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
        count = 0;
    }
    void push_back(size_t v) {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
        if(count < HLS_MAX_ARRAY_AC) data[count++] = v;
    }
    void pop_back() {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
        if(count>0) --count;
    }
    size_t& operator[](size_t i) {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
        return data[i];
    }
    const size_t& operator[](size_t i) const {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
        return data[i];
    }
    size_t size() const {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
        return count;
    }
    bool empty() const {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
        return count == 0;
    }
    size_t back() const {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
        return data[count-1];
    }
    
    void erase_front() {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
        if(count > 0) {
            // HLS: pipeline shift loop for efficient front element removal
            // RESTRUCTURED: Fixed bound loop with conditional to enable potential unrolling
            for(size_t i = 0; i < HLS_MAX_ARRAY_AC; i++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=HLS_MAX_ARRAY_AC
#endif
                if(i + 1 < count) {
                    data[i] = data[i+1];
                }
            }
            count--;
        }
    }
};

/**
 * @brief Dimension-agnostic accessor mapping XC/AC coordinates to row/col.
 * @param stateArray Lattice to access.
 * @param indexXC Across-channel index.
 * @param indexAC Along-channel index.
 * @param vertical True if rows are channels, false if columns are channels.
 * @return Reference to the targeted lattice cell.
 */
bool& accessStateArrayDimIndepedent(Array2D& stateArray, 
    size_t indexXC, size_t indexAC, bool vertical)
{
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
    if(vertical)
    {
        return stateArray(indexAC, indexXC);
    }
    else
    {
        return stateArray(indexXC, indexAC);
    }
}

/**
 * @brief Clear the first N channels to free the sorting corridor.
 * @param stateArray Lattice to mutate.
 * @param vertical Orientation flag (true: rows are channels).
 * @param count Number of channels to clear.
 * @param moveList Output move list to record executed moves.
 * @param arraySizeAC Along-channel length.
 * @param maxTones Maximum atoms per move.
 * @param spacingXC Unused spacing parameter (kept for API symmetry).
 * @param targetGapXC Unused gap parameter (kept for API symmetry).
 */
template<typename ML>
void clearFirstNRowsOrCols(Array2D& stateArray,
    bool vertical, unsigned int count, ML& moveList, unsigned int arraySizeAC,
    unsigned int maxTones, double spacingXC, int targetGapXC)
{
#ifdef __SYNTHESIS__
#pragma HLS INLINE off
// Enable function to be scheduled independently in parent
#pragma HLS FUNCTION_INSTANTIATE variable=vertical
#endif
    (void)spacingXC; // unused
    (void)targetGapXC; // unused
    
    // OPTIMIZATION: Separate scan and flush phases to enable better pipelining
    // Phase 1: Scan all atoms and store indices in local buffer
    // Phase 2: Create moves from buffered indices in batches
    
    for(unsigned int i = 0; i < count; i++) {
#ifdef __SYNTHESIS__
#pragma HLS LOOP_TRIPCOUNT min=1 max=64
#pragma HLS PIPELINE off
#endif
        // Local buffer to store occupied indices for this channel
        int occupiedIndices[HLS_MAX_ARRAY_AC];
#ifdef __SYNTHESIS__
#pragma HLS ARRAY_PARTITION variable=occupiedIndices cyclic factor=2
// LUT REDUCTION: Reduced partition factor from 4 to 2 to match reduced unroll factor
#endif
        unsigned int occupiedCount = 0;
        
        // PHASE 1: Pipeline-friendly scan - pure read, no move construction
        for(unsigned int indexAC = 0; indexAC < arraySizeAC; indexAC++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=HLS_MAX_ARRAY_AC
#endif
            bool occupied = accessStateArrayDimIndepedent(stateArray, i, indexAC, vertical);
            if(occupied && occupiedCount < HLS_MAX_ARRAY_AC) {
                occupiedIndices[occupiedCount++] = (int)indexAC;
            }
        }
        
        // PHASE 2: Create moves from buffered indices in batches
        // This loop is unpipelined but simple - just move construction and execution
        unsigned int processedCount = 0;
        while(processedCount < occupiedCount) {
    #ifdef __SYNTHESIS__
    #pragma HLS PIPELINE off
    #endif
#ifdef __SYNTHESIS__
#pragma HLS LOOP_TRIPCOUNT min=1 max=16
// AGGRESSIVE: Typical atom count ~50, maxTones ~16 → ~3-4 batches per channel
#endif
            ParallelMove move;
            ParallelMove::Step start;
            ParallelMove::Step end;
            
            // Set channel dimension (XC)
            if(vertical) {
                start.colSelection[start.colSelectionCount++] = i;
                end.colSelection[end.colSelectionCount++] = -1;
            } else {
                start.rowSelection[start.rowSelectionCount++] = i;
                end.rowSelection[end.rowSelectionCount++] = -1;
            }
            
            // Fill batch with up to maxTones atoms
            // OPTIMIZATION: Unroll for parallel copying from buffer to move selections
            unsigned int batchSize = 0;
            for(unsigned int j = 0; j < maxTones && (processedCount + j) < occupiedCount; j++) {
#ifdef __SYNTHESIS__
#pragma HLS UNROLL factor=2
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
// LUT REDUCTION: Reduced unroll factor from 4 to 2 to save LUTs (still 2× parallel)
#endif
                int index = occupiedIndices[processedCount + j];
                if(vertical) {
                    start.rowSelection[start.rowSelectionCount++] = index;
                    end.rowSelection[end.rowSelectionCount++] = index;
                } else {
                    start.colSelection[start.colSelectionCount++] = index;
                    end.colSelection[end.colSelectionCount++] = index;
                }
                batchSize++;
            }
            
            processedCount += batchSize;
            
            move.steps[move.stepsCount++] = start;
            move.steps[move.stepsCount++] = end;
            move.execute(stateArray);
            moveList.push_back(move);
        }
    }
}

/**
 * @brief Sort remaining channels by filling targets and parking excess atoms.
 * @param stateArray Lattice to mutate.
 * @param vertical Orientation flag (true: rows are channels).
 * @param sortingChannelWidth Width of the cleared sorting corridor.
 * @param moveList Output move list to record staged moves.
 * @param arraySizeAC Along-channel length.
 * @param arraySizeXC Across-channel length.
 * @param maxTones Maximum atoms per move.
 * @param spacingXC Unused spacing parameter (kept for API symmetry).
 * @param usableAtoms Per-channel usable atom indices.
 * @param unusableAtoms Per-channel unusable atom indices.
 * @param targetSites Per-channel required target sites.
 * @param compZoneXCStart Computation zone XC start index.
 * @param compZoneXCEnd Computation zone XC end index.
 * @param compZoneACStart Computation zone AC start index.
 * @param compZoneACEnd Computation zone AC end index.
 * @param targetGapXC XC spacing between eligible parking sites.
 * @param targetGapAC AC spacing between parking/target sites.
 * @return true on success, false if insufficent atoms trigger fallback.
 */
template<typename ML>
bool sortRemainingRowsOrCols(Array2D& stateArray,
    bool vertical, unsigned int sortingChannelWidth, ML& moveList, unsigned int arraySizeAC,
    unsigned int arraySizeXC, unsigned int maxTones, double spacingXC, HLSIntList* usableAtoms, 
    HLSIntList* unusableAtoms, HLSIntList* targetSites, 
    size_t compZoneXCStart, size_t compZoneXCEnd, size_t compZoneACStart, size_t compZoneACEnd,
    int targetGapXC, int targetGapAC)
{
#ifdef __SYNTHESIS__
    #pragma HLS INLINE off
    // LUT REDUCTION: Use BRAM instead of LUTRAM to save LUTs (we have 400 BRAM budget)
    #pragma HLS BIND_STORAGE variable=usableAtoms type=RAM_2P impl=BRAM
    #pragma HLS BIND_STORAGE variable=unusableAtoms type=RAM_2P impl=BRAM
    #pragma HLS BIND_STORAGE variable=targetSites type=RAM_2P impl=BRAM
#endif
    (void)spacingXC; // unused
    HLSSizeTList parkingSpotsPerSuitableIndexXC;
    parkingSpotsPerSuitableIndexXC.clear();
    int minParkingSpot = (int)compZoneACStart - ((int)compZoneACStart / targetGapAC) * targetGapAC;
    for(int i = minParkingSpot; i <= (int)compZoneACStart - targetGapAC; i += targetGapAC)
    {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=HLS_MAX_ARRAY_AC
#endif
        parkingSpotsPerSuitableIndexXC.push_back(i);
    }
    for(size_t i = compZoneACEnd + targetGapAC - 1; i < arraySizeAC; i += targetGapAC)
    {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=HLS_MAX_ARRAY_AC
#endif
        parkingSpotsPerSuitableIndexXC.push_back(i);
    }
    
    size_t currentTargetIndexXC = compZoneXCStart;
    unsigned int requiredAtoms = 0;
    HLSSizeTList parkingSpotsRemainingAtCurrentIndexXC;
    parkingSpotsRemainingAtCurrentIndexXC.clear();
    
    // Calculate total required atoms manually (HLS-compatible)
    unsigned int totalRequiredAtoms = 0;
    // HLS: pipeline simple accumulation to get total count quickly
    for(size_t i = 0; i < arraySizeXC; i++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=HLS_MAX_ARRAY_XC
#endif
        totalRequiredAtoms += targetSites[i].size();
    }
    
    // Outer sweep across XC indices (Pass A): stage moves only to enable outer-loop pipelining
    bool earlyExitTriggered = false;
    for(size_t indexXC = sortingChannelWidth + 1; indexXC < arraySizeXC; indexXC++)
    {
#ifdef __SYNTHESIS__
#pragma HLS LOOP_FLATTEN off
#pragma HLS PIPELINE off
#pragma HLS LOOP_TRIPCOUNT min=1 max=50
// CRITICAL: PIPELINE off to prevent synthesis hang - loop body too complex for HLS dependency analysis
#endif
        if(indexXC >= compZoneXCEnd && totalRequiredAtoms == 0)
        {
            earlyExitTriggered = true;
            break;
        }
        size_t targetIndexXC = indexXC - sortingChannelWidth - 1;

        requiredAtoms += targetSites[targetIndexXC].size();
        unsigned int parkingSpots = parkingSpotsRemainingAtCurrentIndexXC.size();
        
        // OPTIMIZATION: Replace modulo with simple arithmetic check
        // Instead of checking every iteration, calculate how many eligible spots exist in range
        size_t rangeStart = currentTargetIndexXC + 1;
        size_t rangeEnd = targetIndexXC;
        if(rangeEnd >= rangeStart && targetGapXC > 0) {
            // Find first eligible spot >= rangeStart
            size_t offset = (rangeStart > compZoneXCStart) ? (rangeStart - compZoneXCStart - 1) : 0;
            size_t firstEligible = compZoneXCStart + ((offset / targetGapXC) + 1) * targetGapXC;
            
            // Count eligible spots in range [rangeStart, rangeEnd]
            if(firstEligible <= rangeEnd) {
                size_t numEligible = ((rangeEnd - firstEligible) / targetGapXC) + 1;
                parkingSpots += numEligible * parkingSpotsPerSuitableIndexXC.size();
            }
        }

        // Excess atoms that cannot be used for filling target sites or parking spots are thrown away
        if(targetIndexXC >= compZoneXCStart)
        {
            // STEP 1 OPTIMIZATION: Replace insert_sorted with push_back + deferred sort
            // This eliminates nested loops and enables pipelining
            unsigned short currentSize = usableAtoms[indexXC].size();
            unsigned short threshold = (unsigned short)(requiredAtoms + parkingSpots);
            unsigned short discardCount = 0;
            
            // TIMING OPT: Track front/back indices AND write position to eliminate ALL count dependencies
            unsigned short frontIdx = 0;
            unsigned short backIdx = currentSize > 0 ? currentSize - 1 : 0;
            unsigned short unusableWriteIdx = unusableAtoms[indexXC].count;
            
            // Pipeline-friendly: bounded loop with simple operations
            // CRITICAL: No .push_back(), .back(), or .size() calls - all direct array/index access
            for(unsigned short iter = 0; iter < HLS_MAX_ARRAY_AC; iter++)
            {
    #ifdef __SYNTHESIS__
    #pragma HLS PIPELINE II=1
    #pragma HLS LOOP_TRIPCOUNT min=0 max=16
    #endif
                if(currentSize <= threshold) break;
                if(discardCount >= HLS_MAX_ARRAY_AC) break;
                if(frontIdx > backIdx) break;  // Safety: front passed back
                if(unusableWriteIdx >= HLS_MAX_ARRAY_AC) break;  // Safety: output full
                
                int frontVal = usableAtoms[indexXC].data[frontIdx];
                int backVal = usableAtoms[indexXC].data[backIdx];
                
                if(frontVal > (int)arraySizeAC - backVal - 1)
                {
                    unusableAtoms[indexXC].data[unusableWriteIdx++] = frontVal;
                    frontIdx++;
                }
                else
                {
                    unusableAtoms[indexXC].data[unusableWriteIdx++] = backVal;
                    backIdx--;
                }
                currentSize--;
                discardCount++;
            }
            
            // Update counts after loop completes
            unusableAtoms[indexXC].count = unusableWriteIdx;
            
            // Compact usableAtoms by shifting remaining elements to front
            if(discardCount > 0) {
                unsigned short writeIdx = 0;
                for(unsigned short readIdx = frontIdx; readIdx <= backIdx && readIdx < HLS_MAX_ARRAY_AC; readIdx++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=0 max=HLS_MAX_ARRAY_AC
#endif
                    usableAtoms[indexXC].data[writeIdx++] = usableAtoms[indexXC].data[readIdx];
                }
                usableAtoms[indexXC].count = writeIdx;
            }
            
            // Sort is required for correctness - atoms must be in order for scatter logic
            // OPTIMIZATION: Use insertion sort which is faster for small, nearly-sorted arrays
            if(discardCount > 0) {
                size_t n = unusableAtoms[indexXC].count;
                // Insertion sort: O(n²) worst case but O(n) for nearly sorted, less overhead than bubble sort
                for(size_t i = 1; i < n && i < HLS_MAX_ARRAY_AC; i++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE off
#pragma HLS LOOP_TRIPCOUNT min=1 max=32
#endif
                    int key = unusableAtoms[indexXC].data[i];
                    int j = i - 1;
                    // Shift elements right until we find insertion point
                    while(j >= 0 && unusableAtoms[indexXC].data[j] > key) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=0 max=32
#endif
                        unusableAtoms[indexXC].data[j + 1] = unusableAtoms[indexXC].data[j];
                        j--;
                    }
                    unusableAtoms[indexXC].data[j + 1] = key;
                }
            }
        }
        size_t indexAC_idx = 0;
        
        // BRAM OPTIMIZATION: Cache array size locally to break memory dependency
        const size_t local_unusable_size = unusableAtoms[indexXC].size();
        
        // HLS: Non-perfect nest with constructor calls - prevent flattening
        while(indexAC_idx < local_unusable_size)
        {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE off
#pragma HLS LOOP_FLATTEN off
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
#endif
            ParallelMove move;
            ParallelMove::Step start;
            ParallelMove::Step elbow;
            ParallelMove::Step end;
            int indicesLowerOrEqualMiddle = 0, indicesHigherMiddle = 0;
            
            if(vertical)
            {
                start.colSelection[start.colSelectionCount++] = to_double_index(indexXC);
                elbow.colSelection[elbow.colSelectionCount++] = to_double_index(indexXC) - xc_center_offset(sortingChannelWidth);
                end.colSelection[end.colSelectionCount++] = to_double_index(indexXC) - xc_center_offset(sortingChannelWidth);
                
                // BRAM OPTIMIZATION: Cache size to avoid repeated array access
                const size_t local_unusable_size_inner = unusableAtoms[indexXC].size();
                
                while(indexAC_idx < local_unusable_size_inner && start.rowSelectionCount < maxTones)
                {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
#endif
                    int indexAC_val = unusableAtoms[indexXC][indexAC_idx];
                    start.rowSelection[start.rowSelectionCount++] = indexAC_val;
                    elbow.rowSelection[elbow.rowSelectionCount++] = indexAC_val;
                    if(indexAC_val <= (int)arraySizeAC / 2)
                    {
                        indicesLowerOrEqualMiddle++;
                    }
                    else
                    {
                        indicesHigherMiddle++;
                    }
                    indexAC_idx++;
                }
                // AGGRESSIVE UNROLL: Scatter loops for parallel execution
                for(int i = 0; i < indicesLowerOrEqualMiddle; i++)
                {
#ifdef __SYNTHESIS__
#pragma HLS UNROLL factor=2
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
#endif
                    end.rowSelection[end.rowSelectionCount++] = -indicesLowerOrEqualMiddle - targetGapAC + 1 + i;
                }
                for(int i = 0; i < indicesHigherMiddle; i++)
                {
#ifdef __SYNTHESIS__
#pragma HLS UNROLL factor=2
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
#endif
                    end.rowSelection[end.rowSelectionCount++] = arraySizeAC + targetGapAC - 1 + i;
                }
            }
            else
            {
                start.rowSelection[start.rowSelectionCount++] = to_double_index(indexXC);
                elbow.rowSelection[elbow.rowSelectionCount++] = to_double_index(indexXC) - xc_center_offset(sortingChannelWidth);
                end.rowSelection[end.rowSelectionCount++] = to_double_index(indexXC) - xc_center_offset(sortingChannelWidth);
                
                // BRAM OPTIMIZATION: Cache size locally
                const size_t local_unusable_size_h = unusableAtoms[indexXC].size();
                
                while(indexAC_idx < local_unusable_size_h && start.colSelectionCount < maxTones)
                {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
#endif
                    int indexAC_val = unusableAtoms[indexXC][indexAC_idx];
                    start.colSelection[start.colSelectionCount++] = indexAC_val;
                    elbow.colSelection[elbow.colSelectionCount++] = indexAC_val;
                    if(indexAC_val <= (int)arraySizeAC / 2)
                    {
                        indicesLowerOrEqualMiddle++;
                    }
                    else
                    {
                        indicesHigherMiddle++;
                    }
                    indexAC_idx++;
                }
                // AGGRESSIVE UNROLL: Scatter loops for parallel execution
                for(int i = 0; i < indicesLowerOrEqualMiddle; i++)
                {
#ifdef __SYNTHESIS__
#pragma HLS UNROLL factor=2
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
#endif
                    end.colSelection[end.colSelectionCount++] = -indicesLowerOrEqualMiddle - targetGapAC + 1 + i;
                }
                for(int i = 0; i < indicesHigherMiddle; i++)
                {
#ifdef __SYNTHESIS__
#pragma HLS UNROLL factor=2
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
#endif
                    end.colSelection[end.colSelectionCount++] = arraySizeAC + targetGapAC - 1 + i;
                }
            }
            
            move.steps[move.stepsCount++] = start;
            move.steps[move.stepsCount++] = elbow;
            move.steps[move.stepsCount++] = end;
            // Execute immediately AND queue for deferred execution
            move.execute(stateArray);
            moveList.push_back(move);
        }
        if(targetIndexXC < compZoneXCStart)
        {
            size_t indexAC_idx2 = 0;
            
            // BRAM OPTIMIZATION: Cache array size to avoid repeated memory access
            const size_t local_usable_size = usableAtoms[indexXC].size();
            
            while(indexAC_idx2 < local_usable_size)
            {
        #ifdef __SYNTHESIS__
        #pragma HLS PIPELINE off
        #endif
    #ifdef __SYNTHESIS__
    #pragma HLS PIPELINE off
    #pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
    #endif
                ParallelMove move;
                ParallelMove::Step start;
                ParallelMove::Step end;
                
                if(vertical)
                {
                    start.colSelection[start.colSelectionCount++] = to_double_index(indexXC);
                    end.colSelection[end.colSelectionCount++] = to_double_index(targetIndexXC);
                    
                    // BRAM OPTIMIZATION: Use cached size
                    while(indexAC_idx2 < local_usable_size && start.rowSelectionCount < maxTones)
                    {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
#endif
                        int indexAC_val = usableAtoms[indexXC][indexAC_idx2];
                        start.rowSelection[start.rowSelectionCount++] = indexAC_val;
                        end.rowSelection[end.rowSelectionCount++] = indexAC_val;
                        indexAC_idx2++;
                    }
                }
                else
                {
                    start.rowSelection[start.rowSelectionCount++] = to_double_index(indexXC);
                    end.rowSelection[end.rowSelectionCount++] = to_double_index(targetIndexXC);
                    
                    // BRAM OPTIMIZATION: Use cached size
                    while(indexAC_idx2 < local_usable_size && start.colSelectionCount < maxTones)
                    {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
#endif
                        int indexAC_val = usableAtoms[indexXC][indexAC_idx2];
                        start.colSelection[start.colSelectionCount++] = indexAC_val;
                        end.colSelection[end.colSelectionCount++] = indexAC_val;
                        indexAC_idx2++;
                    }
                }
                
                move.steps[move.stepsCount++] = start;
                move.steps[move.stepsCount++] = end;
                // Execute immediately AND queue for deferred execution
                move.execute(stateArray);
                moveList.push_back(move);
            }
            usableAtoms[targetIndexXC] = usableAtoms[indexXC];
            usableAtoms[indexXC].clear();
        }
        else
        {
            // RESTRUCTURED: Use bounded for-loop instead of while for better HLS scheduling
            for(size_t outer_usable_iter = 0; outer_usable_iter < 30; outer_usable_iter++)
            {
#ifdef __SYNTHESIS__
#pragma HLS LOOP_TRIPCOUNT min=0 max=7 avg=5
// AGGRESSIVE: Typical batch sizes drain atoms in 2-4 iterations
#endif
                if(usableAtoms[indexXC].empty()) break;

                if(targetSites[currentTargetIndexXC].empty() && 
                    (parkingSpotsRemainingAtCurrentIndexXC.empty() || usableAtoms[indexXC].size() <= requiredAtoms))
                {
                    if(currentTargetIndexXC < targetIndexXC)
                    {
                        currentTargetIndexXC++;
                        if((currentTargetIndexXC - compZoneXCStart + 1) % targetGapXC == 0)
                        {
                            parkingSpotsRemainingAtCurrentIndexXC = parkingSpotsPerSuitableIndexXC;
                        }
                        else
                        {
                            parkingSpotsRemainingAtCurrentIndexXC.clear();
                        }
                    }
                    else
                    {
                        break;
                    }
                }

                ParallelMove move;
                ParallelMove::Step start, elbow1, elbow2, end;      
                     
                if(vertical)
                {
                    start.colSelection[start.colSelectionCount++] = to_double_index(indexXC);
                    elbow1.colSelection[elbow1.colSelectionCount++] = to_double_index(indexXC) - xc_center_offset(sortingChannelWidth);
                    elbow2.colSelection[elbow2.colSelectionCount++] = to_double_index(indexXC) - xc_center_offset(sortingChannelWidth);
                    end.colSelection[end.colSelectionCount++] = to_double_index(currentTargetIndexXC);
                }
                else
                {
                    start.rowSelection[start.rowSelectionCount++] = to_double_index(indexXC);
                    elbow1.rowSelection[elbow1.rowSelectionCount++] = to_double_index(indexXC) - xc_center_offset(sortingChannelWidth);
                    elbow2.rowSelection[elbow2.rowSelectionCount++] = to_double_index(indexXC) - xc_center_offset(sortingChannelWidth);
                    end.rowSelection[end.rowSelectionCount++] = to_double_index(currentTargetIndexXC);
                }  

                // Deferred mutations: compact lists after pipelined selection
                // Use temp buffers to avoid II violations from in-place compaction
                int tempUsable[HLS_MAX_ARRAY_AC];
                size_t tempTarget[HLS_MAX_ARRAY_AC];
#ifdef __SYNTHESIS__
                // LUT REDUCTION: Use BRAM for temp buffers to save LUTs
                #pragma HLS BIND_STORAGE variable=tempUsable type=RAM_1P impl=BRAM
                #pragma HLS BIND_STORAGE variable=tempTarget type=RAM_1P impl=BRAM
#endif                      

                if(!parkingSpotsRemainingAtCurrentIndexXC.empty() && usableAtoms[indexXC].size() > requiredAtoms)
                {
                    // PIPELINED: Index-based selection using local prefetch to enable II=1
                    unsigned short maxIter = maxTones;
                    if(maxIter > MAX_SELECTION_SIZE) maxIter = MAX_SELECTION_SIZE;

                    // Track consumption via indices instead of mutating lists
                    unsigned short usableAtomCount = usableAtoms[indexXC].size();
                    unsigned short excessAtoms = usableAtomCount - requiredAtoms;
                    unsigned short parkingDynSize = parkingSpotsRemainingAtCurrentIndexXC.size();

                    // Prefetch up to maxIter values from front/back into small local buffers
                    unsigned short usedIndices = maxIter;
                    if(usedIndices > excessAtoms) usedIndices = excessAtoms;
                    if(usedIndices > parkingDynSize) usedIndices = parkingDynSize;

                    unsigned short indicesFromFront = usedIndices / 2;
                    unsigned short indicesFromBack = usedIndices - indicesFromFront;

                    for(size_t i = 0; i < indicesFromFront; i++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=0 max=MAX_SELECTION_SIZE/2
#endif
                        if(vertical)
                        {
                            start.rowSelection[start.rowSelectionCount++] = usableAtoms[indexXC].data[i];
                            end.rowSelection[end.rowSelectionCount++] = parkingSpotsRemainingAtCurrentIndexXC.data[i];
                        }
                        else
                        {
                            start.colSelection[start.colSelectionCount++] = usableAtoms[indexXC].data[i];
                            end.colSelection[end.colSelectionCount++] = parkingSpotsRemainingAtCurrentIndexXC.data[i];
                        }
                    }
                    for(size_t i = 0; i < indicesFromBack; i++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=0 max=MAX_SELECTION_SIZE/2
#endif
                        if(vertical)
                        {
                            start.rowSelection[start.rowSelectionCount++] = 
                                usableAtoms[indexXC].data[usableAtomCount - indicesFromBack + i];;
                            end.rowSelection[end.rowSelectionCount++] = 
                                parkingSpotsRemainingAtCurrentIndexXC.data[parkingDynSize - indicesFromBack + i];
                        }
                        else
                        {
                            start.colSelection[start.colSelectionCount++] = 
                                usableAtoms[indexXC].data[usableAtomCount - indicesFromBack + i];;
                            end.colSelection[end.colSelectionCount++] = 
                                parkingSpotsRemainingAtCurrentIndexXC.data[parkingDynSize - indicesFromBack + i];
                        }
                    }
                        
                    // Compact usableAtoms[indexXC] via temp buffer
                    size_t writeIdx = 0;
                    for(size_t readIdx = indicesFromFront; readIdx < (size_t)(usableAtomCount - indicesFromBack); readIdx++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=0 max=HLS_MAX_ARRAY_AC
#endif
                        tempUsable[writeIdx++] = usableAtoms[indexXC].data[readIdx];
                    }
                    for(size_t i = 0; i < writeIdx; i++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=0 max=HLS_MAX_ARRAY_AC
#endif
                        usableAtoms[indexXC].data[i] = tempUsable[i];
                    }
                    usableAtoms[indexXC].count = writeIdx;
                        
                    // Compact parkingSpotsRemainingAtCurrentIndexXC via temp buffer
                    writeIdx = 0;
                    for(size_t readIdx = indicesFromFront; readIdx < (size_t)(parkingDynSize - indicesFromBack); readIdx++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=0 max=HLS_MAX_ARRAY_AC
#endif
                        tempTarget[writeIdx++] = parkingSpotsRemainingAtCurrentIndexXC.data[readIdx];
                    }
                    for(size_t i = 0; i < writeIdx; i++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=0 max=HLS_MAX_ARRAY_AC
#endif
                        parkingSpotsRemainingAtCurrentIndexXC.data[i] = tempTarget[i];
                    }
                    parkingSpotsRemainingAtCurrentIndexXC.count = writeIdx;

                    // Append selected parking spots to usableAtoms[currentTargetIndexXC]
                    // Use local counter to avoid II violation from push_back's count++ dependency
                    size_t targetCount = usableAtoms[currentTargetIndexXC].count;
                    for(size_t i = 0; i < usedIndices; i++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=0 max=MAX_SELECTION_SIZE
#endif
                        if(targetCount < HLS_MAX_ARRAY_AC) {
                            usableAtoms[currentTargetIndexXC].data[targetCount++] = (int)end.colSelection[i];
                        }
                    }
                    usableAtoms[currentTargetIndexXC].count = targetCount;
                        
                    // Copy to elbow steps - LUT REDUCTION: removed UNROLL, accept sequential execution
                    for(size_t i = 0; i < usedIndices; i++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
#endif 
                        if(vertical)
                        {
                            elbow1.rowSelection[elbow1.rowSelectionCount++] = start.rowSelection[i];
                            elbow2.rowSelection[elbow2.rowSelectionCount++] = end.rowSelection[i];
                        }
                        else 
                        {
                            elbow1.colSelection[elbow1.colSelectionCount++] = start.colSelection[i];
                            elbow2.colSelection[elbow2.colSelectionCount++] = end.colSelection[i];
                        }
                    }
                }
                else
                {
                    unsigned int sourceAtoms = usableAtoms[indexXC].size();
                    unsigned int targetCount = targetSites[currentTargetIndexXC].size();

                    unsigned int usedIndices = maxTones;
                    if(targetCount < usedIndices)
                    {
                        usedIndices = targetCount;
                    }
                    if(sourceAtoms < usedIndices)
                    {
                        usedIndices = sourceAtoms;
                    }

                    unsigned int excessAtoms = sourceAtoms - usedIndices;
                    unsigned int excessTargets = targetSites[currentTargetIndexXC].size() - usedIndices;

                    for(size_t i = 0; i < usedIndices; i++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=0 max=MAX_SELECTION_SIZE/2
#endif
                        if(vertical)
                        {
                            start.rowSelection[start.rowSelectionCount++] = usableAtoms[indexXC].data[excessAtoms / 2 + i];
                            end.rowSelection[end.rowSelectionCount++] = targetSites[currentTargetIndexXC][excessTargets / 2 + i];
                        }
                        else
                        {
                            start.colSelection[start.colSelectionCount++] = usableAtoms[indexXC].data[excessAtoms / 2 + i];
                            end.colSelection[end.colSelectionCount++] = targetSites[currentTargetIndexXC][excessTargets / 2 + i];
                        }
                    }
                        
                    // Compact usableAtoms[indexXC] via temp buffer
                    size_t writeIdx = excessAtoms / 2;
                    for(size_t readIdx = excessAtoms / 2 + usedIndices; readIdx < sourceAtoms; readIdx++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=0 max=HLS_MAX_ARRAY_AC / 2
#endif
                        tempUsable[writeIdx++] = usableAtoms[indexXC].data[readIdx];
                    }
                    for(size_t i = excessAtoms / 2; i < writeIdx; i++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=0 max=HLS_MAX_ARRAY_AC
#endif
                        usableAtoms[indexXC].data[i] = tempUsable[i];
                    }
                    usableAtoms[indexXC].count = writeIdx;
                        
                    // Compact parkingSpotsRemainingAtCurrentIndexXC via temp buffer
                    writeIdx = excessTargets / 2;
                    for(size_t readIdx = excessTargets / 2 + usedIndices; readIdx < targetCount; readIdx++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=0 max=HLS_MAX_ARRAY_AC / 2
#endif
                        tempTarget[writeIdx++] = targetSites[currentTargetIndexXC].data[readIdx];
                    }
                    for(size_t i = excessTargets / 2; i < writeIdx; i++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=0 max=HLS_MAX_ARRAY_AC
#endif
                        targetSites[currentTargetIndexXC].data[i] = tempTarget[i];
                    }
                    targetSites[currentTargetIndexXC].count = writeIdx;

                    requiredAtoms -= usedIndices;
                    totalRequiredAtoms -= usedIndices;
                        
                    // Copy to elbow steps - LUT REDUCTION: removed UNROLL, accept sequential execution
                    for(size_t i = 0; i < usedIndices; i++) {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
#endif 
                        if(vertical)
                        {
                            elbow1.rowSelection[elbow1.rowSelectionCount++] = start.rowSelection[i];
                            elbow2.rowSelection[elbow2.rowSelectionCount++] = end.rowSelection[i];
                        }
                        else 
                        {
                            elbow1.colSelection[elbow1.colSelectionCount++] = start.colSelection[i];
                            elbow2.colSelection[elbow2.colSelectionCount++] = end.colSelection[i];
                        }
                    }
                }
                    
                move.steps[move.stepsCount++] = start;
                move.steps[move.stepsCount++] = elbow1;
                move.steps[move.stepsCount++] = elbow2;
                move.steps[move.stepsCount++] = end;
                // Execute immediately AND queue for deferred execution
                move.execute(stateArray);
                moveList.push_back(move);
            }
        }
    }

    // Pass B: execute staged moves in order after planning completes
    for(size_t i = 0; i < moveList.size(); i++)
    {
#ifdef __SYNTHESIS__
#pragma HLS LOOP_TRIPCOUNT min=1 max=512
        // In SYNTHESIS mode, Pass B does nothing (moves handled during planning)
        // This section only executes in C mode to complete the simulation
#else
        moveList[i].execute(stateArray);
#endif
    }

    return earlyExitTriggered ? true : (totalRequiredAtoms == 0);
}

// AGGRESSIVE BRAM OPTIMIZATION: Changed to output parameters to avoid copying 768KB struct
// Returns bool for success, populates arrays in-place
/**
 * @brief Classify lattice sites into usable/unusable atoms and enumerate targets.
 * @param stateArray Input lattice.
 * @param vertical Orientation flag (true: rows are channels).
 * @param arraySizeXC Across-channel length.
 * @param arraySizeAC Along-channel length.
 * @param compZoneRowStart Computation zone row start.
 * @param compZoneRowEnd Computation zone row end.
 * @param compZoneColStart Computation zone column start.
 * @param compZoneColEnd Computation zone column end.
 * @param targetGeometry Desired occupancy mask within computation zone.
 * @param usableAtoms Output per-channel usable atom indices.
 * @param unusableAtoms Output per-channel unusable atom indices.
 * @param targetSites Output per-channel target site indices.
 * @return true on success, false if bounds exceeded.
 */
bool findUnusableAtoms(Array2D& stateArray, bool vertical, unsigned int arraySizeXC, unsigned int arraySizeAC,
    size_t compZoneRowStart, size_t compZoneRowEnd, size_t compZoneColStart, size_t compZoneColEnd, 
    Array2D &targetGeometry,
    HLSIntList* usableAtoms, HLSIntList* unusableAtoms, HLSIntList* targetSites)
{
#ifdef __SYNTHESIS__
    #pragma HLS INLINE off
    // LUT REDUCTION: Use BRAM instead of LUTRAM to save LUTs (we have 400 BRAM budget)
    #pragma HLS BIND_STORAGE variable=usableAtoms type=RAM_2P impl=BRAM
    #pragma HLS BIND_STORAGE variable=unusableAtoms type=RAM_2P impl=BRAM
    #pragma HLS BIND_STORAGE variable=targetSites type=RAM_2P impl=BRAM
    // Bind input arrays to dual-port BRAM to reduce port contention in neighbor loops
    #pragma HLS BIND_STORAGE variable=stateArray type=RAM_2P impl=BRAM
    #pragma HLS BIND_STORAGE variable=targetGeometry type=RAM_2P impl=BRAM
#endif
    
    int usabilityPreventingNeighborhoodMaskRowDist = MIN_DIST_FROM_OCC_SITES / ROW_SPACING;
    int usabilityPreventingNeighborhoodMaskColDist = MIN_DIST_FROM_OCC_SITES / COL_SPACING;

    // Bounds check for compile-time limits
    if(arraySizeXC > HLS_MAX_ARRAY_XC || arraySizeAC > HLS_MAX_ARRAY_AC) {
        return false;
    }
    
    // Initialize counts
    // AGGRESSIVE UNROLL: Clear all arrays in parallel (HLS_MAX_ARRAY_XC=256)
    for(size_t i=0; i<arraySizeXC; i++) {
#ifdef __SYNTHESIS__
#pragma HLS UNROLL factor=8
#pragma HLS LOOP_TRIPCOUNT min=1 max=HLS_MAX_ARRAY_XC
#endif
        unusableAtoms[i].clear(); 
        usableAtoms[i].clear(); 
        targetSites[i].clear(); 
    }

    for(size_t indexXC = 0; indexXC < arraySizeXC; indexXC++)
    {
#ifdef __SYNTHESIS__
#pragma HLS LOOP_FLATTEN off
#pragma HLS PIPELINE off
#pragma HLS LOOP_TRIPCOUNT min=1 max=50
#endif
        for(size_t indexAC = 0; indexAC < arraySizeAC; indexAC++)
        {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=2
// OPTIMIZATION: Reduced from II=4 to II=2 to overlap atom processing more aggressively
// Inner neighbor loops have II=2 (5 iters × II=2 = 10 cycles), attempt to start new atom every 2 cycles
#pragma HLS LOOP_TRIPCOUNT min=1 max=50
#endif
            size_t row = vertical ? indexAC : indexXC;
            size_t col = vertical ? indexXC : indexAC;

            if(row >= compZoneRowStart && row < compZoneRowEnd && col >= compZoneColStart && 
                col < compZoneColEnd && targetGeometry(row - compZoneRowStart, col - compZoneColStart))
            {
                targetSites[indexXC].push_back((int)indexAC);
            }
            if(stateArray(row,col))
            {
                bool usable = true;
                // Precompute threshold to avoid repeated multiplications in inner loop (timing optimization)
                const double minDistThresholdSq = MIN_DIST_FROM_OCC_SITES * MIN_DIST_FROM_OCC_SITES;
                for(int rowShift = -usabilityPreventingNeighborhoodMaskRowDist; 
                    rowShift <= usabilityPreventingNeighborhoodMaskRowDist; rowShift++)
                {
#ifdef __SYNTHESIS__
#pragma HLS LOOP_TRIPCOUNT min=1 max=5
// AGGRESSIVE: Typical MIN_DIST=1, ROW_SPACING=0.5 → mask=2, range=5
// Note: Removed LOOP_FLATTEN off to allow inner pipelined loop to work (pragma conflict)
#endif
                    double rowDist = (double)rowShift * (double)ROW_SPACING;
                    int shiftedRow = (int)row + rowShift;
                    if(shiftedRow >= 0 && shiftedRow < (int)(vertical ? arraySizeAC : arraySizeXC))
                    {
                        // Refactor inner loop to avoid carried dependencies: compute colDist directly from k (no accumulation)
                        // Use conditional accumulation instead of break to enable better HLS pipelining
                        const int startColShift = -usabilityPreventingNeighborhoodMaskColDist;
                        const int totalColIters = usabilityPreventingNeighborhoodMaskColDist * 2 + 1;
                        for(int k = 0; k < totalColIters; ++k)
                        {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=2
#pragma HLS LOOP_TRIPCOUNT min=1 max=5
// AGGRESSIVE: Typical MIN_DIST=1, COL_SPACING=0.5 → mask=2, range=5
// Note: Relaxed from II=1 to II=2 due to timing constraints (14.79ns combinational delay).
#endif
                            // Compute colShift, colDist, and shiftedCol directly from k (no carried state)
                            const int colShift = startColShift + k;
                            const double colDist = (double)colShift * (double)COL_SPACING;
                            const int shiftedCol = (int)col + colShift;
                            
                            // Skip the central cell only when both shifts are zero
                            const bool skipSelf = (rowShift == 0) && (colShift == 0);
                            if(usable && shiftedCol >= 0 && shiftedCol < (int)(vertical ? arraySizeXC : arraySizeAC) && !skipSelf)
                            {
                                // Break timing-critical path: compute squares separately to reduce combinational delay
                                const double rowDistSq = rowDist * rowDist;
                                const double colDistSq = colDist * colDist;
                                const double sqDist = rowDistSq + colDistSq;
                                if(stateArray(shiftedRow, shiftedCol) &&
                                   sqDist < minDistThresholdSq)
                                {
                                    usable = false;
                                }
                            }
                        }
                    }
                }
                if(usable)
                {
                    usableAtoms[indexXC].push_back((int)indexAC);
                }
                else
                {
                    unusableAtoms[indexXC].push_back((int)indexAC);
                }
            }
        }
    }

    return true;
}

/**
 * @brief Fallback redistribution to fill remaining target sites after main pass.
 * @param stateArray Lattice to mutate.
 * @param vertical Orientation flag (true: rows are channels).
 * @param sortingChannelWidth Width of the cleared sorting corridor.
 * @param moveList Output move list to record executed moves.
 * @param arraySizeAC Along-channel length.
 * @param arraySizeXC Across-channel length.
 * @param maxTones Maximum atoms per move.
 * @param spacingXC Unused spacing parameter (kept for API symmetry).
 * @param usableAtoms Per-channel usable atoms.
 * @param unusableAtoms Per-channel unusable atoms (unused in this function).
 * @param targetSites Per-channel target sites.
 * @param compZoneXCStart Computation zone XC start.
 * @param compZoneXCEnd Computation zone XC end.
 * @param compZoneACStart Computation zone AC start.
 * @param compZoneACEnd Computation zone AC end.
 * @param targetGapXC XC spacing for eligible sites.
 * @param targetGapAC AC spacing for eligible sites.
 * @return true if all deficiencies resolved, false otherwise.
 */
template<typename ML>
bool resolveSortingDeficiencies(Array2D& stateArray,
    bool vertical, unsigned int sortingChannelWidth, ML& moveList, unsigned int arraySizeAC,
    unsigned int arraySizeXC, unsigned int maxTones, double spacingXC, HLSIntList* usableAtoms, 
    HLSIntList* unusableAtoms, HLSIntList* targetSites, 
    size_t compZoneXCStart, size_t compZoneXCEnd, size_t compZoneACStart, size_t compZoneACEnd,
    int targetGapXC, int targetGapAC)
{
#ifdef __SYNTHESIS__
    #pragma HLS INLINE off
    #pragma HLS FUNCTION_INSTANTIATE variable=vertical
    // LUT REDUCTION: Use BRAM instead of LUTRAM to save LUTs (we have 400 BRAM budget)
    #pragma HLS BIND_STORAGE variable=usableAtoms type=RAM_2P impl=BRAM
    #pragma HLS BIND_STORAGE variable=targetSites type=RAM_2P impl=BRAM
#endif
    // Silence unused-parameter warnings for synthesis; these are kept for API symmetry
    (void)arraySizeAC;
    (void)spacingXC;
    (void)unusableAtoms;
    (void)compZoneXCStart;
    (void)compZoneXCEnd;
    (void)compZoneACStart;
    (void)compZoneACEnd;
    (void)targetGapXC;
    (void)targetGapAC;
    size_t lastIndexXCWithUsableAtoms = arraySizeXC - 1;
    // Pre-compute channel offset (integer math) to reduce critical path in inner loops
    unsigned int channelOffsetInt = (sortingChannelWidth + 1) >> 1;
    // Outer target fill loop; contains control and nested loops, not a perfect nest
    for(size_t targetIndexXC = 0; targetIndexXC < arraySizeXC; targetIndexXC++)
    {
#ifdef __SYNTHESIS__
#pragma HLS LOOP_FLATTEN off
#pragma HLS PIPELINE off
// DISABLE outer pipeline to allow inner loops to pipeline
#pragma HLS LOOP_TRIPCOUNT min=0 max=10
// AGGRESSIVE: Typically only ~10 XC rows have deficient targets, not all rows
#endif
        // Cache the target count locally to avoid a carried dependency on targetSites_count
        size_t target_count_local = targetSites[targetIndexXC].size();
        // HLS: Non-perfect nest with constructor calls - prevent flattening
        size_t deficiency_iter_count = 0;
        while(target_count_local > 0 && deficiency_iter_count < 10000)
        {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE off
#pragma HLS LOOP_TRIPCOUNT min=0 max=4
// AGGRESSIVE: Most targets filled in 1-4 batches (count/maxTones ratio)
#endif
            deficiency_iter_count++;
            size_t empty_search_count = 0;
            while(usableAtoms[lastIndexXCWithUsableAtoms].empty() && empty_search_count < 10000)
            {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE off
#pragma HLS LOOP_TRIPCOUNT min=0 max=3
// AGGRESSIVE: Typically find usable atoms within 2-3 rows - no pipelining needed
#endif
                empty_search_count++;
                if(lastIndexXCWithUsableAtoms == 0)
                {
                    return false;
                }
                lastIndexXCWithUsableAtoms--;
            }
            // Break calculation into steps to allow register insertion between operations
            size_t channelBaseXC = (targetIndexXC > lastIndexXCWithUsableAtoms) ? targetIndexXC : lastIndexXCWithUsableAtoms;
            unsigned int channelIndexInt = (unsigned int)(channelBaseXC + channelOffsetInt);
            // channelIndexXC removed: now use channelIndexInt directly as int16_t

            ParallelMove move;
            ParallelMove::Step start, elbow1, elbow2, end;
            
            if(vertical)
            {
                start.colSelection[start.colSelectionCount++] = (int16_t)lastIndexXCWithUsableAtoms;
                elbow1.colSelection[elbow1.colSelectionCount++] = (int16_t)channelIndexInt;
                elbow2.colSelection[elbow2.colSelectionCount++] = (int16_t)channelIndexInt;
                end.colSelection[end.colSelectionCount++] = (int16_t)targetIndexXC;
                
                // Cache counts locally to avoid loop-carried deps on synthesized memories (HLS II improvement)
                size_t src_count = usableAtoms[lastIndexXCWithUsableAtoms].size();
                size_t dst_count = target_count_local;
                unsigned int count = (unsigned int)(src_count < dst_count ? src_count : dst_count);
                if(count > maxTones) { count = maxTones; }

                // Read from the back using local indices; write back counts once
                // HLS: pipeline batch load of indices (bounded by maxTones) to minimize II
                for(size_t i = 0; i < count; i++)
                {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=8
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
// TIMING: Increased from II=5 to II=8 for critical path slack
// 80ns per iteration provides ample time for BRAM access + selection count updates
#endif
                    start.rowSelection[start.rowSelectionCount++] = 
                        usableAtoms[lastIndexXCWithUsableAtoms].data[src_count - 1 - i];
                    end.rowSelection[end.rowSelectionCount++] = 
                        targetSites[targetIndexXC].data[dst_count - 1 - i];
                }
                
                // Update counts after batch (source only); delay target count writeback
                usableAtoms[lastIndexXCWithUsableAtoms].count = src_count - count;
                target_count_local -= count;
                insertionSortSmall(start.rowSelection, start.rowSelection + start.rowSelectionCount);
                insertionSortSmall(end.rowSelection, end.rowSelection + end.rowSelectionCount);
                
                // Copy to elbow steps - AGGRESSIVE UNROLL for parallelism
                for(size_t i = 0; i < start.rowSelectionCount; i++) {
#ifdef __SYNTHESIS__
#pragma HLS UNROLL factor=2
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
#endif
                    elbow1.rowSelection[elbow1.rowSelectionCount++] = start.rowSelection[i];
                }
                for(size_t i = 0; i < end.rowSelectionCount; i++) {
#ifdef __SYNTHESIS__
#pragma HLS UNROLL factor=2
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
#endif
                    elbow2.rowSelection[elbow2.rowSelectionCount++] = end.rowSelection[i];
                }
            }
            else
            {
                start.rowSelection[start.rowSelectionCount++] = (int16_t)lastIndexXCWithUsableAtoms;
                elbow1.rowSelection[elbow1.rowSelectionCount++] = (int16_t)channelIndexInt;
                elbow2.rowSelection[elbow2.rowSelectionCount++] = (int16_t)channelIndexInt;
                end.rowSelection[end.rowSelectionCount++] = (int16_t)targetIndexXC;
                
                // Cache counts locally to avoid loop-carried deps on synthesized memories (HLS II improvement)
                size_t src_count = usableAtoms[lastIndexXCWithUsableAtoms].size();
                size_t dst_count = target_count_local;
                unsigned int count = (unsigned int)(src_count < dst_count ? src_count : dst_count);
                if(count > maxTones) { count = maxTones; }

                // Read from the back using local indices; write back counts once
                // HLS: pipeline batch load of indices (bounded by maxTones) to minimize II
                for(size_t i = 0; i < count; i++)
                {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=8
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
// TIMING: Increased from II=5 to II=8 for critical path slack
// 80ns per iteration provides ample time for BRAM access + selection count updates
#endif
                    start.colSelection[start.colSelectionCount++] = 
                        usableAtoms[lastIndexXCWithUsableAtoms].data[src_count - 1 - i];
                    end.colSelection[end.colSelectionCount++] = 
                        targetSites[targetIndexXC].data[dst_count - 1 - i];
                }
                
                // Update counts after batch (source only); delay target count writeback
                usableAtoms[lastIndexXCWithUsableAtoms].count = src_count - count;
                target_count_local -= count;
                insertionSortSmall(start.colSelection, start.colSelection + start.colSelectionCount);
                insertionSortSmall(end.colSelection, end.colSelection + end.colSelectionCount);
                
                // Copy to elbow steps - AGGRESSIVE UNROLL for parallelism
                for(size_t i = 0; i < start.colSelectionCount; i++) {
#ifdef __SYNTHESIS__
#pragma HLS UNROLL factor=2
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
#endif
                    elbow1.colSelection[elbow1.colSelectionCount++] = start.colSelection[i];
                }
                for(size_t i = 0; i < end.colSelectionCount; i++) {
#ifdef __SYNTHESIS__
#pragma HLS UNROLL factor=2
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
#endif
                    elbow2.colSelection[elbow2.colSelectionCount++] = end.colSelection[i];
                }
            }
            
            move.steps[move.stepsCount++] = start;
            move.steps[move.stepsCount++] = elbow1;
            move.steps[move.stepsCount++] = elbow2;
            move.steps[move.stepsCount++] = end;
            // Execute immediately AND queue for deferred execution
            move.execute(stateArray);
            moveList.push_back(move);
        }
        // Write back the target count once after loop completes
        targetSites[targetIndexXC].count = target_count_local;
    }

    return true;
}
/**
 * @brief Orchestrate sorting: classify atoms, clear channel, sort, resolve.
 * @param stateArray Lattice to sort (in/out).
 * @param stateArrayRows Total lattice rows.
 * @param stateArrayCols Total lattice columns.
 * @param compZoneRowStart Computation zone row start (inclusive).
 * @param compZoneRowEnd Computation zone row end (exclusive).
 * @param compZoneColStart Computation zone col start (inclusive).
 * @param compZoneColEnd Computation zone col end (exclusive).
 * @param targetGeometry Target pattern within computation zone.
 * @param moveList Output move list to capture executed moves.
 * @return true on success, false on failure.
 */
template<typename ML>
bool sortArray_impl_state_accessor(Array2D& stateArray,
    size_t stateArrayRows, size_t stateArrayCols,
    size_t compZoneRowStart, size_t compZoneRowEnd, size_t compZoneColStart, size_t compZoneColEnd,
    Array2D &targetGeometry,
    ML& moveList)
{
#ifdef __SYNTHESIS__
    // Top-level interface pragmas - simplified for HLS compatibility
    #pragma HLS INTERFACE mode=s_axilite port=return
#endif
    bool channelVertical = COL_SPACING > ROW_SPACING;
    unsigned int maxTones = AOD_TOTAL_LIMIT;

    // Across channel dir will be abbreviated as XC, along channel as AC
    unsigned int arraySizeXC, arraySizeAC;
    double spacingXC, spacingAC;
    size_t compZoneXCStart, compZoneXCEnd, compZoneACStart, compZoneACEnd;
    if(channelVertical)
    {
        if(AOD_ROW_LIMIT < maxTones)
        {
            maxTones = AOD_ROW_LIMIT;
        }
        spacingXC = COL_SPACING;
        spacingAC = ROW_SPACING;
        arraySizeXC = stateArrayCols;
        arraySizeAC = stateArrayRows;
        compZoneXCStart = compZoneColStart;
        compZoneXCEnd = compZoneColEnd;
        compZoneACStart = compZoneRowStart;
        compZoneACEnd = compZoneRowEnd;
    }
    else
    {
        if(AOD_COL_LIMIT < maxTones)
        {
            maxTones = AOD_COL_LIMIT;
        }
        spacingXC = ROW_SPACING;
        spacingAC = COL_SPACING;
        arraySizeXC = stateArrayRows;
        arraySizeAC = stateArrayCols;
        compZoneXCStart = compZoneRowStart;
        compZoneXCEnd = compZoneRowEnd;
        compZoneACStart = compZoneColStart;
        compZoneACEnd = compZoneColEnd;
    }

    int sortingChannelWidth = (int)(ceil((double)MIN_DIST_FROM_OCC_SITES / ((double)spacingXC / 2.)) / 2) + 1;
    int targetGapXC = ceil((double)MIN_DIST_FROM_OCC_SITES / spacingXC);
    int targetGapAC = ceil((double)MIN_DIST_FROM_OCC_SITES / spacingAC);

    // AGGRESSIVE BRAM: Allocate arrays locally instead of in returned struct to avoid copy
    UnusableAtomsResult unusableInfo;
    
#ifdef __SYNTHESIS__
    // LUT REDUCTION: Use BRAM instead of LUTRAM to save LUTs (we have 400 BRAM budget)
    #pragma HLS BIND_STORAGE variable=unusableInfo.usableAtoms type=RAM_2P impl=BRAM
    #pragma HLS BIND_STORAGE variable=unusableInfo.unusableAtoms type=RAM_2P impl=BRAM
    #pragma HLS BIND_STORAGE variable=unusableInfo.targetSites type=RAM_2P impl=BRAM
#endif
    
    bool success = findUnusableAtoms(stateArray, channelVertical, arraySizeXC, arraySizeAC, compZoneRowStart, 
            compZoneRowEnd, compZoneColStart, compZoneColEnd, targetGeometry,
            unusableInfo.usableAtoms, unusableInfo.unusableAtoms, unusableInfo.targetSites);
    
    if(!success) {
        return false;
    }

    clearFirstNRowsOrCols(stateArray, channelVertical, sortingChannelWidth + 1, 
        moveList, arraySizeAC, maxTones, spacingXC, targetGapXC);

    if(!sortRemainingRowsOrCols(stateArray, channelVertical, sortingChannelWidth, moveList, 
        arraySizeAC, arraySizeXC, maxTones, spacingXC, unusableInfo.usableAtoms, unusableInfo.unusableAtoms, 
        unusableInfo.targetSites, compZoneXCStart, compZoneXCEnd, compZoneACStart, compZoneACEnd, 
        targetGapXC, targetGapAC))
    {
        if(!resolveSortingDeficiencies(stateArray, channelVertical, sortingChannelWidth, moveList, 
            arraySizeAC, arraySizeXC, maxTones, spacingXC, unusableInfo.usableAtoms, unusableInfo.unusableAtoms, 
            unusableInfo.targetSites, compZoneXCStart, compZoneXCEnd, compZoneACStart, compZoneACEnd, 
            targetGapXC, targetGapAC))
        {
            /* Logging removed: Array could not be sorted. Aborting */
            return false;
        }
    }

    return true;
}

/**
 * @brief HLS entry point: validate dimensions and invoke the sorter.
 * @param stateArray Lattice to sort (in/out).
 * @param compZoneRowStart Computation zone row start.
 * @param compZoneRowEnd Computation zone row end.
 * @param compZoneColStart Computation zone col start.
 * @param compZoneColEnd Computation zone col end.
 * @param targetGeometry Target pattern within computation zone.
 * @param moveList Output move list (preallocated).
 * @return true on success, false on dimension mismatch or failure.
 */
bool sortLatticeByRowParallel_HLS(
    Array2D &stateArray, 
    size_t compZoneRowStart, size_t compZoneRowEnd, size_t compZoneColStart, size_t compZoneColEnd,
    Array2D &targetGeometry,
    HLSMoveList& moveList)
{
    if((compZoneRowEnd - compZoneRowStart) != (size_t)targetGeometry.rows())
    {
        return false;
    }
    if((compZoneColEnd - compZoneColStart) != (size_t)targetGeometry.cols())
    {
        return false;
    }

    return sortArray_impl_state_accessor(stateArray, stateArray.rows(), stateArray.cols(),
        compZoneRowStart, compZoneRowEnd, compZoneColStart, compZoneColEnd, targetGeometry, moveList);
}

// Streaming overload — no BRAM buffer, each move serialized directly to AXI-Stream
bool sortLatticeByRowParallel_HLS(
    Array2D &stateArray,
    size_t compZoneRowStart, size_t compZoneRowEnd, size_t compZoneColStart, size_t compZoneColEnd,
    Array2D &targetGeometry,
    HLSMoveStream& moveStream)
{
    if((compZoneRowEnd - compZoneRowStart) != (size_t)targetGeometry.rows())
        return false;
    if((compZoneColEnd - compZoneColStart) != (size_t)targetGeometry.cols())
        return false;

    return sortArray_impl_state_accessor(stateArray, stateArray.rows(), stateArray.cols(),
        compZoneRowStart, compZoneRowEnd, compZoneColStart, compZoneColEnd, targetGeometry, moveStream);
}

#ifndef __SYNTHESIS__
/**
 * @brief CPU-side wrapper for testbench; returns std::vector of moves.
 * @note Not synthesized; allocates HLSMoveList on heap to avoid stack overflow.
 */
std::vector<ParallelMove> sortLatticeByRowParallel(
    Array2D &stateArray, 
    size_t compZoneRowStart, size_t compZoneRowEnd, size_t compZoneColStart, size_t compZoneColEnd,
    Array2D &targetGeometry)
{
    std::stringstream strstream;
    strstream << "Initial state: \n";
    for(size_t r = 0; r < (size_t)stateArray.rows(); r++)
    {
        for(size_t c = 0; c < (size_t)stateArray.cols(); c++)
        {
            if(r >= compZoneRowStart && r < compZoneRowEnd && c >= compZoneColStart && c < compZoneColEnd)
            {
                if(targetGeometry(r - compZoneRowStart, c - compZoneColStart))
                {
                    strstream << (stateArray(r,c) ? "█" : "▒");
                }
                else
                {
                    strstream << (stateArray(r,c) ? "X" : " ");
                }
            }
            else
            {
                strstream << (stateArray(r,c) ? "█" : " ");
            }
        }
        strstream << "\n";
    }

    // Allocate HLSMoveList on heap to avoid stack overflow (each ParallelMove is ~80KB, 2000 moves = 160MB)
    HLSMoveList* hlsMoveList = new HLSMoveList();
    
    bool success = sortLatticeByRowParallel_HLS(stateArray, 
        compZoneRowStart, compZoneRowEnd, compZoneColStart, compZoneColEnd, 
        targetGeometry, *hlsMoveList);
    
    if(!success)
    {
        delete hlsMoveList;
        return {};
    }

    // Convert HLSMoveList to std::vector<ParallelMove> for API compatibility
    std::vector<ParallelMove> moveList;
    moveList.reserve(hlsMoveList->size());
    for(size_t i = 0; i < hlsMoveList->size(); i++) {
        moveList.push_back((*hlsMoveList)[i]);
    }
    delete hlsMoveList;

    std::stringstream endstrstream;
    endstrstream << "Final state: \n";
    for(size_t r = 0; r < (size_t)stateArray.rows(); r++)
    {
        for(size_t c = 0; c < (size_t)stateArray.cols(); c++)
        {
            if(r >= compZoneRowStart && r < compZoneRowEnd && c >= compZoneColStart && c < compZoneColEnd)
            {
                if(targetGeometry(r - compZoneRowStart, c - compZoneColStart))
                {
                    endstrstream << (stateArray(r,c) != 0 ? "█" : "▒");
                }
                else
                {
                    endstrstream << (stateArray(r,c) != 0 ? "X" : " ");
                }
            }
            else
            {
                endstrstream << (stateArray(r,c) != 0 ? "█" : " ");
            }
        }
        endstrstream << "\n";
    }
    
    // Output move information to stdout
    for(size_t i = 0; i < moveList.size(); i++) {
        const ParallelMove& move = moveList[i];
        unsigned int rowShift = 0, colShift = 0;
        
        if(move.stepsCount > 0) {
            const ParallelMove::Step& firstStep = move.steps[0];
            const ParallelMove::Step& lastStep = move.steps[move.stepsCount - 1];
            
            // Calculate row shift
            if(firstStep.rowSelectionCount > 0 && lastStep.rowSelectionCount > 0) {
                double minFirstRow = firstStep.rowSelection[0];
                double maxFirstRow = firstStep.rowSelection[0];
                for(size_t j = 1; j < firstStep.rowSelectionCount; j++) {
                    if(firstStep.rowSelection[j] < minFirstRow) minFirstRow = firstStep.rowSelection[j];
                    if(firstStep.rowSelection[j] > maxFirstRow) maxFirstRow = firstStep.rowSelection[j];
                }
                
                double minLastRow = lastStep.rowSelection[0];
                double maxLastRow = lastStep.rowSelection[0];
                for(size_t j = 1; j < lastStep.rowSelectionCount; j++) {
                    if(lastStep.rowSelection[j] < minLastRow) minLastRow = lastStep.rowSelection[j];
                    if(lastStep.rowSelection[j] > maxLastRow) maxLastRow = lastStep.rowSelection[j];
                }
                
                if(minFirstRow >= 0.0 && minLastRow >= 0.0) {
                    double diff = maxLastRow - minFirstRow;
                    if(diff >= 0.0) rowShift = (unsigned int)(diff + 0.5);
                }
            }
            
            // Calculate column shift
            if(firstStep.colSelectionCount > 0 && lastStep.colSelectionCount > 0) {
                double minFirstCol = firstStep.colSelection[0];
                double maxFirstCol = firstStep.colSelection[0];
                for(size_t j = 1; j < firstStep.colSelectionCount; j++) {
                    if(firstStep.colSelection[j] < minFirstCol) minFirstCol = firstStep.colSelection[j];
                    if(firstStep.colSelection[j] > maxFirstCol) maxFirstCol = firstStep.colSelection[j];
                }
                
                double minLastCol = lastStep.colSelection[0];
                double maxLastCol = lastStep.colSelection[0];
                for(size_t j = 1; j < lastStep.colSelectionCount; j++) {
                    if(lastStep.colSelection[j] < minLastCol) minLastCol = lastStep.colSelection[j];
                    if(lastStep.colSelection[j] > maxLastCol) maxLastCol = lastStep.colSelection[j];
                }
                
                if(minFirstCol >= 0.0 && minLastCol >= 0.0) {
                    double diff = maxLastCol - minFirstCol;
                    if(diff >= 0.0) colShift = (unsigned int)(diff + 0.5);
                }
            }
        }
        
        std::cout << "Move shifts " << rowShift << " rows and " 
                  << colShift << " columns for " << move.stepsCount 
                  << " steps" << std::endl;
    }
    
    return moveList;
}
#endif

// -----------------------------------------------------------------------------
// Inlined implementations migrated from sortParallel_minimal.cpp
// -----------------------------------------------------------------------------

/**
 * @brief HLS-friendly in-place sort (bubble-style) for small arrays.
 * @param begin Pointer to first element.
 * @param end Pointer past the last element.
 */
void hlsSort(int16_t* begin, int16_t* end)
{
#ifdef __SYNTHESIS__
#pragma HLS INLINE off
#endif
    size_t count = end - begin;

    // RESTRUCTURED: Bubble sort with fixed bounds and conditional execution
    // Both loops unpipelined due to unavoidable carried dependencies
    // Note: In practice, called with small arrays (typically <= 16 elements for selection counts)
    for(size_t pass = 0; pass < MAX_SELECTION_SIZE; pass++)
    {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE off
#pragma HLS LOOP_FLATTEN off
#pragma HLS LOOP_TRIPCOUNT min=1 avg=8 max=MAX_SELECTION_SIZE
#endif
        if(pass >= count) continue;

        // Single scan: bubble largest element towards end
        for(size_t i = 0; i < MAX_SELECTION_SIZE; i++)
        {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE off
#pragma HLS LOOP_TRIPCOUNT min=1 avg=8 max=MAX_SELECTION_SIZE
#endif
            if(i + 1 < count - pass && i + 1 < count) {
                if(begin[i] > begin[i+1]) {
                    int16_t temp = begin[i];
                    begin[i] = begin[i+1];
                    begin[i+1] = temp;
                }
            }
        }
    }
}

/**
 * @brief Round a coordinate down to nearest integer cell (bias for stability).
 * @param coord Coordinate value.
 * @return Size_t cell index after rounding.
 */
static inline size_t roundCoordDown(int16_t coord)
{
    return (size_t)(int)coord;
}

/**
 * @brief Execute a ParallelMove against the lattice (Array2D version).
 * @param stateArray Lattice to mutate.
 * @param alreadyMoved Optional mask to mark touched cells.
 * @return true if move executed successfully, false otherwise.
 */
bool ParallelMove::execute(Array2D& stateArray,
    Array2D* alreadyMoved) const
{
#pragma HLS INLINE off
    if(this->stepsCount == 0) {
        return false;
    }
    
    const auto& firstStep = this->steps[0];
    const auto& lastStep = this->steps[this->stepsCount - 1];

    if(firstStep.colSelectionCount != lastStep.colSelectionCount || 
       firstStep.rowSelectionCount != lastStep.rowSelectionCount)
    {
        return false;
    }
    if(firstStep.colSelectionCount == 0 || firstStep.rowSelectionCount == 0)
    {
        return false;
    }

// Only do validity checks during C simulation
#ifndef __SYNTHESIS__
    // RESTRUCTURED: Fixed bound loop for HLS optimization
    // In practice, stepsCount is typically 2-3 (start/end or start/elbow/end)
    for(size_t stepIdx = 0; stepIdx < MAX_MOVE_STEPS; stepIdx++)
    {
        if(stepIdx >= (size_t)this->stepsCount) break;
        
        const auto& step = this->steps[stepIdx];
        
        // Check row selection ordering (direct, no streams - avoids hls::stream depth=1 deadlock)
        if(step.rowSelectionCount > 1) {
            if(!checkStrictlyIncreasing(step.rowSelection, step.rowSelectionCount)) {
                return false;
            }
        }
        
        // Check col selection ordering (direct, no streams)
        if(step.colSelectionCount > 1) {
            if(!checkStrictlyIncreasing(step.colSelection, step.colSelectionCount)) {
                return false;
            }
        }
    }
#endif

    // Grid bounds for coordinate validation
    int16_t rowMax = (int16_t)(stateArray.rows() - 1);
    int16_t colMax = (int16_t)(stateArray.cols() - 1);
    
    // OPTIMIZATION: Eliminate write queue - write directly in two separate phases
    // Phase 1: Clear all source positions (direct writes, no dependencies)
    for(size_t rowTone = 0; rowTone < firstStep.rowSelectionCount; rowTone++)
    {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE off
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
#endif
        for(size_t colTone = 0; colTone < firstStep.colSelectionCount; colTone++)
        {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=2
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
// Increased II=1→II=2 for source clear to ease timing on bounds checks
#endif
            // CRITICAL: Source MUST be valid (>= 0), never parking (-1)
            if(firstStep.rowSelection[rowTone] >= 0 &&
                firstStep.rowSelection[rowTone] <= rowMax &&
                firstStep.colSelection[colTone] >= 0 &&
                firstStep.colSelection[colTone] <= colMax)
            {
                // Clear source position immediately
                stateArray(firstStep.rowSelection[rowTone], firstStep.colSelection[colTone]) = false;
            }
        }
    }
    
    // Phase 2: Write destination positions (check if atom exists at source)
    for(size_t rowTone = 0; rowTone < firstStep.rowSelectionCount; rowTone++)
    {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE off
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
#endif
        for(size_t colTone = 0; colTone < firstStep.colSelectionCount; colTone++)
        {
#ifdef __SYNTHESIS__
#pragma HLS PIPELINE II=4
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_SELECTION_SIZE
// Increased II=2→II=4 to ease register insertion for bounds checking logic
#endif
            // Check if source position had an atom before we cleared it
            // (We need to track this, so reconstruct source bounds check)
            if(firstStep.rowSelection[rowTone] >= 0 &&
                firstStep.rowSelection[rowTone] <= rowMax &&
                firstStep.colSelection[colTone] >= 0 &&
                firstStep.colSelection[colTone] <= colMax)
            {
                // Check if destination is within bounds (not parking sentinel -1)
                bool destRowValid = (lastStep.rowSelection[rowTone] >= -1);
                bool destColValid = (lastStep.colSelection[colTone] >= -1);
                bool destInBounds = destRowValid && (lastStep.rowSelection[rowTone] <= rowMax) &&
                                   destColValid && (lastStep.colSelection[colTone] <= colMax);

                if(destInBounds)
                {
                    // Only write destination if it's NOT a parking position (-1)
                    bool destRowNotParking = (lastStep.rowSelection[rowTone] >= 0);
                    bool destColNotParking = (lastStep.colSelection[colTone] >= 0);
                    if(destRowNotParking && destColNotParking)
                    {
                        // Write to destination
                        stateArray(lastStep.rowSelection[rowTone], lastStep.colSelection[colTone]) = true;
                        if(alreadyMoved != nullptr)
                        {
                            (*alreadyMoved)(lastStep.rowSelection[rowTone], lastStep.colSelection[colTone]) = true;
                        }
                    }
                    // else: destination is -1 (parking), atom is discarded (source already cleared)
                }
            }
        }
    }
    return true;
}

// =============================================================================
// AXI INTERFACE WRAPPER - Top-level function for FPGA synthesis
// =============================================================================

/**
 * @brief AXI top-level kernel: load lattice/geometry, sort, and store result.
 * @param stateArray_mem AXI-mapped lattice buffer (in/out).
 * @param targetGeometry_mem AXI-mapped target geometry buffer (in).
 * @param moveList_mem AXI-mapped move list buffer (out) - array of ParallelMove structs.
 * @param rows Total lattice rows.
 * @param cols Total lattice columns.
 * @param compZoneRowStart Computation zone row start.
 * @param compZoneRowEnd Computation zone row end.
 * @param compZoneColStart Computation zone column start.
 * @param compZoneColEnd Computation zone column end.
 * @param moveCount Output: number of moves generated.
 */
void sortLattice_AXI(
    // AXI master interfaces (memory-mapped DDR)
    volatile uint8_t* stateArray_mem,     // Input/output: lattice state
    volatile uint8_t* targetGeometry_mem, // Input: target pattern
    volatile uint8_t* moveList_mem,       // Output: serialized move list (ParallelMove array)
    
    // Scalar control parameters (AXI-Lite)
    unsigned int rows,
    unsigned int cols,
    unsigned int compZoneRowStart,
    unsigned int compZoneRowEnd,
    unsigned int compZoneColStart,
    unsigned int compZoneColEnd,
    unsigned int* moveCount)
{
#pragma HLS INTERFACE mode=m_axi port=stateArray_mem bundle=stateArray_mem depth=20000
#pragma HLS INTERFACE mode=m_axi port=targetGeometry_mem bundle=targetGeometry_mem depth=7200
#pragma HLS INTERFACE mode=m_axi port=moveList_mem bundle=moveList_mem depth=2789376

#pragma HLS INTERFACE mode=s_axilite port=rows bundle=axi_control
#pragma HLS INTERFACE mode=s_axilite port=cols bundle=axi_control
#pragma HLS INTERFACE mode=s_axilite port=compZoneRowStart bundle=axi_control
#pragma HLS INTERFACE mode=s_axilite port=compZoneRowEnd bundle=axi_control
#pragma HLS INTERFACE mode=s_axilite port=compZoneColStart bundle=axi_control
#pragma HLS INTERFACE mode=s_axilite port=compZoneColEnd bundle=axi_control
#pragma HLS INTERFACE mode=s_axilite port=moveCount bundle=axi_control
#pragma HLS INTERFACE mode=s_axilite port=return bundle=axi_control
    
    // Validate dimensions
    if(rows > HLS_MAX_ARRAY_XC || cols > HLS_MAX_ARRAY_AC) {
        return;
    }
    if(compZoneRowEnd <= compZoneRowStart || compZoneColEnd <= compZoneColStart) {
        return;
    }
    if(compZoneRowEnd > rows || compZoneColEnd > cols) {
        return;
    }
    
    // Calculate target geometry dimensions
    unsigned int geomRows = compZoneRowEnd - compZoneRowStart;
    unsigned int geomCols = compZoneColEnd - compZoneColStart;
    
    if(geomRows == 0 || geomCols == 0) {
        return;
    }
    
    // Create Array2D wrappers
    Array2D stateArray(rows, cols);
    Array2D targetGeometry(geomRows, geomCols);
    
    // Load state array from DDR
    for(unsigned int r = 0; r < rows; r++) {
#pragma HLS LOOP_TRIPCOUNT min=80 max=256 avg=80
        for(unsigned int c = 0; c < cols; c++) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=250 max=256 avg=250
            stateArray(r, c) = (stateArray_mem[r * cols + c] != 0);
        }
    }
    
    // Load target geometry from DDR
    for(unsigned int r = 0; r < geomRows; r++) {
#pragma HLS LOOP_TRIPCOUNT min=80 max=256 avg=80
        for(unsigned int c = 0; c < geomCols; c++) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=90 max=256 avg=90
            targetGeometry(r, c) = (targetGeometry_mem[r * geomCols + c] != 0);
        }
    }
    
    // Run sorting algorithm
    HLSMoveList moveList;
    bool success = sortLatticeByRowParallel_HLS(
        stateArray,
        compZoneRowStart, compZoneRowEnd,
        compZoneColStart, compZoneColEnd,
        targetGeometry,
        moveList
    );
    
    if(!success) {
        // Do not perform failure writeback to avoid extra IO; host can retry
        *moveCount = 0;
        return;
    }
    
    // Compute move count (clamp in synthesis to avoid AXI buffer overflow)
    const size_t bytesPerMove = sizeof(ParallelMove);
    const unsigned int requestedMoves = (unsigned int)moveList.size();
    unsigned int movesToWrite = requestedMoves;
    // Depth matches m_axi pragma (bytes) to prevent AXI write overrun in RTL; harmless on CPU
    const size_t moveListMemDepthBytes = 2789376;
    const size_t maxMovesFromDepth = moveListMemDepthBytes / bytesPerMove;
    if(movesToWrite > maxMovesFromDepth) {
        movesToWrite = (unsigned int)maxMovesFromDepth;
    }
    if(movesToWrite > HLS_MAX_MOVES) {
        movesToWrite = HLS_MAX_MOVES;
    }
    *moveCount = movesToWrite;
    
    // Write back sorted state array
    for(unsigned int r = 0; r < rows; r++) {
#pragma HLS LOOP_TRIPCOUNT min=80 max=256 avg=80
        for(unsigned int c = 0; c < cols; c++) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=250 max=256 avg=250
            stateArray_mem[r * cols + c] = stateArray(r, c) ? 1 : 0;
        }
    }
    
    // 64-bit burst writeback bounded by the declared AXI depth
    const size_t wordsPerMove = bytesPerMove / 8;
    const bool hasTail = (bytesPerMove % 8) != 0;
    volatile uint64_t* moveList_mem64 = reinterpret_cast<volatile uint64_t*>(moveList_mem);

    for(unsigned int moveIdx = 0; moveIdx < movesToWrite; moveIdx++) {
#pragma HLS LOOP_TRIPCOUNT min=0 max=HLS_MAX_MOVES avg=HLS_MAX_MOVES
        const ParallelMove* srcMove = &moveList.data[moveIdx];
        const uint64_t* srcWords = reinterpret_cast<const uint64_t*>(srcMove);

        size_t baseWordOffset = (size_t)moveIdx * wordsPerMove;

        // Burst-copy 64-bit words
        for(size_t wordIdx = 0; wordIdx < wordsPerMove; wordIdx++) {
#pragma HLS PIPELINE II=1
            moveList_mem64[baseWordOffset + wordIdx] = srcWords[wordIdx];
        }

        // Copy tail bytes if struct size is not 8-byte aligned
        if(hasTail) {
            const unsigned char* srcBytesTail = reinterpret_cast<const unsigned char*>(srcMove);
            size_t baseByteOffset = (size_t)moveIdx * bytesPerMove;
            for(size_t byteIdx = wordsPerMove * 8; byteIdx < bytesPerMove; byteIdx++) {
#pragma HLS PIPELINE II=1
                moveList_mem[baseByteOffset + byteIdx] = srcBytesTail[byteIdx];
            }
        }
    }
}