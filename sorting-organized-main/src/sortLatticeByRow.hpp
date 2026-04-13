/*
 * -----------------------------------------------------------------------------
 *  sortLatticeByRow.hpp — Consolidated public header (HLS-friendly)
 * -----------------------------------------------------------------------------
 *  Purpose
 *  - Single include that gathers everything needed by sortLatticeByRow.cpp.
 *  - Eliminates cross-header churn; easier to tweak constants and types.
 *  - HLS-friendly: fixed-size buffers, no dynamic allocation in core types.
 *
 *  What it contains
 *  - Global constants/configuration for movement costs and geometry spacing
 *  - Array2D: static, row‑major 2D boolean grid (Eigen replacement)
 *  - StateArrayAccessor (minimal interface; wrapper/testing only)
 *  - ParallelMove: move/step representation with fixed capacities
 *  - Geometry helpers and small HLS bits (HLSBitArray, SiteInfo)
 *  - HLSMoveList and the sorting API declarations
 *
 *  Modify here when you need to:
 *  - Tune compile‑time limits (MAX_*), spacings (ROW_SPACING/COL_SPACING),
 *    and move cost weights (MOVE_COST_*).
 *  - Adjust capacities for HLS (MAX_SELECTION_SIZE, MAX_MOVE_STEPS, etc.).
 *  - Change public API signatures for the sorter.
 *
 *  Notably absent
 *  - Logging, Eigen, std::optional: removed for HLS compatibility.
 *
 *  Status
 *  - This is the only active header under include/; all previous headers were
 *    moved to include/unused_header_backup/ for reference.
 * -----------------------------------------------------------------------------
 */
#pragma once

#include <cstddef>
#include <cstdint>
#include <algorithm>
#include <cstring>
#include <cmath>
#include <vector>
#include <tuple>
#include <memory>
#include "hls_stream.h"
#include "ap_int.h"

// ============================================================================
// CONSTANTS AND CONFIGURATION
// ============================================================================

#define DOUBLE_EQUIVALENCE_THRESHOLD 0.00001
// Mini-checklist (precision)
// - Increase slightly if you see off-by-1 tone comparisons due to FP noise
// - Keep small to avoid masking real ordering differences

// Array2D configuration
#ifndef ARRAY2D_MAX_SIZE
#define ARRAY2D_MAX_SIZE 1024   // 32x32 with margin (was 25000)
#endif
// Mini-checklist (Array2D capacity)
// - Ensure rows*cols <= ARRAY2D_MAX_SIZE for your largest problem
// - For bigger grids, raise this AND re-check HLS BRAM/URAM utilization

// ParallelMove configuration
#define AOD_TOTAL_LIMIT 256
#define AOD_ROW_LIMIT 16
#define AOD_COL_LIMIT 16
// Mini-checklist (AOD/fan-out limits)
// - Match your hardware AOD capabilities (total, row, col channels)
// - MAX_SELECTION_SIZE must be <= AOD_TOTAL_LIMIT

#define MOVE_COST_OFFSET 150
#define MOVE_COST_OFFSET_SUBMOVE 0
#define MOVE_COST_SCALING_SQRT 0
#define MOVE_COST_SCALING_LINEAR 0.1
// Mini-checklist (cost model)
// - OFFSET drives baseline penalty per move/submove
// - Choose either LINEAR or SQRT (or both) by setting non-zero weights
// - Tuning target: fewer, safer moves vs aggressive consolidation

#define MAX_MULTI_ITER_COUNT 100
// Mini-checklist (iteration caps)
// - Raise if multi-step improvement stalls prematurely
// - Higher = slower but can find better sequences

#define M_4TH_ROOT_2 1.1892071150027210667
#define M_4TH_ROOT_1_2 1 / M_4TH_ROOT_2
#define HALF_STEP_COST (MOVE_COST_OFFSET_SUBMOVE + MOVE_COST_SCALING_SQRT * M_SQRT1_2 + MOVE_COST_SCALING_LINEAR / 2)
#define HALF_DIAG_STEP_COST (MOVE_COST_OFFSET_SUBMOVE + MOVE_COST_SCALING_SQRT * M_4TH_ROOT_1_2 + MOVE_COST_SCALING_LINEAR * M_SQRT1_2)
#define DIAG_STEP_COST (MOVE_COST_OFFSET_SUBMOVE + MOVE_COST_SCALING_SQRT * M_4TH_ROOT_2 + MOVE_COST_SCALING_LINEAR * M_SQRT2)

