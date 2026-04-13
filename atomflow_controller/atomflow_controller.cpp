#include "atomflow_controller.hpp"

// ============================================================================
// Internal: Build Array2D stateArray from emissions + atomLocations
//
// Assumes atom sites are laid out in a regular grid_rows x grid_cols grid,
// indexed as: site i -> row = i / grid_cols, col = i % grid_cols
// ============================================================================
static void emissions_to_statearray(
    IMAGE_DTYPE     emissions[MAX_ATOM_SITES],
    int             atomLocationsSize,
    int             grid_rows,
    int             grid_cols,
    float           threshold,
    Array2D&        stateArray)
{
#pragma HLS INLINE off
    stateArray.resize(grid_rows, grid_cols, false);

    for (int i = 0; i < atomLocationsSize; i++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_ATOM_SITES
        int row = i / grid_cols;
        int col = i % grid_cols;
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
    unsigned int *moveCount)
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
        // Convert emissions -> stateArray
        Array2D stateArray;
        emissions_to_statearray(
            emissions_local, atomLocationsSize,
            grid_rows, grid_cols,
            emission_threshold,
            stateArray);

        // Load target geometry from memory
        Array2D targetGeometry;
        load_target_geometry(
            targetGeometry_mem,
            grid_rows, grid_cols,
            targetGeometry);

        // Run sorting — each move serialized directly into moveStream (no BRAM buffer)
        HLSMoveStream moveStreamWrapper(moveStream);
        sortLatticeByRowParallel_HLS(
            stateArray,
            compZoneRowStart, compZoneRowEnd,
            compZoneColStart, compZoneColEnd,
            targetGeometry,
            moveStreamWrapper);
        *moveCount = moveStreamWrapper.count;

    } else {
        // MODE_QUBIT_READOUT: emissions already written, nothing more to do
        *moveCount = 0;
    }
}
