#include "atomflow_controller.hpp"
#include <cmath>

// ============================================================================
// Internal: Build Array2D stateArray from emissions + atomLocations
//
// Image analysis covers only the computation zone.  The surrounding cells in
// the physical grid are initialized empty and become parking space for sorting.
// Detection site i is row-major within the computation zone.
// ============================================================================
static void emissions_to_statearray(
    IMAGE_DTYPE     emissions[MAX_ATOM_SITES],
    int             atomLocationsSize,
    int             grid_rows,
    int             grid_cols,
    unsigned int    compZoneRowStart,
    unsigned int    compZoneColStart,
    unsigned int    compZoneCols,
    float           threshold,
    Array2D&        stateArray)
{
#pragma HLS INLINE off
    stateArray.resize(grid_rows, grid_cols, false);

    for (int i = 0; i < atomLocationsSize; i++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_ATOM_SITES
        int row = (int)compZoneRowStart + i / (int)compZoneCols;
        int col = (int)compZoneColStart + i % (int)compZoneCols;
        if (row < grid_rows && col < grid_cols) {
            stateArray(row, col) = (emissions[i] > threshold);
        }
    }
}

// ============================================================================
// Internal: Load target geometry from memory into Array2D
// ============================================================================
static void load_target_geometry(
    volatile uint8_t *targetGeometry_mem,
    int               grid_rows,
    int               grid_cols,
    Array2D&          targetGeometry)
{
#pragma HLS INLINE off
    targetGeometry.resize(grid_rows, grid_cols, false);

    for (int r = 0; r < grid_rows; r++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_ROWS
        for (int c = 0; c < grid_cols; c++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_COLS
            int idx = r * grid_cols + c;
            targetGeometry(r, c) = (targetGeometry_mem[idx] != 0);
        }
    }
}

// ============================================================================
// Internal: Serialize HLSMoveList to memory
// ============================================================================
// (stream_movelist removed — sorting now writes directly to moveStream via HLSMoveStream)

