// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
`timescale 1ns/1ps
module atomflow_controller_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 8,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [7:0]                    mode,
    output wire [31:0]                   emission_threshold,
    output wire [31:0]                   atomLocationsSize,
    output wire [31:0]                   projShape0,
    output wire [31:0]                   projShape1,
    output wire [63:0]                   atomLocations,
    output wire [31:0]                   psfSupersample,
    output wire [31:0]                   imageProjectionSize,
    output wire [63:0]                   imageProjs_local,
    output wire [63:0]                   imageProjs,
    output wire [63:0]                   imageProjs_local_size,
    output wire [63:0]                   fullImage,
    output wire [31:0]                   fullImage_rows,
    output wire [31:0]                   fullImage_cols,
    output wire [63:0]                   emissions,
    output wire [31:0]                   grid_rows,
    output wire [31:0]                   grid_cols,
    output wire [63:0]                   targetGeometry_mem,
    output wire [31:0]                   compZoneRowStart,
    output wire [31:0]                   compZoneRowEnd,
    output wire [31:0]                   compZoneColStart,
    output wire [31:0]                   compZoneColEnd,
    input  wire [31:0]                   moveCount,
    input  wire                          moveCount_ap_vld,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
// Protocol Used: ap_ctrl_hs
//
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

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                      = 8'h00,
    ADDR_GIE                          = 8'h04,
    ADDR_IER                          = 8'h08,
    ADDR_ISR                          = 8'h0c,
    ADDR_MODE_DATA_0                  = 8'h10,
    ADDR_MODE_CTRL                    = 8'h14,
    ADDR_EMISSION_THRESHOLD_DATA_0    = 8'h18,
    ADDR_EMISSION_THRESHOLD_CTRL      = 8'h1c,
    ADDR_ATOMLOCATIONSSIZE_DATA_0     = 8'h20,
    ADDR_ATOMLOCATIONSSIZE_CTRL       = 8'h24,
    ADDR_PROJSHAPE0_DATA_0            = 8'h28,
    ADDR_PROJSHAPE0_CTRL              = 8'h2c,
    ADDR_PROJSHAPE1_DATA_0            = 8'h30,
    ADDR_PROJSHAPE1_CTRL              = 8'h34,
    ADDR_ATOMLOCATIONS_DATA_0         = 8'h38,
    ADDR_ATOMLOCATIONS_DATA_1         = 8'h3c,
    ADDR_ATOMLOCATIONS_CTRL           = 8'h40,
    ADDR_PSFSUPERSAMPLE_DATA_0        = 8'h44,
    ADDR_PSFSUPERSAMPLE_CTRL          = 8'h48,
    ADDR_IMAGEPROJECTIONSIZE_DATA_0   = 8'h4c,
    ADDR_IMAGEPROJECTIONSIZE_CTRL     = 8'h50,
    ADDR_IMAGEPROJS_LOCAL_DATA_0      = 8'h54,
    ADDR_IMAGEPROJS_LOCAL_DATA_1      = 8'h58,
    ADDR_IMAGEPROJS_LOCAL_CTRL        = 8'h5c,
    ADDR_IMAGEPROJS_DATA_0            = 8'h60,
    ADDR_IMAGEPROJS_DATA_1            = 8'h64,
    ADDR_IMAGEPROJS_CTRL              = 8'h68,
    ADDR_IMAGEPROJS_LOCAL_SIZE_DATA_0 = 8'h6c,
    ADDR_IMAGEPROJS_LOCAL_SIZE_DATA_1 = 8'h70,
    ADDR_IMAGEPROJS_LOCAL_SIZE_CTRL   = 8'h74,
    ADDR_FULLIMAGE_DATA_0             = 8'h78,
    ADDR_FULLIMAGE_DATA_1             = 8'h7c,
    ADDR_FULLIMAGE_CTRL               = 8'h80,
    ADDR_FULLIMAGE_ROWS_DATA_0        = 8'h84,
    ADDR_FULLIMAGE_ROWS_CTRL          = 8'h88,
    ADDR_FULLIMAGE_COLS_DATA_0        = 8'h8c,
    ADDR_FULLIMAGE_COLS_CTRL          = 8'h90,
    ADDR_EMISSIONS_DATA_0             = 8'h94,
    ADDR_EMISSIONS_DATA_1             = 8'h98,
    ADDR_EMISSIONS_CTRL               = 8'h9c,
    ADDR_GRID_ROWS_DATA_0             = 8'ha0,
    ADDR_GRID_ROWS_CTRL               = 8'ha4,
    ADDR_GRID_COLS_DATA_0             = 8'ha8,
    ADDR_GRID_COLS_CTRL               = 8'hac,
    ADDR_TARGETGEOMETRY_MEM_DATA_0    = 8'hb0,
    ADDR_TARGETGEOMETRY_MEM_DATA_1    = 8'hb4,
    ADDR_TARGETGEOMETRY_MEM_CTRL      = 8'hb8,
    ADDR_COMPZONEROWSTART_DATA_0      = 8'hbc,
    ADDR_COMPZONEROWSTART_CTRL        = 8'hc0,
    ADDR_COMPZONEROWEND_DATA_0        = 8'hc4,
    ADDR_COMPZONEROWEND_CTRL          = 8'hc8,
    ADDR_COMPZONECOLSTART_DATA_0      = 8'hcc,
    ADDR_COMPZONECOLSTART_CTRL        = 8'hd0,
    ADDR_COMPZONECOLEND_DATA_0        = 8'hd4,
    ADDR_COMPZONECOLEND_CTRL          = 8'hd8,
    ADDR_MOVECOUNT_DATA_0             = 8'hdc,
    ADDR_MOVECOUNT_CTRL               = 8'he0,
    WRIDLE                            = 2'd0,
    WRDATA                            = 2'd1,
    WRRESP                            = 2'd2,
    WRRESET                           = 2'd3,
    RDIDLE                            = 2'd0,
    RDDATA                            = 2'd1,
    RDRESET                           = 2'd2,
    ADDR_BITS                = 8;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle = 1'b0;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_interrupt = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    wire                          auto_restart_done;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [7:0]                    int_mode = 'b0;
    reg  [31:0]                   int_emission_threshold = 'b0;
    reg  [31:0]                   int_atomLocationsSize = 'b0;
    reg  [31:0]                   int_projShape0 = 'b0;
    reg  [31:0]                   int_projShape1 = 'b0;
    reg  [63:0]                   int_atomLocations = 'b0;
    reg  [31:0]                   int_psfSupersample = 'b0;
    reg  [31:0]                   int_imageProjectionSize = 'b0;
    reg  [63:0]                   int_imageProjs_local = 'b0;
    reg  [63:0]                   int_imageProjs = 'b0;
    reg  [63:0]                   int_imageProjs_local_size = 'b0;
    reg  [63:0]                   int_fullImage = 'b0;
    reg  [31:0]                   int_fullImage_rows = 'b0;
    reg  [31:0]                   int_fullImage_cols = 'b0;
    reg  [63:0]                   int_emissions = 'b0;
    reg  [31:0]                   int_grid_rows = 'b0;
    reg  [31:0]                   int_grid_cols = 'b0;
    reg  [63:0]                   int_targetGeometry_mem = 'b0;
    reg  [31:0]                   int_compZoneRowStart = 'b0;
    reg  [31:0]                   int_compZoneRowEnd = 'b0;
    reg  [31:0]                   int_compZoneColStart = 'b0;
    reg  [31:0]                   int_compZoneColEnd = 'b0;
    reg                           int_moveCount_ap_vld;
    reg  [31:0]                   int_moveCount = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= {AWADDR[ADDR_BITS-1:2], {2{1'b0}}};
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                    rdata[9] <= int_interrupt;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_MODE_DATA_0: begin
                    rdata <= int_mode[7:0];
                end
                ADDR_EMISSION_THRESHOLD_DATA_0: begin
                    rdata <= int_emission_threshold[31:0];
                end
                ADDR_ATOMLOCATIONSSIZE_DATA_0: begin
                    rdata <= int_atomLocationsSize[31:0];
                end
                ADDR_PROJSHAPE0_DATA_0: begin
                    rdata <= int_projShape0[31:0];
                end
                ADDR_PROJSHAPE1_DATA_0: begin
                    rdata <= int_projShape1[31:0];
                end
                ADDR_ATOMLOCATIONS_DATA_0: begin
                    rdata <= int_atomLocations[31:0];
                end
                ADDR_ATOMLOCATIONS_DATA_1: begin
                    rdata <= int_atomLocations[63:32];
                end
                ADDR_PSFSUPERSAMPLE_DATA_0: begin
                    rdata <= int_psfSupersample[31:0];
                end
                ADDR_IMAGEPROJECTIONSIZE_DATA_0: begin
                    rdata <= int_imageProjectionSize[31:0];
                end
                ADDR_IMAGEPROJS_LOCAL_DATA_0: begin
                    rdata <= int_imageProjs_local[31:0];
                end
                ADDR_IMAGEPROJS_LOCAL_DATA_1: begin
                    rdata <= int_imageProjs_local[63:32];
                end
                ADDR_IMAGEPROJS_DATA_0: begin
                    rdata <= int_imageProjs[31:0];
                end
                ADDR_IMAGEPROJS_DATA_1: begin
                    rdata <= int_imageProjs[63:32];
                end
                ADDR_IMAGEPROJS_LOCAL_SIZE_DATA_0: begin
                    rdata <= int_imageProjs_local_size[31:0];
                end
                ADDR_IMAGEPROJS_LOCAL_SIZE_DATA_1: begin
                    rdata <= int_imageProjs_local_size[63:32];
                end
                ADDR_FULLIMAGE_DATA_0: begin
                    rdata <= int_fullImage[31:0];
                end
                ADDR_FULLIMAGE_DATA_1: begin
                    rdata <= int_fullImage[63:32];
                end
                ADDR_FULLIMAGE_ROWS_DATA_0: begin
                    rdata <= int_fullImage_rows[31:0];
                end
                ADDR_FULLIMAGE_COLS_DATA_0: begin
                    rdata <= int_fullImage_cols[31:0];
                end
                ADDR_EMISSIONS_DATA_0: begin
                    rdata <= int_emissions[31:0];
                end
                ADDR_EMISSIONS_DATA_1: begin
                    rdata <= int_emissions[63:32];
                end
                ADDR_GRID_ROWS_DATA_0: begin
                    rdata <= int_grid_rows[31:0];
                end
                ADDR_GRID_COLS_DATA_0: begin
                    rdata <= int_grid_cols[31:0];
                end
                ADDR_TARGETGEOMETRY_MEM_DATA_0: begin
                    rdata <= int_targetGeometry_mem[31:0];
                end
                ADDR_TARGETGEOMETRY_MEM_DATA_1: begin
                    rdata <= int_targetGeometry_mem[63:32];
                end
                ADDR_COMPZONEROWSTART_DATA_0: begin
                    rdata <= int_compZoneRowStart[31:0];
                end
                ADDR_COMPZONEROWEND_DATA_0: begin
                    rdata <= int_compZoneRowEnd[31:0];
                end
                ADDR_COMPZONECOLSTART_DATA_0: begin
                    rdata <= int_compZoneColStart[31:0];
                end
                ADDR_COMPZONECOLEND_DATA_0: begin
                    rdata <= int_compZoneColEnd[31:0];
                end
                ADDR_MOVECOUNT_DATA_0: begin
                    rdata <= int_moveCount[31:0];
                end
                ADDR_MOVECOUNT_CTRL: begin
                    rdata[0] <= int_moveCount_ap_vld;
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt             = int_interrupt;
assign ap_start              = int_ap_start;
assign task_ap_done          = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready         = ap_ready && !int_auto_restart;
assign auto_restart_done     = auto_restart_status && (ap_idle && !int_ap_idle);
assign mode                  = int_mode;
assign emission_threshold    = int_emission_threshold;
assign atomLocationsSize     = int_atomLocationsSize;
assign projShape0            = int_projShape0;
assign projShape1            = int_projShape1;
assign atomLocations         = int_atomLocations;
assign psfSupersample        = int_psfSupersample;
assign imageProjectionSize   = int_imageProjectionSize;
assign imageProjs_local      = int_imageProjs_local;
assign imageProjs            = int_imageProjs;
assign imageProjs_local_size = int_imageProjs_local_size;
assign fullImage             = int_fullImage;
assign fullImage_rows        = int_fullImage_rows;
assign fullImage_cols        = int_fullImage_cols;
assign emissions             = int_emissions;
assign grid_rows             = int_grid_rows;
assign grid_cols             = int_grid_cols;
assign targetGeometry_mem    = int_targetGeometry_mem;
assign compZoneRowStart      = int_compZoneRowStart;
assign compZoneRowEnd        = int_compZoneRowEnd;
assign compZoneColStart      = int_compZoneColStart;
assign compZoneColEnd        = int_compZoneColEnd;
// int_interrupt
always @(posedge ACLK) begin
    if (ARESET)
        int_interrupt <= 1'b0;
    else if (ACLK_EN) begin
        if (int_gie && (|int_isr))
            int_interrupt <= 1'b1;
        else
            int_interrupt <= 1'b0;
    end
end

// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_done)
            int_task_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_task_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <= WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_mode[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_mode[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MODE_DATA_0)
            int_mode[7:0] <= (WDATA[31:0] & wmask) | (int_mode[7:0] & ~wmask);
    end
end

// int_emission_threshold[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_emission_threshold[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_EMISSION_THRESHOLD_DATA_0)
            int_emission_threshold[31:0] <= (WDATA[31:0] & wmask) | (int_emission_threshold[31:0] & ~wmask);
    end
end

// int_atomLocationsSize[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_atomLocationsSize[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ATOMLOCATIONSSIZE_DATA_0)
            int_atomLocationsSize[31:0] <= (WDATA[31:0] & wmask) | (int_atomLocationsSize[31:0] & ~wmask);
    end
end

// int_projShape0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_projShape0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PROJSHAPE0_DATA_0)
            int_projShape0[31:0] <= (WDATA[31:0] & wmask) | (int_projShape0[31:0] & ~wmask);
    end
end

// int_projShape1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_projShape1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PROJSHAPE1_DATA_0)
            int_projShape1[31:0] <= (WDATA[31:0] & wmask) | (int_projShape1[31:0] & ~wmask);
    end
end

// int_atomLocations[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_atomLocations[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ATOMLOCATIONS_DATA_0)
            int_atomLocations[31:0] <= (WDATA[31:0] & wmask) | (int_atomLocations[31:0] & ~wmask);
    end
end

// int_atomLocations[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_atomLocations[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ATOMLOCATIONS_DATA_1)
            int_atomLocations[63:32] <= (WDATA[31:0] & wmask) | (int_atomLocations[63:32] & ~wmask);
    end
end

// int_psfSupersample[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_psfSupersample[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PSFSUPERSAMPLE_DATA_0)
            int_psfSupersample[31:0] <= (WDATA[31:0] & wmask) | (int_psfSupersample[31:0] & ~wmask);
    end
end

// int_imageProjectionSize[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_imageProjectionSize[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IMAGEPROJECTIONSIZE_DATA_0)
            int_imageProjectionSize[31:0] <= (WDATA[31:0] & wmask) | (int_imageProjectionSize[31:0] & ~wmask);
    end
end

// int_imageProjs_local[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_imageProjs_local[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IMAGEPROJS_LOCAL_DATA_0)
            int_imageProjs_local[31:0] <= (WDATA[31:0] & wmask) | (int_imageProjs_local[31:0] & ~wmask);
    end
end

// int_imageProjs_local[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_imageProjs_local[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IMAGEPROJS_LOCAL_DATA_1)
            int_imageProjs_local[63:32] <= (WDATA[31:0] & wmask) | (int_imageProjs_local[63:32] & ~wmask);
    end
end

// int_imageProjs[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_imageProjs[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IMAGEPROJS_DATA_0)
            int_imageProjs[31:0] <= (WDATA[31:0] & wmask) | (int_imageProjs[31:0] & ~wmask);
    end
end

// int_imageProjs[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_imageProjs[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IMAGEPROJS_DATA_1)
            int_imageProjs[63:32] <= (WDATA[31:0] & wmask) | (int_imageProjs[63:32] & ~wmask);
    end
end

// int_imageProjs_local_size[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_imageProjs_local_size[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IMAGEPROJS_LOCAL_SIZE_DATA_0)
            int_imageProjs_local_size[31:0] <= (WDATA[31:0] & wmask) | (int_imageProjs_local_size[31:0] & ~wmask);
    end
end

// int_imageProjs_local_size[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_imageProjs_local_size[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IMAGEPROJS_LOCAL_SIZE_DATA_1)
            int_imageProjs_local_size[63:32] <= (WDATA[31:0] & wmask) | (int_imageProjs_local_size[63:32] & ~wmask);
    end
end

// int_fullImage[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_fullImage[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FULLIMAGE_DATA_0)
            int_fullImage[31:0] <= (WDATA[31:0] & wmask) | (int_fullImage[31:0] & ~wmask);
    end
end

// int_fullImage[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_fullImage[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FULLIMAGE_DATA_1)
            int_fullImage[63:32] <= (WDATA[31:0] & wmask) | (int_fullImage[63:32] & ~wmask);
    end
end

// int_fullImage_rows[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_fullImage_rows[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FULLIMAGE_ROWS_DATA_0)
            int_fullImage_rows[31:0] <= (WDATA[31:0] & wmask) | (int_fullImage_rows[31:0] & ~wmask);
    end
end

// int_fullImage_cols[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_fullImage_cols[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FULLIMAGE_COLS_DATA_0)
            int_fullImage_cols[31:0] <= (WDATA[31:0] & wmask) | (int_fullImage_cols[31:0] & ~wmask);
    end
end

// int_emissions[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_emissions[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_EMISSIONS_DATA_0)
            int_emissions[31:0] <= (WDATA[31:0] & wmask) | (int_emissions[31:0] & ~wmask);
    end
end

// int_emissions[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_emissions[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_EMISSIONS_DATA_1)
            int_emissions[63:32] <= (WDATA[31:0] & wmask) | (int_emissions[63:32] & ~wmask);
    end
end

// int_grid_rows[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_grid_rows[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GRID_ROWS_DATA_0)
            int_grid_rows[31:0] <= (WDATA[31:0] & wmask) | (int_grid_rows[31:0] & ~wmask);
    end
end

// int_grid_cols[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_grid_cols[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GRID_COLS_DATA_0)
            int_grid_cols[31:0] <= (WDATA[31:0] & wmask) | (int_grid_cols[31:0] & ~wmask);
    end
end

// int_targetGeometry_mem[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_targetGeometry_mem[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TARGETGEOMETRY_MEM_DATA_0)
            int_targetGeometry_mem[31:0] <= (WDATA[31:0] & wmask) | (int_targetGeometry_mem[31:0] & ~wmask);
    end
end

// int_targetGeometry_mem[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_targetGeometry_mem[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TARGETGEOMETRY_MEM_DATA_1)
            int_targetGeometry_mem[63:32] <= (WDATA[31:0] & wmask) | (int_targetGeometry_mem[63:32] & ~wmask);
    end
end

// int_compZoneRowStart[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_compZoneRowStart[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_COMPZONEROWSTART_DATA_0)
            int_compZoneRowStart[31:0] <= (WDATA[31:0] & wmask) | (int_compZoneRowStart[31:0] & ~wmask);
    end
end

// int_compZoneRowEnd[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_compZoneRowEnd[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_COMPZONEROWEND_DATA_0)
            int_compZoneRowEnd[31:0] <= (WDATA[31:0] & wmask) | (int_compZoneRowEnd[31:0] & ~wmask);
    end
end

// int_compZoneColStart[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_compZoneColStart[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_COMPZONECOLSTART_DATA_0)
            int_compZoneColStart[31:0] <= (WDATA[31:0] & wmask) | (int_compZoneColStart[31:0] & ~wmask);
    end
end

// int_compZoneColEnd[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_compZoneColEnd[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_COMPZONECOLEND_DATA_0)
            int_compZoneColEnd[31:0] <= (WDATA[31:0] & wmask) | (int_compZoneColEnd[31:0] & ~wmask);
    end
end

// int_moveCount
always @(posedge ACLK) begin
    if (ARESET)
        int_moveCount <= 0;
    else if (ACLK_EN) begin
        if (moveCount_ap_vld)
            int_moveCount <= moveCount;
    end
end

// int_moveCount_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_moveCount_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (moveCount_ap_vld)
            int_moveCount_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_MOVECOUNT_CTRL)
            int_moveCount_ap_vld <= 1'b0; // clear on read
    end
end

//synthesis translate_off
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (int_gie & ~int_isr[0] & int_ier[0] & ap_done)
            $display ("// Interrupt Monitor : interrupt for ap_done detected @ \"%0t\"", $time);
        if (int_gie & ~int_isr[1] & int_ier[1] & ap_ready)
            $display ("// Interrupt Monitor : interrupt for ap_ready detected @ \"%0t\"", $time);
    end
end
//synthesis translate_on

//------------------------Memory logic-------------------

endmodule