#define ALLOW_MOVES_BETWEEN_ROWS true
#define ALLOW_MOVES_BETWEEN_COLS true
#define ALLOW_MULTIPLE_MOVES_PER_ATOM false

#define ALLOW_MOVING_EMPTY_TRAP_ONTO_OCCUPIED false

#define ALLOW_DIAGONAL_MOVEMENT false

#define NUM_THREADS 8

// HLS-compatible fixed sizes for ParallelMove
#define MAX_MOVE_STEPS 20           // Max steps in a single move
#define MAX_SELECTION_SIZE 16       // ULTRA-AGGRESSIVE: Reduced to 16 to meet <700 BRAM target
// Mini-checklist (move capacities)
// - MAX_SELECTION_SIZE <= AOD_TOTAL_LIMIT
// - Reduced to 16 for strict BRAM budget (<700) - each step has 2×16 double arrays
// - Each ParallelMove is now ~640 bytes instead of 2.5KB
// - Trade-off: More moves needed, but dramatically lower BRAM

// Geometry configuration
#define RECOMMENDED_DIST_FROM_OCC_SITES 1
#define RECOMMENDED_DIST_FROM_EMPTY_SITES 0.1
#define MIN_DIST_FROM_OCC_SITES 1
#define MAX_SUBMOVE_DIST_IN_PENALIZED_AREA 1.5
#define COL_SPACING 2
#define ROW_SPACING 2
#define HALF_COL_SPACING ((double)(COL_SPACING) / 2)
#define HALF_ROW_SPACING ((double)(ROW_SPACING) / 2)
// Mini-checklist (spacing/orientation)
// - ROW_SPACING and COL_SPACING define geometry; orientation logic depends on
//   COL_SPACING > ROW_SPACING (channels by row vs col)
// - If you change spacing, HALF_* adjusts automatically; revalidate masks

#define CHECK_FOR_DIRECT_REMOVAL_EVERY_X_MOVES 20
// Mini-checklist (periodic checks)
// - Lower for more frequent cleanup passes (slower, safer)
// - Raise to speed up at the risk of delayed removals

#define VALUE_FILLED_DESIRED 1.
#define VALUE_USED_UNDESIRED 0.5
#define VALUE_CLEARED_UNDESIRED 0.2
#define VALUE_CLEARED_UNDESIRED_UNUSABLE 0.8
#define VALUE_CLEARED_OUTSIDE_UNUSABLE 0.1

// Maximum number of parallel moves in a sorting sequence
// CRITICAL: Reduced to 400 for aggressive BRAM reduction to meet <700 target
#define MAX_PARALLEL_MOVES 400      // With MAX_SELECTION_SIZE=16: 400×640B ≈ 256KB ≈ 640 BRAM blocks
// CRITICAL BRAM OPTIMIZATION: Reduced from 5000 to 1000
// Each ParallelMove is ~2.5KB → 5000 moves = 12.5MB BRAM!
// With 1000 moves = 2.5MB → more reasonable for FPGA
// Mini-checklist (global move cap)
// - Testbench generates ~350-400 moves, so 1000 provides margin
// - If you hit the ceiling, sorting will stop early; raise with care

// Maximum sizes for pathway move search vectors (HLS pre-allocation)
#define MAX_TONES_PER_MOVE 50
#define MAX_PATH_STEPS 20
#define MAX_PATHWAY_SEARCH_STEPS 100
#define MAX_STATES_PER_STEP 1000
// Mini-checklist (path search)
// - Increase if pathway search truncates (warnings, incomplete paths)
// - Each increase costs memory/time; profile HLS utilization after changes