// ============================================================================
// TOP-LEVEL: ATOMFLOW CONTROLLER
// ============================================================================
void atomflow_controller(
    uint8_t  mode,
    float    emission_threshold,
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
    IMAGE_DTYPE emissions[MAX_ATOM_SITES],
    int      grid_rows,
    int      grid_cols,
    volatile uint8_t *targetGeometry_mem,
    unsigned int compZoneRowStart,
    unsigned int compZoneRowEnd,
    unsigned int compZoneColStart,
    unsigned int compZoneColEnd,
    hls::stream<ap_uint<512>>& moveStream,
    unsigned int *moveCount,
    unsigned int *status,
    unsigned int *targetsFilled,
    unsigned int *targetsRequired)
{
// AXI interfaces
#pragma HLS INTERFACE s_axilite port=mode
#pragma HLS INTERFACE s_axilite port=emission_threshold
#pragma HLS INTERFACE s_axilite port=atomLocationsSize
#pragma HLS INTERFACE s_axilite port=projShape0
#pragma HLS INTERFACE s_axilite port=projShape1
#pragma HLS INTERFACE s_axilite port=psfSupersample
#pragma HLS INTERFACE s_axilite port=imageProjectionSize
#pragma HLS INTERFACE s_axilite port=fullImage_rows
#pragma HLS INTERFACE s_axilite port=fullImage_cols
#pragma HLS INTERFACE s_axilite port=grid_rows
#pragma HLS INTERFACE s_axilite port=grid_cols
#pragma HLS INTERFACE s_axilite port=compZoneRowStart
#pragma HLS INTERFACE s_axilite port=compZoneRowEnd
#pragma HLS INTERFACE s_axilite port=compZoneColStart
#pragma HLS INTERFACE s_axilite port=compZoneColEnd
#pragma HLS INTERFACE s_axilite port=moveCount
// 'status' is declared last so every pre-existing register keeps its offset
// (verified: csynth 2024.2 keeps 0x10..0xDC unchanged and places status at
// 0xEC data / 0xF0 ap_vld — mirrored as STATUS_REG in atomflow_control.py).
#pragma HLS INTERFACE s_axilite port=status
#pragma HLS INTERFACE s_axilite port=targetsFilled
#pragma HLS INTERFACE s_axilite port=targetsRequired
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS INTERFACE m_axi port=atomLocations        offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=imageProjs           offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi port=imageProjs_local_size offset=slave bundle=gmem2
#pragma HLS INTERFACE m_axi port=emissions            offset=slave bundle=gmem3
#pragma HLS INTERFACE m_axi port=targetGeometry_mem   offset=slave bundle=gmem4
#pragma HLS INTERFACE axis port=moveStream depth=8192

    // ----------------------------------------------------------------
    // Step 1: Always run image analysis into a local buffer.
    // We cannot read back from the m_axi 'emissions' port within the
    // same invocation (HLS models m_axi as external memory — writes go
    // out but are not immediately visible to subsequent reads in the
    // same function call). Use a local array as the working buffer,
    // then copy it out to the m_axi port for the PS to read.
    // ----------------------------------------------------------------

    // ----------------------------------------------------------------
    // Step 0: Validate the image configuration BEFORE any DDR traffic.
    //
    // reconstruct() implements one fixed configuration (see PSF_WINDOW in
    // image_analysis.hpp) but takes projShape/psfSupersample as runtime
    // arguments that only move the window ORIGIN.  Out-of-range values used to
    // produce silently wrong emissions; reject them instead.
    // ----------------------------------------------------------------
    bool validImage =
        atomLocationsSize > 0 &&
        atomLocationsSize <= MAX_ATOM_SITES &&
        projShape0 == PSF_WINDOW &&
        projShape1 == PSF_WINDOW &&
        psfSupersample == PSF_SUPERSAMPLE_ONLY &&
        imageProjectionSize > 0 &&
        imageProjectionSize <= IMAGE_PROJECTION_SIZE &&
        fullImage_rows > 0 && fullImage_cols > 0 &&
        fullImage_rows <= PIXEL && fullImage_cols <= PIXEL;
    if (!validImage) {
        *moveCount = 0; *targetsFilled = 0; *targetsRequired = 0;
        *status = ATOMFLOW_STATUS_ERR_IMAGE_CFG;
        return;
    }

    // Every PSF window must lie fully inside the image.  The extraction path
    // converts the window origin to unsigned for its address arithmetic, so a
    // negative origin becomes a huge AXI address rather than a clipped read.
    bool atomsInBounds = true;
    for (int i = 0; i < atomLocationsSize; i++) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_ATOM_SITES
        // MUST match getLocalImages_single() exactly, or a window could pass
        // this check and then be extracted from a different origin.
        int xi = (int)std::round(atomLocations[i].x);
        int yi = (int)std::round(atomLocations[i].y);
        int xmin = xi - projShape1 / 2;
        int ymin = yi - projShape0 / 2;
        if (xmin < 0 || ymin < 0 ||
            xmin + projShape1 > fullImage_cols ||
            ymin + projShape0 > fullImage_rows) {
            atomsInBounds = false;
        }
    }
    if (!atomsInBounds) {
        *moveCount = 0; *targetsFilled = 0; *targetsRequired = 0;
        *status = ATOMFLOW_STATUS_ERR_ATOM_OOB;
        return;
    }

    IMAGE_DTYPE emissions_local[MAX_ATOM_SITES];
