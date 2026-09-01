#define AP_INT_MAX_W    2048

#include "hls_stream.h"
#include "hls_burst_maxi.h"

#define IMAGE_DTYPE float
#define IMAGE_PROJECTION_SIZE   100
#define IMAGE_PROJECTION_LOCAL  1000

// // 10x10
// #define FULL_IMAGE_SIZE     256*256
//// 12x12
// #define FULL_IMAGE_SIZE     320*320
//// 16x16
// #define FULL_IMAGE_SIZE     400*400
//// 22x22
// #define FULL_IMAGE_SIZE     520*520
//// 28x28
// #define FULL_IMAGE_SIZE     640*640
// 32x32
// #define FULL_IMAGE_SIZE     768*768
////  34x34
// #define FULL_IMAGE_SIZE     760*760
////  40x40
// #define FULL_IMAGE_SIZE     880*880
//// 40x40
#define FULL_IMAGE_SIZE     1024*1024

// Row stride, in pixels, that reconstruct() assumes for `fullImage`.
// This is NOT derived from fullImage_cols: the host must lay the image out with
// exactly this stride (zero-padding short rows).  See PSF_WINDOW below for the
// rest of the fixed configuration.
#define PIXEL    1024

// ---------------------------------------------------------------------------
// FIXED reconstruction configuration.
//
// The datapath is hard-wired to these values: the extraction windows, the
// unrolled summation trees (vector_sum/vector_sum_prod/matrix_sum_prod) and the
// burst-length arithmetic are all written for a PSF_WINDOW x PSF_WINDOW window
// with a single PSF phase.  projShape0/projShape1/psfSupersample are accepted as
// runtime arguments but only affect the window ORIGIN, not its size, so passing
// anything else silently computes the wrong emissions instead of failing.
//
// atomflow_controller() rejects out-of-range values up front; see
// ATOMFLOW_STATUS_ERR_IMAGE_CFG in atomflow_controller.hpp.
// ---------------------------------------------------------------------------
#define PSF_WINDOW           31   // required projShape0 == projShape1
#define PSF_SUPERSAMPLE_ONLY 1    // required psfSupersample

typedef struct {
    float x;
    float y;
} atom_location;

typedef struct {
    int X_int;
    int Y_int;
    int X_min;
    int Y_min;
    int X_max;
    int Y_max;
    int dx;
    int dy;
} local_image_info;

void reconstruct(int atomLocationsSize,int projShape0, int projShape1, atom_location atomLocations[2000],
    int psfSupersample, 
    int imageProjectionSize, 

    //IMAGE_DTYPE imageProjs_local[IMAGE_PROJECTION_LOCAL * IMAGE_PROJECTION_SIZE], 
    //hls::burst_maxi<IMAGE_DTYPE> imageProjs_local,
    hls::burst_maxi<ap_uint<512>> imageProjs_local,

    IMAGE_DTYPE imageProjs[IMAGE_PROJECTION_SIZE],
    int imageProjs_local_size[IMAGE_PROJECTION_SIZE],
    //IMAGE_DTYPE fullImage[FULL_IMAGE_SIZE],
    //hls::burst_maxi<IMAGE_DTYPE> fullImage,
    hls::burst_maxi<ap_uint<512>> fullImage,
    
    int fullImage_rows, int fullImage_cols,  IMAGE_DTYPE* emissions);