// Maximum sizes for createMinimallyInvasiveAccessPathway (HLS pre-allocation)
#define MAX_COMP_ZONE_WIDTH 200
#define MAX_PATHWAY_COUNT 20
#define MAX_AOD_LIMIT 100
// Mini-checklist (access pathway creation)
// - MAX_COMP_ZONE_WIDTH must cover your comp-zone width (rows or cols)
// - Raise counts sparingly; they scale intermediate buffers

// Maximum sizes for findPathwayMove function (HLS pre-allocation)
#define MAX_OUTER_INDEX 1024
#define MAX_PATHWAYS_PER_OUTER 50
#define MAX_INTERSECTING 200
#define MAX_REACHABLE_PATHWAYS 300
#define MAX_SITES_PER_PATHWAY 100
#define MAX_INDICES_PER_PATHWAY 50
#define MAX_JS_PER_INDEX 100
#define MAX_START_END_PAIRS 200
#define MAX_BEST_PER_PATHWAY 300
#define MAX_START_END_INDICES_PER_PATHWAY 50
#define MAX_MOVABLE_PER_START_END 200
// Mini-checklist (finder bounds)
// - If best‑start/best‑end arrays overflow, raise MAX_BEST_PER_PATHWAY
// - Intersections/reachables too small => missed feasible routes

// Additional bounds for removal-pathway search (HLS pre-allocation)
#ifndef MAX_REMOVAL_SETS
#define MAX_REMOVAL_SETS 256
#endif
// Mini-checklist (removal search)
// - Raise if direct-removal staging overflows on dense unusable regions

#ifndef MAX_OUTSIDE_PATHWAYS
#define MAX_OUTSIDE_PATHWAYS (4 * MAX_COMP_ZONE_WIDTH)
#endif

#ifndef MAX_ROWS
#define MAX_ROWS 32
#endif

#ifndef MAX_COLS
#define MAX_COLS 32
#endif
// Mini-checklist (grid bounds)
// - MAX_ROWS / MAX_COLS must cover comp-zone extents
// - Larger values increase buffer sizes; check HLS resources

#ifndef MAX_AOD_TOTAL
#define MAX_AOD_TOTAL 1024
#endif

#ifndef MAX_BORDER
#define MAX_BORDER MAX_COLS
#endif

#ifndef MAX_INWARD
#define MAX_INWARD MAX_ROWS
#endif

// ============================================================================
// ARRAY2D CLASS
// ============================================================================

/**
 * @brief Simple 2D boolean array replacement for Eigen::Array.
 *
 * Row-major storage with static allocation for HLS friendliness. All methods
 * avoid dynamic memory to keep synthesis predictable.
 */
class Array2D {
private:
    bool data_[ARRAY2D_MAX_SIZE];  // Static storage for HLS compatibility
    size_t rows_;
    size_t cols_;

public:
    /// @brief Construct an empty 0x0 array with all elements cleared.
    Array2D() : rows_(0), cols_(0) {
        // Tripcount: full array clear
        for (size_t i = 0; i < ARRAY2D_MAX_SIZE; ++i) {
#ifdef __SYNTHESIS__
#pragma HLS LOOP_TRIPCOUNT min=ARRAY2D_MAX_SIZE max=ARRAY2D_MAX_SIZE
#endif
            data_[i] = false;
        }
    }

    /// @brief Construct an array with the given shape and initial value.
    /// @param rows Number of rows.
    /// @param cols Number of columns.
    /// @param init_value Initial fill value for active elements.
    Array2D(size_t rows, size_t cols, bool init_value = false)
        : rows_(rows), cols_(cols) {
        size_t total = rows_ * cols_;
        for (size_t i = 0; i < total; ++i) {
    #ifdef __SYNTHESIS__
    #pragma HLS LOOP_TRIPCOUNT min=1 max=ARRAY2D_MAX_SIZE
    #endif
            data_[i] = init_value;
        }
        for (size_t i = total; i < ARRAY2D_MAX_SIZE; ++i) {
    #ifdef __SYNTHESIS__
    #pragma HLS LOOP_TRIPCOUNT min=0 max=ARRAY2D_MAX_SIZE
    #endif
            data_[i] = false;
        }
    }

