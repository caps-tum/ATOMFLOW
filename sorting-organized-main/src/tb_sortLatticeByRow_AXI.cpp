/**
 * --------------------------------------------------------------------------
 *  AXI Testbench for Lattice Sorting (HLS-Compatible)
 * --------------------------------------------------------------------------
 *  This testbench tests the sortLattice_AXI() wrapper function which uses
 *  AXI master interfaces for FPGA synthesis.
 *
 *  Features:
 *   - Tests standard 80x250 configuration
 *   - Random initialization (~20% filled lattice)
 *   - Validates sorted output against target geometry
 *   - Compatible with both C simulation and RTL co-simulation
 *
 *  Recent Improvements:
 *   - Fixed parking position detection (-1.0) using -0.5 threshold
 *   - Split floating-point comparisons for synthesis reliability
 *   - Explicit bool conversions for uint8_t AXI interface
 *   - Removed HlsStream deadlock issues
 *   - Timing optimizations: II=4 in critical loops, right-shift for division
 * --------------------------------------------------------------------------
 */

#include <iostream>
#include <random>
#include "sortLatticeByRow.hpp"

// Forward declaration is in sortLatticeByRow.hpp - no need for extern "C"

/*------------------------------------------------------------------------------
 *  Helper function: Print a lattice subsection
 *----------------------------------------------------------------------------*/
static void printLattice(const bool* lattice, int rows, int cols,
                         int row_start = 0, int row_end = -1,
                         int col_start = 0, int col_end = -1)
{
    if (row_end == -1) row_end = rows;
    if (col_end == -1) col_end = cols;

    for (int i = row_start; i < row_end; ++i) {
        for (int j = col_start; j < col_end; ++j)
            std::cout << (lattice[i * cols + j] ? "•" : " ");
        std::cout << "\n";
    }
}

// Overload for uint8_t* (AXI interface type)
static void printLattice(const uint8_t* lattice, int rows, int cols,
                         int row_start = 0, int row_end = -1,
                         int col_start = 0, int col_end = -1)
{
    printLattice(reinterpret_cast<const bool*>(lattice), rows, cols, row_start, row_end, col_start, col_end);
}

/*------------------------------------------------------------------------------
 *  Helper function: Print full lattice with computation zone highlighted
 *----------------------------------------------------------------------------*/
static void printFullWithZone(const bool* lattice, int rows, int cols,
                              unsigned int zone_row_start, unsigned int zone_row_end,
                              unsigned int zone_col_start, unsigned int zone_col_end)
{
    for (int r = 0; r < rows; ++r) {
        for (int c = 0; c < cols; ++c) {
            bool inside_zone = (r >= (int)zone_row_start && r < (int)zone_row_end &&
                                c >= (int)zone_col_start && c < (int)zone_col_end);
            if (lattice[r * cols + c]) {
                if (inside_zone)
                    std::cout << "•";                   // computation zone atom
                else
                    std::cout << "•";    // parked atom outside zone
            } else {
                std::cout << " ";
            }
        }
        std::cout << "\n";
    }
}

// Overload for uint8_t* (AXI interface type)
static void printFullWithZone(const uint8_t* lattice, int rows, int cols,
                              unsigned int zone_row_start, unsigned int zone_row_end,
                              unsigned int zone_col_start, unsigned int zone_col_end)
{
    printFullWithZone(reinterpret_cast<const bool*>(lattice), rows, cols, 
                      zone_row_start, zone_row_end, zone_col_start, zone_col_end);
}

/*------------------------------------------------------------------------------
 *  Helper structures and functions for move output
 *----------------------------------------------------------------------------*/

/**
 * @brief Compact summary of a move for output/logging.
 * Contains row/column shift information and step count.
 */
struct MoveSummary {
    unsigned int rowShift;     // Number of rows moved
    unsigned int colShift;     // Number of columns moved
    unsigned int stepCount;    // Number of steps in the move
    
    MoveSummary() : rowShift(0), colShift(0), stepCount(0) {}
};

/**
 * @brief Extract move summary from a ParallelMove.
 * Calculates the extent of row and column movement.
 */
