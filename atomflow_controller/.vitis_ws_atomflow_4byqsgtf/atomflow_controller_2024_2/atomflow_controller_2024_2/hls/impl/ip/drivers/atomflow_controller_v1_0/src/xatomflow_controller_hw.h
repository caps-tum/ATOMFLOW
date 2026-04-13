// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of mode
//        bit 7~0 - mode[7:0] (Read/Write)
//        others  - reserved
// 0x14 : reserved
// 0x18 : Data signal of emission_threshold
//        bit 31~0 - emission_threshold[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of atomLocationsSize
//        bit 31~0 - atomLocationsSize[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of projShape0
//        bit 31~0 - projShape0[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of projShape1
//        bit 31~0 - projShape1[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of atomLocations
//        bit 31~0 - atomLocations[31:0] (Read/Write)
// 0x3c : Data signal of atomLocations
//        bit 31~0 - atomLocations[63:32] (Read/Write)
// 0x40 : reserved
// 0x44 : Data signal of psfSupersample
//        bit 31~0 - psfSupersample[31:0] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of imageProjectionSize
//        bit 31~0 - imageProjectionSize[31:0] (Read/Write)
// 0x50 : reserved
// 0x54 : Data signal of imageProjs_local
//        bit 31~0 - imageProjs_local[31:0] (Read/Write)
// 0x58 : Data signal of imageProjs_local
//        bit 31~0 - imageProjs_local[63:32] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of imageProjs
//        bit 31~0 - imageProjs[31:0] (Read/Write)
// 0x64 : Data signal of imageProjs
//        bit 31~0 - imageProjs[63:32] (Read/Write)
// 0x68 : reserved
// 0x6c : Data signal of imageProjs_local_size
//        bit 31~0 - imageProjs_local_size[31:0] (Read/Write)
// 0x70 : Data signal of imageProjs_local_size
//        bit 31~0 - imageProjs_local_size[63:32] (Read/Write)
// 0x74 : reserved
// 0x78 : Data signal of fullImage
//        bit 31~0 - fullImage[31:0] (Read/Write)
// 0x7c : Data signal of fullImage
//        bit 31~0 - fullImage[63:32] (Read/Write)
// 0x80 : reserved
// 0x84 : Data signal of fullImage_rows
//        bit 31~0 - fullImage_rows[31:0] (Read/Write)
// 0x88 : reserved
// 0x8c : Data signal of fullImage_cols
//        bit 31~0 - fullImage_cols[31:0] (Read/Write)
// 0x90 : reserved
// 0x94 : Data signal of emissions
//        bit 31~0 - emissions[31:0] (Read/Write)
// 0x98 : Data signal of emissions
//        bit 31~0 - emissions[63:32] (Read/Write)
// 0x9c : reserved
// 0xa0 : Data signal of grid_rows
//        bit 31~0 - grid_rows[31:0] (Read/Write)
// 0xa4 : reserved
// 0xa8 : Data signal of grid_cols
//        bit 31~0 - grid_cols[31:0] (Read/Write)
// 0xac : reserved
// 0xb0 : Data signal of targetGeometry_mem
//        bit 31~0 - targetGeometry_mem[31:0] (Read/Write)
// 0xb4 : Data signal of targetGeometry_mem
//        bit 31~0 - targetGeometry_mem[63:32] (Read/Write)
// 0xb8 : reserved
// 0xbc : Data signal of compZoneRowStart
//        bit 31~0 - compZoneRowStart[31:0] (Read/Write)
// 0xc0 : reserved
// 0xc4 : Data signal of compZoneRowEnd
//        bit 31~0 - compZoneRowEnd[31:0] (Read/Write)
// 0xc8 : reserved
// 0xcc : Data signal of compZoneColStart
//        bit 31~0 - compZoneColStart[31:0] (Read/Write)
// 0xd0 : reserved
// 0xd4 : Data signal of compZoneColEnd
//        bit 31~0 - compZoneColEnd[31:0] (Read/Write)
// 0xd8 : reserved
// 0xdc : Data signal of moveCount
//        bit 31~0 - moveCount[31:0] (Read)
// 0xe0 : Control signal of moveCount
//        bit 0  - moveCount_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_AP_CTRL                    0x00
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_GIE                        0x04
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_IER                        0x08
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_ISR                        0x0c
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_MODE_DATA                  0x10
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_MODE_DATA                  8
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_EMISSION_THRESHOLD_DATA    0x18
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_EMISSION_THRESHOLD_DATA    32
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_ATOMLOCATIONSSIZE_DATA     0x20
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_ATOMLOCATIONSSIZE_DATA     32
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_PROJSHAPE0_DATA            0x28
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_PROJSHAPE0_DATA            32
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_PROJSHAPE1_DATA            0x30
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_PROJSHAPE1_DATA            32
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_ATOMLOCATIONS_DATA         0x38
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_ATOMLOCATIONS_DATA         64
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_PSFSUPERSAMPLE_DATA        0x44
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_PSFSUPERSAMPLE_DATA        32
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_IMAGEPROJECTIONSIZE_DATA   0x4c
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_IMAGEPROJECTIONSIZE_DATA   32
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_IMAGEPROJS_LOCAL_DATA      0x54
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_IMAGEPROJS_LOCAL_DATA      64
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_IMAGEPROJS_DATA            0x60
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_IMAGEPROJS_DATA            64
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_IMAGEPROJS_LOCAL_SIZE_DATA 0x6c
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_IMAGEPROJS_LOCAL_SIZE_DATA 64
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_FULLIMAGE_DATA             0x78
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_FULLIMAGE_DATA             64
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_FULLIMAGE_ROWS_DATA        0x84
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_FULLIMAGE_ROWS_DATA        32
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_FULLIMAGE_COLS_DATA        0x8c
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_FULLIMAGE_COLS_DATA        32
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_EMISSIONS_DATA             0x94
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_EMISSIONS_DATA             64
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_GRID_ROWS_DATA             0xa0
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_GRID_ROWS_DATA             32
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_GRID_COLS_DATA             0xa8
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_GRID_COLS_DATA             32
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_TARGETGEOMETRY_MEM_DATA    0xb0
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_TARGETGEOMETRY_MEM_DATA    64
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_COMPZONEROWSTART_DATA      0xbc
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_COMPZONEROWSTART_DATA      32
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_COMPZONEROWEND_DATA        0xc4
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_COMPZONEROWEND_DATA        32
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_COMPZONECOLSTART_DATA      0xcc
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_COMPZONECOLSTART_DATA      32
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_COMPZONECOLEND_DATA        0xd4
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_COMPZONECOLEND_DATA        32
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_MOVECOUNT_DATA             0xdc
#define XATOMFLOW_CONTROLLER_CONTROL_BITS_MOVECOUNT_DATA             32
#define XATOMFLOW_CONTROLLER_CONTROL_ADDR_MOVECOUNT_CTRL             0xe0