    /// @brief Copy construct from another Array2D.
    Array2D(const Array2D& other)
        : rows_(other.rows_), cols_(other.cols_) {
        for (size_t i = 0; i < ARRAY2D_MAX_SIZE; ++i) {
#ifdef __SYNTHESIS__
#pragma HLS LOOP_TRIPCOUNT min=ARRAY2D_MAX_SIZE max=ARRAY2D_MAX_SIZE
#endif
            data_[i] = other.data_[i];
        }
    }

    /// @brief Move construct (behaves like copy for HLS safety).
    Array2D(Array2D&& other) noexcept
        : rows_(other.rows_), cols_(other.cols_) {
        for (size_t i = 0; i < ARRAY2D_MAX_SIZE; ++i) {
#ifdef __SYNTHESIS__
#pragma HLS LOOP_TRIPCOUNT min=ARRAY2D_MAX_SIZE max=ARRAY2D_MAX_SIZE
#endif
            data_[i] = other.data_[i];
        }
    }

    /// @brief Copy assign from another Array2D.
    Array2D& operator=(const Array2D& other) {
        rows_ = other.rows_;
        cols_ = other.cols_;
        for (size_t i = 0; i < ARRAY2D_MAX_SIZE; ++i) {
#ifdef __SYNTHESIS__
#pragma HLS LOOP_TRIPCOUNT min=ARRAY2D_MAX_SIZE max=ARRAY2D_MAX_SIZE
#endif
            data_[i] = other.data_[i];
        }
        return *this;
    }

    /// @brief Move assign (behaves like copy for HLS safety).
    Array2D& operator=(Array2D&& other) noexcept {
        rows_ = other.rows_;
        cols_ = other.cols_;
        for (size_t i = 0; i < ARRAY2D_MAX_SIZE; ++i) {
#ifdef __SYNTHESIS__
#pragma HLS LOOP_TRIPCOUNT min=ARRAY2D_MAX_SIZE max=ARRAY2D_MAX_SIZE
#endif
            data_[i] = other.data_[i];
        }
        return *this;
    }

    /// @brief Trivial destructor (no dynamic storage).
    ~Array2D() {}

    /// @brief Mutable element access.
    /// @param row Row index.
    /// @param col Column index.
    /// @return Reference to the requested element.
    bool& operator()(size_t row, size_t col) {
        return data_[row * cols_ + col];
    }

    /// @brief Const element access.
    /// @param row Row index.
    /// @param col Column index.
    /// @return Const reference to the requested element.
    const bool& operator()(size_t row, size_t col) const {
        return data_[row * cols_ + col];
    }

    /// @brief Number of rows.
    size_t rows() const { return rows_; }
    /// @brief Number of columns.
    size_t cols() const { return cols_; }
    /// @brief Total active elements (rows_ * cols_).
    size_t size() const { return rows_ * cols_; }

    /// @brief Resize and reinitialize the array.
    /// @param new_rows New row count.
    /// @param new_cols New column count.
    /// @param init_value Fill value for active region.
    void resize(size_t new_rows, size_t new_cols, bool init_value = false) {
        rows_ = new_rows;
        cols_ = new_cols;
        size_t total = rows_ * cols_;
        for (size_t i = 0; i < total; ++i) {
    #ifdef __SYNTHESIS__
    #pragma HLS LOOP_TRIPCOUNT min=1 max=ARRAY2D_MAX_SIZE
    #endif
            data_[i] = init_value;
        }
        for (size_t i = total; i < ARRAY2D_MAX_SIZE; ++i) {
    #ifdef __SYNTHESIS__
    #pragma HLS LOOP_TRIPCOUNT min=0 max=ARRAY2D_MAX_SIZE
    #endif
            data_[i] = false;
        }
    }

    /// @brief Fill all active elements with a value.
    /// @param value Value to assign.
    void fill(bool value) {
        size_t total = rows_ * cols_;
        for (size_t i = 0; i < total; ++i) {
#ifdef __SYNTHESIS__
#pragma HLS LOOP_TRIPCOUNT min=1 max=ARRAY2D_MAX_SIZE
#endif
            data_[i] = value;
        }
    }