static inline MoveSummary extractMoveSummary(const ParallelMove& move) {
    MoveSummary summary;
    summary.stepCount = (unsigned int)move.stepsCount;
    
    if(move.stepsCount > 0 && move.stepsCount <= MAX_MOVE_STEPS) {
        const ParallelMove::Step& firstStep = move.steps[0];
        const ParallelMove::Step& lastStep = move.steps[move.stepsCount - 1];
        
        // Calculate row shift from first step to last step
        // Handle cases where selection counts might be 0
        if(firstStep.rowSelectionCount > 0 && lastStep.rowSelectionCount > 0) {
            // Find min and max from first step
            double minFirstRow = firstStep.rowSelection[0];
            double maxFirstRow = firstStep.rowSelection[0];
            for(size_t i = 1; i < firstStep.rowSelectionCount; i++) {
                double val = firstStep.rowSelection[i];
                if(val < minFirstRow) minFirstRow = val;
                if(val > maxFirstRow) maxFirstRow = val;
            }
            
            // Find min and max from last step
            double minLastRow = lastStep.rowSelection[0];
            double maxLastRow = lastStep.rowSelection[0];
            for(size_t i = 1; i < lastStep.rowSelectionCount; i++) {
                double val = lastStep.rowSelection[i];
                if(val < minLastRow) minLastRow = val;
                if(val > maxLastRow) maxLastRow = val;
            }
            
            // Calculate shift (avoid negative underflow)
            if(minFirstRow >= 0.0 && minLastRow >= 0.0) {
                double rowDiff = maxLastRow - minFirstRow;
                if(rowDiff >= 0.0) {
                    summary.rowShift = (unsigned int)(rowDiff + 0.5);
                }
            }
        }
        
        // Calculate column shift from first step to last step
        if(firstStep.colSelectionCount > 0 && lastStep.colSelectionCount > 0) {
            // Find min and max from first step
            double minFirstCol = firstStep.colSelection[0];
            double maxFirstCol = firstStep.colSelection[0];
            for(size_t i = 1; i < firstStep.colSelectionCount; i++) {
                double val = firstStep.colSelection[i];
                if(val < minFirstCol) minFirstCol = val;
                if(val > maxFirstCol) maxFirstCol = val;
            }
            
            // Find min and max from last step
            double minLastCol = lastStep.colSelection[0];
            double maxLastCol = lastStep.colSelection[0];
            for(size_t i = 1; i < lastStep.colSelectionCount; i++) {
                double val = lastStep.colSelection[i];
                if(val < minLastCol) minLastCol = val;
                if(val > maxLastCol) maxLastCol = val;
            }
            
            // Calculate shift (avoid negative underflow)
            if(minFirstCol >= 0.0 && minLastCol >= 0.0) {
                double colDiff = maxLastCol - minFirstCol;
                if(colDiff >= 0.0) {
                    summary.colShift = (unsigned int)(colDiff + 0.5);
                }
            }
        }
    }
    
    return summary;
}

/**
 * @brief Print complete ParallelMove details (all steps and coordinates).
 * This shows you how to access all data in a ParallelMove structure.
 */
static void printCompleteMove(const ParallelMove& move, unsigned int moveIndex) {
    std::cout << "\n--- Move #" << moveIndex << " ---\n";
    std::cout << "Total steps: " << move.stepsCount << "\n";
    
    for(size_t stepIdx = 0; stepIdx < move.stepsCount; stepIdx++) {
        const ParallelMove::Step& step = move.steps[stepIdx];
        
        std::cout << "  Step " << stepIdx << ":\n";
        
        // Print row selections
        std::cout << "    Row selections (" << step.rowSelectionCount << "): [";
        for(size_t i = 0; i < step.rowSelectionCount; i++) {
            std::cout << step.rowSelection[i];
            if(i < step.rowSelectionCount - 1) std::cout << ", ";
        }
        std::cout << "]\n";
        
        // Print column selections
        std::cout << "    Col selections (" << step.colSelectionCount << "): [";
        for(size_t i = 0; i < step.colSelectionCount; i++) {
            std::cout << step.colSelection[i];
            if(i < step.colSelectionCount - 1) std::cout << ", ";
        }
        std::cout << "]\n";
    }
}

/*------------------------------------------------------------------------------
 *  MAIN: Test sortLattice_AXI wrapper
 *----------------------------------------------------------------------------*/