#pragma HLS ARRAY_PARTITION variable=emissions_local cyclic factor=8

    reconstruct(
        atomLocationsSize, projShape0, projShape1,
        atomLocations,
        psfSupersample,
        imageProjectionSize,
        imageProjs_local,
        imageProjs,
        imageProjs_local_size,
        fullImage,
        fullImage_rows, fullImage_cols,
        emissions_local);

    // Copy local buffer to m_axi output port
    for (int i = 0; i < atomLocationsSize; i++) {
#pragma HLS pipeline II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_ATOM_SITES
        emissions[i] = emissions_local[i];
    }

    // ----------------------------------------------------------------
    // Step 2: Mode dispatch — use emissions_local (not the m_axi port)
    // ----------------------------------------------------------------
    if (mode == MODE_INITIALIZATION) {
        // Image detection and targetGeometry are both zone-local.  The larger
        // stateArray includes empty cells around the zone for atom parking.
        bool validZone =
            grid_rows > 0 &&
            grid_cols > 0 &&
            grid_rows <= MAX_ROWS &&
            grid_cols <= MAX_COLS &&
            compZoneRowStart < compZoneRowEnd &&
            compZoneColStart < compZoneColEnd &&
            compZoneRowEnd <= (unsigned int)grid_rows &&
            compZoneColEnd <= (unsigned int)grid_cols;
        if (!validZone) {
            *moveCount = 0; *targetsFilled = 0; *targetsRequired = 0;
            *status = ATOMFLOW_STATUS_ERR_ZONE;
            return;
        }

        unsigned int compZoneRows = compZoneRowEnd - compZoneRowStart;
        unsigned int compZoneCols = compZoneColEnd - compZoneColStart;
        if (atomLocationsSize < 0 ||
            (unsigned int)atomLocationsSize != compZoneRows * compZoneCols) {
            *moveCount = 0; *targetsFilled = 0; *targetsRequired = 0;
            *status = ATOMFLOW_STATUS_ERR_ATOM_COUNT;
            return;
        }

        // Convert emissions -> stateArray
        Array2D stateArray;
        emissions_to_statearray(
            emissions_local, atomLocationsSize,
            grid_rows, grid_cols,
            compZoneRowStart, compZoneColStart, compZoneCols,
            emission_threshold,
            stateArray);

        // Load target geometry from memory
        Array2D targetGeometry;
        load_target_geometry(
            targetGeometry_mem,
            (int)compZoneRows, (int)compZoneCols,
            targetGeometry);

        // Run sorting — each move serialized directly into moveStream (no BRAM buffer)
        HLSMoveStream moveStreamWrapper(moveStream);
        bool sortOk = sortLatticeByRowParallel_HLS(
            stateArray,
            compZoneRowStart, compZoneRowEnd,
            compZoneColStart, compZoneColEnd,
            targetGeometry,
            moveStreamWrapper);
        // Streamed beats cannot be recalled: moveCount always reports what was
        // actually emitted, and status tells the PS whether to trust it.
        *moveCount = moveStreamWrapper.count;

        // Score the achieved geometry against the request. sortLatticeByRow
        // mutates stateArray in place as it plans, so this is the controller's
        // own view of the final lattice — no host replay required.
        unsigned int filled = 0, required = 0;
        for (unsigned int r = 0; r < compZoneRows; r++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_ROWS
            for (unsigned int c = 0; c < compZoneCols; c++) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_COLS
                if (targetGeometry(r, c)) {
                    required++;
                    if (stateArray(compZoneRowStart + r, compZoneColStart + c)) filled++;
                }
            }
        }
        *targetsFilled   = filled;
        *targetsRequired = required;

        // ERR_SORT covers both an explicit sorter failure and a silent partial
        // fill: the sorter can return true after an early exit that leaves
        // target sites empty, and the PS must not read that as success.
        *status = (sortOk && filled == required)
                    ? ATOMFLOW_STATUS_OK : ATOMFLOW_STATUS_ERR_SORT;

    } else {
        // MODE_QUBIT_READOUT: emissions already written, nothing more to do
        *moveCount = 0; *targetsFilled = 0; *targetsRequired = 0;
        *status = ATOMFLOW_STATUS_OK;
    }
}