    /// @brief Clear shape and contents (sets rows/cols to 0).
    void clear() {
        rows_ = 0;
        cols_ = 0;
        for (size_t i = 0; i < ARRAY2D_MAX_SIZE; ++i) {
#ifdef __SYNTHESIS__
#pragma HLS LOOP_TRIPCOUNT min=ARRAY2D_MAX_SIZE max=ARRAY2D_MAX_SIZE
#endif
            data_[i] = false;
        }
    }

    /// @brief Mutable raw pointer (row-major order).
    bool* data() noexcept { return data_; }
    /// @brief Const raw pointer (row-major order).
    const bool* data() const noexcept { return data_; }
};

// ============================================================================
// STATE ARRAY ACCESSOR (for API compatibility only)
// ============================================================================

// Minimal abstract base class for state array access
// Used only for API compatibility - not for HLS synthesis
/// @brief Abstract accessor interface to decouple storage from algorithm paths.
class StateArrayAccessor
{
public:
    virtual ~StateArrayAccessor() = default;
    /// @brief Clone the accessor.
    virtual std::unique_ptr<StateArrayAccessor> copy() const = 0;
    /// @brief Assign from another accessor.
    virtual void operator=(const StateArrayAccessor& other) = 0;
    /// @brief Const element access.
    virtual const bool& operator()(std::size_t row, std::size_t col) const = 0;
    /// @brief Mutable element access.
    virtual bool& operator()(std::size_t row, std::size_t col) = 0;
    /// @brief Row count.
    virtual std::size_t rows() const = 0;
    /// @brief Column count.
    virtual std::size_t cols() const = 0;
};

// ============================================================================
// PARALLEL MOVE STRUCTURES
// ============================================================================

class ParallelMove
{
public:
    struct Step
    {
        // HLS-compatible: fixed-size arrays instead of std::vector
        // int16_t instead of double: coordinates are integer grid indices
        // (max ~500), negative value -1 used as parking sentinel.
        // Size per Step: 2×16×2 + 2 = 66 bytes (vs 256 bytes before)
        int16_t colSelection[MAX_SELECTION_SIZE];
        int16_t rowSelection[MAX_SELECTION_SIZE];
        uint8_t colSelectionCount;
        uint8_t rowSelectionCount;

        Step() : colSelectionCount(0), rowSelectionCount(0) {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
            // HLS: Prevent flattening with outer loops in calling context
            for(size_t i = 0; i < MAX_SELECTION_SIZE; i++) {
#ifdef __SYNTHESIS__
#pragma HLS loop_flatten off
#pragma HLS PIPELINE off
#endif
                colSelection[i] = 0;
                rowSelection[i] = 0;
            }
        }
    };

    // HLS-compatible: fixed-size array instead of std::vector
    Step steps[MAX_MOVE_STEPS];
    uint8_t stepsCount;
    
    ParallelMove() : stepsCount(0) {
#ifdef __SYNTHESIS__
#pragma HLS INLINE
#endif
        // HLS: Prevent flattening with outer loops in calling context
        for(size_t i = 0; i < MAX_MOVE_STEPS; i++) {
#ifdef __SYNTHESIS__
#pragma HLS loop_flatten off
#pragma HLS PIPELINE off
#endif
            steps[i] = Step();
        }
    }
    
    /// @brief Construct a ParallelMove from start/end steps.
    static ParallelMove fromStartAndEnd(
        StateArrayAccessor& stateArray,
        const ParallelMove::Step& start, const ParallelMove::Step& end);
    /// @brief Compute total move cost.
    double cost() const;
    // HLS-compatible: Use Array2D directly instead of virtual StateArrayAccessor
    /// @brief Execute the move against an Array2D lattice.
    bool execute(Array2D& stateArray,
        Array2D* alreadyMoved = nullptr) const;
    // Non-HLS wrapper for compatibility with existing testbench code
    /// @brief Execute the move using a generic StateArrayAccessor.
    bool execute(StateArrayAccessor& stateArray,
        Array2D* alreadyMoved = nullptr) const;
};

/// @brief Compute cost contribution for a sub-move given distance.
double inline costPerSubMove(double dist)
{
    return dist > DOUBLE_EQUIVALENCE_THRESHOLD ? (MOVE_COST_OFFSET_SUBMOVE + MOVE_COST_SCALING_LINEAR * dist + (MOVE_COST_SCALING_SQRT != 0 ? MOVE_COST_SCALING_SQRT * sqrt(dist) : 0)) : 0;
}