int main()
{
    // ---------------------------- Problem setup ----------------------------
    const unsigned int total_rows  = 80;
    const unsigned int total_cols  = 250;
    const unsigned int filled_rows = 80;
    const unsigned int filled_cols = 90;

    // Define computation zone (centered in the total lattice)
    unsigned int row_start = (total_rows - filled_rows) / 2;
    unsigned int col_start = (total_cols - filled_cols) / 2;
    unsigned int row_end   = row_start + filled_rows;
    unsigned int col_end   = col_start + filled_cols;

    std::cout << "Test dimensions: " << total_rows << "x" << total_cols << "\n";
    std::cout << "Comp zone: rows [" << row_start << "," << row_end 
              << "), cols [" << col_start << "," << col_end << ")\n\n";

    // ---------------------------- Allocate AXI buffers --------------------
    // Allocate memory for AXI interface (using uint8_t for RTL compatibility)
    uint8_t* axi_state = new uint8_t[total_rows * total_cols];
    uint8_t* axi_target = new uint8_t[filled_rows * filled_cols];

    // ---------------------------- Random initialization --------------------
    // Use Mersenne Twister RNG with fixed seed for reproducibility
    std::mt19937 rng(42);
    std::uniform_real_distribution<> dist(0.0, 1.0);

    for (unsigned int i = 0; i < total_rows; ++i) {
        for (unsigned int j = 0; j < total_cols; ++j) {
            axi_state[i * total_cols + j] = dist(rng) < 0.20;  // 20% randomly occupied
        }
    }

    // ---------------------------- Target geometry --------------------------
    // Create striped rectangular pattern (same logic as original testbench)
    for (unsigned int i = 0; i < filled_rows; ++i) {
        for (unsigned int j = 0; j < filled_cols; ++j) {
            axi_target[i * filled_cols + j] = false;
        }
    }

    for (unsigned int i = 0; i < filled_rows; ++i) {
        if (i % 4 == 2 || i % 4 == 3) {  // active stripe rows
            for (unsigned int j = 0; j < filled_cols / 15; ++j) {
                for (unsigned int j2 = 15 * j + 2; j2 < 15 * j + 13; j2 += 2) {
                    if (j2 < filled_cols) {
                        axi_target[i * filled_cols + j2] = true;
                    }
                }
            }
        }
    }

    // ---------------------------- Visualization ----------------------------
    std::cout << "=== ORIGINAL FULL LATTICE (first 80 cols shown) ===\n";
    printLattice(axi_state, total_rows, total_cols, 0, 80, 0, 80);

    std::cout << "\n=== TARGET GEOMETRY (COMPUTATION ZONE) ===\n";
    printLattice(axi_target, filled_rows, filled_cols, 0, 80, 0, 80);

    // ---------------------------- Call AXI Kernel --------------------------
    std::cout << "\nRunning sortLattice_AXI...\n";
    
    // Allocate move list buffer (max 512 moves × 5448 bytes = 2.7 MB)
    const size_t maxMoveListBytes = sizeof(ParallelMove) * HLS_MAX_MOVES;
    uint8_t* axi_moveList = new uint8_t[maxMoveListBytes];
    unsigned int moveCount = 0;
    
    sortLattice_AXI(
        axi_state,
        axi_target,
        axi_moveList,
        total_rows,
        total_cols,
        row_start, row_end,
        col_start, col_end,
        &moveCount
    );

    std::cout << "Kernel completed. Generated " << moveCount << " moves.\n";
    
    // Deserialize and print moves (works in both C sim and RTL co-sim)
    if(moveCount > 0) {
        ParallelMove* moves = reinterpret_cast<ParallelMove*>(axi_moveList);
        std::cout << "\n=== MOVE SUMMARY ===\n";
        for(unsigned int i = 0; i < moveCount; i++) {
            MoveSummary summary = extractMoveSummary(moves[i]);
            std::cout << "Move shifts " << summary.rowShift << " rows and " 
                      << summary.colShift << " columns for " << summary.stepCount 
                      << " steps" << std::endl;
        }
        
        // Print detailed information for first 3 moves as example
        std::cout << "\n=== DETAILED MOVE DATA (first 3 moves as example) ===\n";
        unsigned int detailCount = (moveCount < 3) ? moveCount : 3;
        for(unsigned int i = 0; i < detailCount; i++) {
            printCompleteMove(moves[i], i);
        }
        std::cout << "\n(Access all " << moveCount << " moves from moveList_mem buffer)\n";
    }

    // ---------------------------- Final validation -------------------------
    // Validate the computation zone matches the target geometry
    unsigned int mismatches = 0, required = 0, matched = 0;
    for (unsigned int r = row_start; r < row_end; ++r) {
        for (unsigned int c = col_start; c < col_end; ++c) {
            bool want = axi_target[(r - row_start) * filled_cols + (c - col_start)];
            bool have = axi_state[r * total_cols + c];
            if (want) {
                ++required;
                if (have) ++matched;
            }
            if (want != have) ++mismatches;
        }
    }
    
    std::cout << "Mismatches in computation zone: " << mismatches
              << ", matched/required: " << matched << "/" << required << "\n";

    std::cout << "\n=== SORTED LATTICE (COMPUTATION ZONE + PARKING SPOTS) ===\n";
    printFullWithZone(axi_state, total_rows, total_cols, row_start, row_end, col_start, col_end);

    // Cleanup
    delete[] axi_state;
    delete[] axi_target;
    delete[] axi_moveList;

    std::cout << "\nDone.\n";
    
    // Return success if no mismatches
    return (mismatches == 0) ? 0 : 1;
}
