#pragma once

#include "../../Image_analysis/src/image_analysis.hpp"
#include "../../sorting-organized-main/src/sortLatticeByRow.hpp"

// Operation mode
#define MODE_QUBIT_READOUT   0
#define MODE_INITIALIZATION  1

// Default emission threshold: sites with emissions above this are "occupied"
// Tune this to match your atom detection SNR
#define DEFAULT_EMISSION_THRESHOLD  0.5f

// Maximum number of atom sites (matches image_analysis atomLocations limit)
#define MAX_ATOM_SITES 2000

void atomflow_controller(
    // --- Mode control (AXI-Lite) ---
    uint8_t  mode,               // MODE_QUBIT_READOUT or MODE_INITIALIZATION
    float    emission_threshold, // threshold to binarize emissions into stateArray

    // --- Image analysis inputs ---
    int      atomLocationsSize,
    int      projShape0,
    int      projShape1,
    atom_location atomLocations[MAX_ATOM_SITES],
    int      psfSupersample,
    int      imageProjectionSize,
    hls::burst_maxi<ap_uint<512>> imageProjs_local,
    IMAGE_DTYPE imageProjs[IMAGE_PROJECTION_SIZE],
    int      imageProjs_local_size[IMAGE_PROJECTION_SIZE],
    hls::burst_maxi<ap_uint<512>> fullImage,
    int      fullImage_rows,
    int      fullImage_cols,

    // --- Image analysis output (always written) ---
    IMAGE_DTYPE emissions[MAX_ATOM_SITES],

    // --- Grid layout for state array construction ---
    int      grid_rows,          // number of trap rows
    int      grid_cols,          // number of trap cols

    // --- Sorting inputs (used only in INIT mode) ---
    volatile uint8_t *targetGeometry_mem, // row-major boolean grid [grid_rows*grid_cols]
    unsigned int compZoneRowStart,
    unsigned int compZoneRowEnd,
    unsigned int compZoneColStart,
    unsigned int compZoneColEnd,

    // --- Sorting output (valid only in INIT mode) ---
    hls::stream<ap_uint<512>>& moveStream, // AXI-Stream: serialized moves (512-bit beats)
    unsigned int *moveCount                // number of parallel moves (AXI-Lite scalar)
);