/// @brief HLS-friendly non-recursive in-place sort for small arrays.
/// @param begin Pointer to first element.
/// @param end Pointer past the last element.
void hlsSort(int16_t* begin, int16_t* end);

// ============================================================================
// GEOMETRY HELPERS
// ============================================================================

/// @brief Analyze the lattice to categorize atoms and target sites.
std::tuple<size_t, size_t, size_t> analyzeCurrentStateArray(
	const Array2D &stateArray,
	const Array2D &targetGeometry,
	size_t compZoneRowStart, size_t compZoneRowEnd, size_t compZoneColStart, size_t compZoneColEnd,
	std::tuple<size_t,size_t>* unusableAtoms,
	std::tuple<size_t,size_t>* usableNonTargetAtoms,
	std::tuple<size_t,size_t>* usableTargetSites);

/// @brief Check if a coordinate exists in a fixed-size tuple array.
inline bool coord_exists_in_array(const std::tuple<size_t,size_t>* arr, size_t count, const std::tuple<size_t,size_t>& coord);
/// @brief Find a coordinate in a fixed-size tuple array; returns count if not found.
inline size_t find_coord_in_array(const std::tuple<size_t,size_t>* arr, size_t count, const std::tuple<size_t,size_t>& coord);

/// @brief Generate a boolean mask with a given radius and spacing fraction.
Array2D generateMask(double distance, double spacingFraction = 1);

// Lightweight fixed-size bit array for HLS (replaces dynamic RowBitMask in hot paths)
struct HLSBitArray {
	bool bits[MAX_COMP_ZONE_WIDTH];
	size_t size;

	HLSBitArray() : bits{false}, size(0) {
		for(size_t i = 0; i < MAX_COMP_ZONE_WIDTH; i++) bits[i] = false;
	}
	explicit HLSBitArray(size_t n) : bits{false}, size(n) {
		for(size_t i = 0; i < MAX_COMP_ZONE_WIDTH; i++) bits[i] = false;
	}
	inline void set(size_t index, bool value) {
		if(index < MAX_COMP_ZONE_WIDTH) bits[index] = value;
	}
	inline bool operator[](size_t index) const {
		return (index < MAX_COMP_ZONE_WIDTH) ? bits[index] : false;
	}
};

// Path search node info for removal-pathway BFS (HLS-friendly)
struct SiteInfo {
	int prevRow;
	int prevCol;
	double cost;
	unsigned int layer;
};

// ============================================================================
// SORT LATTICE BY ROW API
// ============================================================================

// HLS-synthesizable move list using ParallelMove (fixed-size arrays)
#define HLS_MAX_MOVES 512

struct HLSMoveList {
    ParallelMove data[HLS_MAX_MOVES];
    size_t count;
    
    HLSMoveList() : data(), count(0) {
#ifdef __SYNTHESIS__
        #pragma HLS INLINE
        // Ensure move storage is mapped to BRAM in RTL
        #pragma HLS BIND_STORAGE variable=data type=RAM_2P impl=BRAM
#endif
    }
    
    void clear() { 
#ifdef __SYNTHESIS__
        #pragma HLS BIND_STORAGE variable=data type=RAM_2P impl=BRAM
#endif
        count = 0; 
    }
    
    void push_back(const ParallelMove& m) { 
#ifdef __SYNTHESIS__
#endif
        if(count < HLS_MAX_MOVES) { 
            data[count] = m; 
            count++; 
        } 
    }
    
    ParallelMove& operator[](size_t i) { return data[i]; }
    const ParallelMove& operator[](size_t i) const { return data[i]; }
    size_t size() const { return count; }
    bool empty() const { return count == 0; }
};

