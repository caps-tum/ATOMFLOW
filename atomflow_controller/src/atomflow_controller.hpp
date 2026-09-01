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

// ----------------------------------------------------------------------------
// Status codes reported via the AXI-Lite 'status' register.
// 0 is deliberately unused: a PS read of 0 means the register was never
// written (e.g. stale bitstream without the status port).
// ----------------------------------------------------------------------------
#define ATOMFLOW_STATUS_OK              1u  // run completed; moveCount is valid
#define ATOMFLOW_STATUS_ERR_ZONE        2u  // grid/zone geometry invalid
#define ATOMFLOW_STATUS_ERR_ATOM_COUNT  3u  // atomLocationsSize != zone area
#define ATOMFLOW_STATUS_ERR_SORT        4u  // sorter reported failure, or the
                                            // target geometry was not fully
                                            // filled; streamed moves are suspect
#define ATOMFLOW_STATUS_ERR_IMAGE_CFG   5u  // image parameters outside the fixed
                                            // configuration the datapath implements
                                            // (see PSF_WINDOW in image_analysis.hpp)
#define ATOMFLOW_STATUS_ERR_ATOM_OOB    6u  // an atom's PSF window would read
                                            // outside the image buffer

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

    // --- Physical grid, including parking space ---
    int      grid_rows,          // number of physical trap rows
    int      grid_cols,          // number of physical trap cols

    // --- Sorting inputs (used only in INIT mode) ---
    // Image detections and targetGeometry are row-major within this zone.
    // Cells outside the zone start empty and are available as parking space.
    volatile uint8_t *targetGeometry_mem, // [(rowEnd-rowStart)*(colEnd-colStart)]
    unsigned int compZoneRowStart,
    unsigned int compZoneRowEnd,
    unsigned int compZoneColStart,
    unsigned int compZoneColEnd,

    // --- Sorting output (valid only in INIT mode) ---
    hls::stream<ap_uint<512>>& moveStream, // AXI-Stream: serialized moves (512-bit beats)
    unsigned int *moveCount,               // number of parallel moves (AXI-Lite scalar)
    unsigned int *status,                  // ATOMFLOW_STATUS_* (AXI-Lite scalar)
    // Fill outcome, measured on the controller's own post-sort lattice.
    // status==OK only means the sorter did not report failure; these two say
    // whether the target geometry was actually achieved.
    unsigned int *targetsFilled,           // target sites holding an atom
    unsigned int *targetsRequired          // target sites requested
);