// ── Streaming move-list output (no BRAM buffer) ──────────────────────────────
// Drop-in replacement for HLSMoveList that serializes each ParallelMove as
// (sizeof(ParallelMove)+63)/64  512-bit beats directly into an AXI-Stream.
// All internal sorting functions are templated on ML (HLSMoveList or HLSMoveStream)
// so no logic is duplicated.
struct HLSMoveStream {
    hls::stream<ap_uint<512>>& strm;
    unsigned int count;
#ifndef __SYNTHESIS__
    ParallelMove sim_cache[HLS_MAX_MOVES];    // simulation-only; not present in synthesis
#endif

    HLSMoveStream(hls::stream<ap_uint<512>>& s) : strm(s), count(0) {}

    void push_back(const ParallelMove& m) {
#ifndef __SYNTHESIS__
        if (count < HLS_MAX_MOVES)
            sim_cache[count] = m;
#endif
        const uint8_t* src = (const uint8_t*)&m;
        // N is a compile-time constant: sizeof(ParallelMove) / 64 rounded up
        static const unsigned int N = (unsigned int)((sizeof(ParallelMove) + 63) / 64);
        for (unsigned int w = 0; w < N; ++w) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=N max=N
            ap_uint<512> word = 0;
            for (int b = 0; b < 64; ++b) {
#pragma HLS UNROLL
                unsigned int idx = w * 64 + (unsigned int)b;
                if (idx < sizeof(ParallelMove))
                    word.range(b*8+7, b*8) = src[idx];
            }
            strm.write(word);
        }
        count++;
    }

    ParallelMove& operator[](size_t i) {
#ifndef __SYNTHESIS__
        return sim_cache[i];
#else
        static ParallelMove dummy; return dummy;  // unreachable in synthesis
#endif
    }

    size_t size()  const { return (size_t)count; }
    bool   empty() const { return count == 0; }
    void   clear()       { count = 0; }       // note: stream words already written
    void   reserve(size_t) {}                 // no-op
};

/**
 * @brief HLS-synthesizable core sorter (mutates lattice and emits moves).
 * @param stateArray Lattice to sort (in/out).
 * @param compZoneRowStart Computation zone row start (inclusive).
 * @param compZoneRowEnd Computation zone row end (exclusive).
 * @param compZoneColStart Computation zone col start (inclusive).
 * @param compZoneColEnd Computation zone col end (exclusive).
 * @param targetGeometry Desired pattern within the computation zone.
 * @param moveList Output move list (preallocated fixed size, uses ParallelMove).
 * @return true on success, false if dimensions mismatch or algorithm fails.
 */
bool sortLatticeByRowParallel_HLS(
    Array2D &stateArray,
    size_t compZoneRowStart, size_t compZoneRowEnd,
    size_t compZoneColStart, size_t compZoneColEnd,
    Array2D &targetGeometry,
    HLSMoveList& moveList);

// Streaming overload — no BRAM buffer, writes directly to AXI-Stream
bool sortLatticeByRowParallel_HLS(
    Array2D &stateArray,
    size_t compZoneRowStart, size_t compZoneRowEnd,
    size_t compZoneColStart, size_t compZoneColEnd,
    Array2D &targetGeometry,
    HLSMoveStream& moveStream);

#ifndef __SYNTHESIS__
/**
 * @brief CPU wrapper that allocates move storage and returns std::vector.
 * @note Not synthesizable; for host/testbench use only.
 * @return Empty vector on failure (dimension mismatch or sort failure).
 */
std::vector<ParallelMove> sortLatticeByRowParallel(
    Array2D &stateArray,
    size_t compZoneRowStart, size_t compZoneRowEnd,
    size_t compZoneColStart, size_t compZoneColEnd,
    Array2D &targetGeometry);

/**
 * @brief AXI top-level wrapper for HLS synthesis - RTL compatible.
 *
 * Streams lattice and target geometry via AXI masters, executes sorter, then
 * writes back the updated lattice and move list. Control scalars are provided via AXI-Lite.
 */
void sortLattice_AXI(
    volatile uint8_t *stateArray_mem,
    volatile uint8_t *targetGeometry_mem,
    volatile uint8_t *moveList_mem,
    unsigned int rows,
    unsigned int cols,
    unsigned int compZoneRowStart,
    unsigned int compZoneRowEnd,
    unsigned int compZoneColStart,
    unsigned int compZoneColEnd,
    unsigned int* moveCount);
#endif
