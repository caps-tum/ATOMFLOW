set moduleName atomflow_controller
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 72
set C_modelName {atomflow_controller}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem0 int 64 regular {axi_master 0}  }
	{ gmem5 int 512 regular {axi_master 0}  }
	{ gmem1 int 32 regular {axi_master 0}  }
	{ gmem2 int 32 unused {axi_master 0}  }
	{ gmem6 int 512 regular {axi_master 0}  }
	{ gmem3 int 32 regular {axi_master 1}  }
	{ gmem4 int 8 regular {axi_master 0}  }
	{ mode uint 8 regular {axi_slave 0}  }
	{ emission_threshold float 32 regular {axi_slave 0}  }
	{ atomLocationsSize int 32 regular {axi_slave 0}  }
	{ projShape0 int 32 regular {axi_slave 0}  }
	{ projShape1 int 32 regular {axi_slave 0}  }
	{ atomLocations int 64 regular {axi_slave 0}  }
	{ psfSupersample int 32 regular {axi_slave 0}  }
	{ imageProjectionSize int 32 unused {axi_slave 0}  }
	{ imageProjs_local int 64 regular {axi_slave 0}  }
	{ imageProjs int 64 regular {axi_slave 0}  }
	{ imageProjs_local_size int 64 unused {axi_slave 0}  }
	{ fullImage int 64 regular {axi_slave 0}  }
	{ fullImage_rows int 32 unused {axi_slave 0}  }
	{ fullImage_cols int 32 unused {axi_slave 0}  }
	{ emissions int 64 regular {axi_slave 0}  }
	{ grid_rows int 32 regular {axi_slave 0}  }
	{ grid_cols int 32 regular {axi_slave 0}  }
	{ targetGeometry_mem int 64 regular {axi_slave 0}  }
	{ compZoneRowStart int 32 regular {axi_slave 0}  }
	{ compZoneRowEnd int 32 regular {axi_slave 0}  }
	{ compZoneColStart int 32 regular {axi_slave 0}  }
	{ compZoneColEnd int 32 regular {axi_slave 0}  }
	{ moveStream int 512 regular {axi_s 1 volatile  { moveStream Data } }  }
	{ moveCount int 32 regular {axi_slave 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "atomLocations","offset": { "type": "dynamic","port_name": "atomLocations","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem5", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "imageProjs_local","offset": { "type": "dynamic","port_name": "imageProjs_local","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "imageProjs","offset": { "type": "dynamic","port_name": "imageProjs","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "imageProjs_local_size","offset": { "type": "dynamic","port_name": "imageProjs_local_size","bundle": "control"}}]}]} , 
 	{ "Name" : "gmem6", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "fullImage","offset": { "type": "dynamic","port_name": "fullImage","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem3", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "emissions","offset": { "type": "dynamic","port_name": "emissions","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gmem4", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "targetGeometry_mem","offset": { "type": "dynamic","port_name": "targetGeometry_mem","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "mode", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "emission_threshold", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "atomLocationsSize", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "projShape0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "projShape1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "atomLocations", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":67}} , 
 	{ "Name" : "psfSupersample", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":68}, "offset_end" : {"in":75}} , 
 	{ "Name" : "imageProjectionSize", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":83}} , 
 	{ "Name" : "imageProjs_local", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":84}, "offset_end" : {"in":95}} , 
 	{ "Name" : "imageProjs", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":96}, "offset_end" : {"in":107}} , 
 	{ "Name" : "imageProjs_local_size", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":108}, "offset_end" : {"in":119}} , 
 	{ "Name" : "fullImage", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":120}, "offset_end" : {"in":131}} , 
 	{ "Name" : "fullImage_rows", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":132}, "offset_end" : {"in":139}} , 
 	{ "Name" : "fullImage_cols", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":140}, "offset_end" : {"in":147}} , 
 	{ "Name" : "emissions", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":148}, "offset_end" : {"in":159}} , 
 	{ "Name" : "grid_rows", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":160}, "offset_end" : {"in":167}} , 
 	{ "Name" : "grid_cols", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":168}, "offset_end" : {"in":175}} , 
 	{ "Name" : "targetGeometry_mem", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":176}, "offset_end" : {"in":187}} , 
 	{ "Name" : "compZoneRowStart", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":188}, "offset_end" : {"in":195}} , 
 	{ "Name" : "compZoneRowEnd", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":196}, "offset_end" : {"in":203}} , 
 	{ "Name" : "compZoneColStart", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":204}, "offset_end" : {"in":211}} , 
 	{ "Name" : "compZoneColEnd", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":212}, "offset_end" : {"in":219}} , 
 	{ "Name" : "moveStream", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "moveCount", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":220}, "offset_end" : {"out":227}} ]}
# RTL Port declarations: 
set portNum 338
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem5_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem5_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem5_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem5_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem5_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem5_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem5_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem5_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem5_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem5_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem5_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem5_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem5_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem5_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem5_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem5_WDATA sc_out sc_lv 512 signal 1 } 
	{ m_axi_gmem5_WSTRB sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem5_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem5_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem5_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem5_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem5_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem5_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem5_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem5_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem5_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem5_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem5_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem5_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem5_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem5_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem5_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem5_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem5_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem5_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem5_RDATA sc_in sc_lv 512 signal 1 } 
	{ m_axi_gmem5_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem5_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem5_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem5_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem5_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem5_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem5_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem5_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem5_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem6_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem6_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem6_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem6_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem6_AWLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_gmem6_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem6_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem6_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem6_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem6_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem6_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem6_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem6_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem6_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem6_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem6_WDATA sc_out sc_lv 512 signal 4 } 
	{ m_axi_gmem6_WSTRB sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem6_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem6_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem6_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem6_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem6_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem6_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem6_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem6_ARLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_gmem6_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem6_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem6_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem6_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem6_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem6_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem6_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem6_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem6_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem6_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem6_RDATA sc_in sc_lv 512 signal 4 } 
	{ m_axi_gmem6_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem6_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem6_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem6_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem6_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem6_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem6_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem6_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem6_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem3_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem3_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem3_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_gmem3_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem3_AWLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_gmem3_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem3_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem3_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem3_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem3_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem3_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem3_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem3_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem3_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem3_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem3_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_gmem3_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem3_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem3_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem3_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem3_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem3_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem3_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_gmem3_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem3_ARLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_gmem3_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem3_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem3_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem3_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem3_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem3_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem3_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem3_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem3_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem3_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem3_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_gmem3_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem3_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem3_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem3_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_gmem3_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem3_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem3_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_gmem3_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem3_BUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem4_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem4_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem4_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem4_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem4_AWLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_gmem4_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem4_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem4_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem4_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem4_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem4_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem4_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem4_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem4_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem4_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem4_WDATA sc_out sc_lv 32 signal 6 } 
	{ m_axi_gmem4_WSTRB sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem4_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem4_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem4_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem4_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem4_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem4_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem4_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem4_ARLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_gmem4_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem4_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem4_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem4_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem4_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem4_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem4_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem4_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem4_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem4_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem4_RDATA sc_in sc_lv 32 signal 6 } 
	{ m_axi_gmem4_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem4_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem4_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem4_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem4_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem4_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem4_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem4_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem4_BUSER sc_in sc_lv 1 signal 6 } 
	{ moveStream_TDATA sc_out sc_lv 512 signal 29 } 
	{ moveStream_TVALID sc_out sc_logic 1 outvld 29 } 
	{ moveStream_TREADY sc_in sc_logic 1 outacc 29 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"atomflow_controller","role":"start","value":"0","valid_bit":"0"},{"name":"atomflow_controller","role":"continue","value":"0","valid_bit":"4"},{"name":"atomflow_controller","role":"auto_start","value":"0","valid_bit":"7"},{"name":"mode","role":"data","value":"16"},{"name":"emission_threshold","role":"data","value":"24"},{"name":"atomLocationsSize","role":"data","value":"32"},{"name":"projShape0","role":"data","value":"40"},{"name":"projShape1","role":"data","value":"48"},{"name":"atomLocations","role":"data","value":"56"},{"name":"psfSupersample","role":"data","value":"68"},{"name":"imageProjectionSize","role":"data","value":"76"},{"name":"imageProjs_local","role":"data","value":"84"},{"name":"imageProjs","role":"data","value":"96"},{"name":"imageProjs_local_size","role":"data","value":"108"},{"name":"fullImage","role":"data","value":"120"},{"name":"fullImage_rows","role":"data","value":"132"},{"name":"fullImage_cols","role":"data","value":"140"},{"name":"emissions","role":"data","value":"148"},{"name":"grid_rows","role":"data","value":"160"},{"name":"grid_cols","role":"data","value":"168"},{"name":"targetGeometry_mem","role":"data","value":"176"},{"name":"compZoneRowStart","role":"data","value":"188"},{"name":"compZoneRowEnd","role":"data","value":"196"},{"name":"compZoneColStart","role":"data","value":"204"},{"name":"compZoneColEnd","role":"data","value":"212"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"atomflow_controller","role":"start","value":"0","valid_bit":"0"},{"name":"atomflow_controller","role":"done","value":"0","valid_bit":"1"},{"name":"atomflow_controller","role":"idle","value":"0","valid_bit":"2"},{"name":"atomflow_controller","role":"ready","value":"0","valid_bit":"3"},{"name":"atomflow_controller","role":"auto_start","value":"0","valid_bit":"7"},{"name":"moveCount","role":"data","value":"220"}, {"name":"moveCount","role":"valid","value":"224","valid_bit":"0"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem5_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem5_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem5_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem5", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem5_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem5_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem5", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem5_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem5", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem5_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem5_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem5_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem5_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem5", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem5_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem5_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem5_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem5_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem5_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem5_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem5", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem5_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem5", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem5_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem5_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "WID" }} , 
 	{ "name": "m_axi_gmem5_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem5_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem5_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem5_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem5", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem5_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem5_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem5", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem5_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem5", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem5_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem5_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem5_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem5_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem5", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem5_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem5_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem5_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem5_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem5_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem5_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem5", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem5_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem5_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "RID" }} , 
 	{ "name": "m_axi_gmem5_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem5_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem5_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem5_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem5_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem5_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "BID" }} , 
 	{ "name": "m_axi_gmem5_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WID" }} , 
 	{ "name": "m_axi_gmem2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RID" }} , 
 	{ "name": "m_axi_gmem2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem6_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem6_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem6_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem6", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem6_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem6_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem6", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem6_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem6", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem6_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem6_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem6_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem6_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem6", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem6_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem6_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem6_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem6_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem6_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem6_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem6", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem6_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem6", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem6_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem6_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "WID" }} , 
 	{ "name": "m_axi_gmem6_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem6_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem6_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem6_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem6", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem6_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem6_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem6", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem6_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem6", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem6_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem6_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem6_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem6_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem6", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem6_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem6_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem6_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem6_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem6_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem6_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem6", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem6_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem6_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "RID" }} , 
 	{ "name": "m_axi_gmem6_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem6_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem6_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem6_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem6_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem6_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "BID" }} , 
 	{ "name": "m_axi_gmem6_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WID" }} , 
 	{ "name": "m_axi_gmem3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RID" }} , 
 	{ "name": "m_axi_gmem3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BID" }} , 
 	{ "name": "m_axi_gmem3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem4", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem4_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem4", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem4_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem4_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem4_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem4_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem4", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem4_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem4_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem4_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem4_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem4_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem4", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "WID" }} , 
 	{ "name": "m_axi_gmem4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem4", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem4_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem4", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem4_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem4_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem4_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem4_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem4", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem4_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem4_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem4_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem4_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem4_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem4", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "RID" }} , 
 	{ "name": "m_axi_gmem4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "BID" }} , 
 	{ "name": "m_axi_gmem4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "BUSER" }} , 
 	{ "name": "moveStream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "moveStream", "role": "TDATA" }} , 
 	{ "name": "moveStream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "moveStream", "role": "TVALID" }} , 
 	{ "name": "moveStream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "moveStream", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "292", "295", "297", "299", "312", "322", "543", "544", "545", "546", "547", "548", "549", "550"],
		"CDFG" : "atomflow_controller",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "182519", "EstimateLatencyMax" : "10196505",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_reconstruct_fu_404", "Port" : "gmem0", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "gmem5", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_reconstruct_fu_404", "Port" : "gmem5", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem6", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_reconstruct_fu_404", "Port" : "gmem6", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem3_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem3_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "292", "SubInstance" : "grp_atomflow_controller_Pipeline_VITIS_LOOP_136_1_fu_434", "Port" : "gmem3", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "gmem4", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "312", "SubInstance" : "grp_load_target_geometry_fu_477", "Port" : "gmem4", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "emission_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "atomLocationsSize", "Type" : "None", "Direction" : "I"},
			{"Name" : "projShape0", "Type" : "None", "Direction" : "I"},
			{"Name" : "projShape1", "Type" : "None", "Direction" : "I"},
			{"Name" : "atomLocations", "Type" : "None", "Direction" : "I"},
			{"Name" : "psfSupersample", "Type" : "None", "Direction" : "I"},
			{"Name" : "imageProjectionSize", "Type" : "None", "Direction" : "I"},
			{"Name" : "imageProjs_local", "Type" : "None", "Direction" : "I"},
			{"Name" : "imageProjs", "Type" : "None", "Direction" : "I"},
			{"Name" : "imageProjs_local_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "fullImage", "Type" : "None", "Direction" : "I"},
			{"Name" : "fullImage_rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "fullImage_cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "emissions", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "targetGeometry_mem", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneRowStart", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneRowEnd", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneColStart", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneColEnd", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveStream", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "322", "SubInstance" : "grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487", "Port" : "moveStream", "Inst_start_state" : "23", "Inst_end_state" : "24"}]},
			{"Name" : "moveCount", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mask_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_reconstruct_fu_404", "Port" : "mask_table", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "one_half_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_reconstruct_fu_404", "Port" : "one_half_table", "Inst_start_state" : "10", "Inst_end_state" : "11"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.emissions_local_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.emissions_local_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.emissions_local_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.emissions_local_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.emissions_local_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.emissions_local_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.emissions_local_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.emissions_local_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stateArray_data_s_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.targetGeometry_data_s_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "reconstruct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "182496", "EstimateLatencyMax" : "182496",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "12", "Name" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0"}],
		"OutputProcess" : [
			{"ID" : "12", "Name" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0"}],
		"Port" : [
			{"Name" : "atomLocationsSize", "Type" : "None", "Direction" : "I"},
			{"Name" : "projShape0", "Type" : "None", "Direction" : "I"},
			{"Name" : "projShape1", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "gmem0"}]},
			{"Name" : "atomLocations", "Type" : "None", "Direction" : "I"},
			{"Name" : "psfSupersample", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem5", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "gmem5"}]},
			{"Name" : "imageProjs_local", "Type" : "None", "Direction" : "I"},
			{"Name" : "imageProjs_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem6", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "gmem6"}]},
			{"Name" : "fullImage", "Type" : "None", "Direction" : "I"},
			{"Name" : "emissions_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "emissions_0"}]},
			{"Name" : "emissions_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "emissions_1"}]},
			{"Name" : "emissions_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "emissions_2"}]},
			{"Name" : "emissions_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "emissions_3"}]},
			{"Name" : "emissions_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "emissions_4"}]},
			{"Name" : "emissions_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "emissions_5"}]},
			{"Name" : "emissions_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "emissions_6"}]},
			{"Name" : "emissions_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "emissions_7"}]},
			{"Name" : "mask_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "mask_table"}]},
			{"Name" : "one_half_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "one_half_table"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_241_1", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "has_continue" : "1"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Parent" : "11", "Child" : ["13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "89", "93", "282", "286", "287", "288", "289", "290", "291"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_241_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "207", "EstimateLatencyMax" : "207",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "75", "Name" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_1_U0"},
			{"ID" : "76", "Name" : "getLocalImages_single_U0"},
			{"ID" : "89", "Name" : "Image_extract_next_U0"}],
		"OutputProcess" : [
			{"ID" : "282", "Name" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0"}],
		"Port" : [
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "psfSupersample", "Type" : "None", "Direction" : "I"},
			{"Name" : "projShape0", "Type" : "None", "Direction" : "I"},
			{"Name" : "projShape1", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "getLocalImages_single_U0", "Port" : "gmem0"}]},
			{"Name" : "atomLocations", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem6", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "Image_extract_next_U0", "Port" : "gmem6"}]},
			{"Name" : "fullImage", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem5", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "Image_extract_next_U0", "Port" : "gmem5"}]},
			{"Name" : "imageProjs_local", "Type" : "None", "Direction" : "I"},
			{"Name" : "imageProjs_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "emissions_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "282", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0", "Port" : "emissions_0"}]},
			{"Name" : "emissions_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "282", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0", "Port" : "emissions_1"}]},
			{"Name" : "emissions_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "282", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0", "Port" : "emissions_2"}]},
			{"Name" : "emissions_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "282", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0", "Port" : "emissions_3"}]},
			{"Name" : "emissions_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "282", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0", "Port" : "emissions_4"}]},
			{"Name" : "emissions_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "282", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0", "Port" : "emissions_5"}]},
			{"Name" : "emissions_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "282", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0", "Port" : "emissions_6"}]},
			{"Name" : "emissions_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "282", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0", "Port" : "emissions_7"}]},
			{"Name" : "mask_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "getLocalImages_single_U0", "Port" : "mask_table"}]},
			{"Name" : "one_half_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "getLocalImages_single_U0", "Port" : "one_half_table"}]}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_1_182_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_2_183_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_3_184_U", "Parent" : "12"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_4_185_U", "Parent" : "12"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_5_186_U", "Parent" : "12"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_6_187_U", "Parent" : "12"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_7_188_U", "Parent" : "12"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_8_189_U", "Parent" : "12"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_9_190_U", "Parent" : "12"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_10_191_U", "Parent" : "12"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_11_192_U", "Parent" : "12"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_12_193_U", "Parent" : "12"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_13_194_U", "Parent" : "12"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_14_195_U", "Parent" : "12"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_15_U", "Parent" : "12"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_14_U", "Parent" : "12"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_13_U", "Parent" : "12"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_12_U", "Parent" : "12"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_11_U", "Parent" : "12"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_10_U", "Parent" : "12"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_9_U", "Parent" : "12"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_8_U", "Parent" : "12"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_7_U", "Parent" : "12"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_6_U", "Parent" : "12"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_5_U", "Parent" : "12"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_4_U", "Parent" : "12"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_3_U", "Parent" : "12"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_2_U", "Parent" : "12"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_1_U", "Parent" : "12"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_16_U", "Parent" : "12"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_U", "Parent" : "12"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_1_196_U", "Parent" : "12"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_2_197_U", "Parent" : "12"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_3_198_U", "Parent" : "12"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_4_199_U", "Parent" : "12"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_5_200_U", "Parent" : "12"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_6_201_U", "Parent" : "12"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_7_202_U", "Parent" : "12"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_8_203_U", "Parent" : "12"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_9_204_U", "Parent" : "12"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_10_205_U", "Parent" : "12"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_11_206_U", "Parent" : "12"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_12_207_U", "Parent" : "12"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_13_208_U", "Parent" : "12"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_14_209_U", "Parent" : "12"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_15_U", "Parent" : "12"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_14_U", "Parent" : "12"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_13_U", "Parent" : "12"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_12_U", "Parent" : "12"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_11_U", "Parent" : "12"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_10_U", "Parent" : "12"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_9_U", "Parent" : "12"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_8_U", "Parent" : "12"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_7_U", "Parent" : "12"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_6_U", "Parent" : "12"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_5_U", "Parent" : "12"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_4_U", "Parent" : "12"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_3_U", "Parent" : "12"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_2_U", "Parent" : "12"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_1_U", "Parent" : "12"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_16_U", "Parent" : "12"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_1_U0", "Parent" : "12",
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0", "Parent" : "12", "Child" : ["77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88"],
		"CDFG" : "getLocalImages_single",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "curr_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "psfSupersample", "Type" : "None", "Direction" : "I"},
			{"Name" : "projShape0", "Type" : "None", "Direction" : "I"},
			{"Name" : "projShape1", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "atomLocations", "Type" : "None", "Direction" : "I"},
			{"Name" : "localImages", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["89"], "DependentChan" : "288", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "localImages_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mask_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "one_half_table", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.mask_table_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.one_half_table_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.fsub_32ns_32ns_32_4_full_dsp_1_U2", "Parent" : "76"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.fsub_32ns_32ns_32_4_full_dsp_1_U3", "Parent" : "76"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.fmul_32ns_32ns_32_3_max_dsp_1_U4", "Parent" : "76"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.fmul_32ns_32ns_32_3_max_dsp_1_U5", "Parent" : "76"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.sitofp_32ns_32_4_no_dsp_1_U6", "Parent" : "76"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.sitofp_32ns_32_4_no_dsp_1_U7", "Parent" : "76"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.sparsemux_7_2_32_1_1_U8", "Parent" : "76"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.sparsemux_7_2_32_1_1_U9", "Parent" : "76"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.sparsemux_7_2_32_1_1_U10", "Parent" : "76"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.sparsemux_7_2_32_1_1_U11", "Parent" : "76"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.Image_extract_next_U0", "Parent" : "12", "Child" : ["90"],
		"CDFG" : "Image_extract_next",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "113", "EstimateLatencyMax" : "113",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "localImages", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "288", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "localImages_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem6", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "gmem6", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "fullImage", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_fullImage_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "74",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "73",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_2", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "72",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_2", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_3", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "71",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_3", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_4", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "70",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_5", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "69",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_5", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_6", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "68",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_6", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_7", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "67",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_7", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_8", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "66",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_8", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_9", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "65",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_9", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_10", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "64",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_10", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_11", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "63",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_11", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_12", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "62",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_12", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_13", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "61",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_13", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_14", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "60",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_14", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_15", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "59",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_15", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_16", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "58",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_16", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_17", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "57",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_17", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_18", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "56",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_18", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_19", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "55",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_19", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_20", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "54",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_20", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_21", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "53",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_21", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_22", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "52",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_22", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_23", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "51",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_23", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_24", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "50",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_24", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_25", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "49",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_25", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_26", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "48",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_26", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_27", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "47",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_27", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_28", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "46",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_28", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_29", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "45",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_29", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_30", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "44",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_30", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "gmem5", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem5_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "gmem5", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "imageProjs_local", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_localImage_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "43",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "42",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_2", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "41",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_2", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_3", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "40",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_3", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_4", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "39",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_5", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "38",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_5", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_6", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "37",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_6", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_7", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "36",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_7", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_8", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "35",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_8", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_9", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "34",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_9", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_10", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "33",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_10", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_11", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "32",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_11", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_12", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "31",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_12", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_13", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "30",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_13", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_14", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "29",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_14", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_15", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "28",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_15", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_16", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "27",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_16", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_17", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "26",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_17", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_18", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "25",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_18", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_19", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "24",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_19", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_20", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "23",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_20", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_21", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "22",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_21", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_22", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "21",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_22", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_23", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "20",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_23", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_24", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "19",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_24", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_25", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "18",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_25", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_26", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "17",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_26", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_27", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "16",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_27", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_28", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "15",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_28", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_29", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "14",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_29", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_30", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["93"], "DependentChan" : "13",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_30", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_imageProjs_write", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.Image_extract_next_U0.grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Parent" : "89", "Child" : ["91", "92"],
		"CDFG" : "Image_extract_next_Pipeline_VITIS_LOOP_95_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "104", "EstimateLatencyMax" : "104",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "curr_fullImage_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_fullImage_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "curr_localImage_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trunc_ln48", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_info_X_min", "Type" : "None", "Direction" : "I"},
			{"Name" : "fullImage", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem6", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem6_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem6_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "gmem5", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem5_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln95", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_95_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.Image_extract_next_U0.grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225.partselect_1024ns_1536ns_32ns_1024_1_1_U25", "Parent" : "90"},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.Image_extract_next_U0.grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225.flow_control_loop_pipe_sequential_init_U", "Parent" : "90"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0", "Parent" : "12", "Child" : ["94", "186", "278", "279", "280", "281"],
		"CDFG" : "matrix_sum_prod",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "16",
		"VariableLatency" : "0", "ExactLatency" : "59", "EstimateLatencyMin" : "59", "EstimateLatencyMax" : "59",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mat_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "43"},
			{"Name" : "mat_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "42"},
			{"Name" : "mat_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "41"},
			{"Name" : "mat_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "40"},
			{"Name" : "mat_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "39"},
			{"Name" : "mat_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "38"},
			{"Name" : "mat_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "37"},
			{"Name" : "mat_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "36"},
			{"Name" : "mat_8", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "35"},
			{"Name" : "mat_9", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "34"},
			{"Name" : "mat_10", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "33"},
			{"Name" : "mat_11", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "32"},
			{"Name" : "mat_12", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "31"},
			{"Name" : "mat_13", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "30"},
			{"Name" : "mat_14", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "29"},
			{"Name" : "mat_15", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "28"},
			{"Name" : "mat_16", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "27"},
			{"Name" : "mat_17", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "26"},
			{"Name" : "mat_18", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "25"},
			{"Name" : "mat_19", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "24"},
			{"Name" : "mat_20", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "23"},
			{"Name" : "mat_21", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "22"},
			{"Name" : "mat_22", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "21"},
			{"Name" : "mat_23", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "20"},
			{"Name" : "mat_24", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "19"},
			{"Name" : "mat_25", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "18"},
			{"Name" : "mat_26", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "17"},
			{"Name" : "mat_27", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "16"},
			{"Name" : "mat_28", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "15"},
			{"Name" : "mat_29", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "14"},
			{"Name" : "mat_30", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "13"},
			{"Name" : "mat1_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "74"},
			{"Name" : "mat1_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "73"},
			{"Name" : "mat1_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "72"},
			{"Name" : "mat1_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "71"},
			{"Name" : "mat1_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "70"},
			{"Name" : "mat1_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "69"},
			{"Name" : "mat1_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "68"},
			{"Name" : "mat1_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "67"},
			{"Name" : "mat1_8", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "66"},
			{"Name" : "mat1_9", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "65"},
			{"Name" : "mat1_10", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "64"},
			{"Name" : "mat1_11", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "63"},
			{"Name" : "mat1_12", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "62"},
			{"Name" : "mat1_13", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "61"},
			{"Name" : "mat1_14", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "60"},
			{"Name" : "mat1_15", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "59"},
			{"Name" : "mat1_16", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "58"},
			{"Name" : "mat1_17", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "57"},
			{"Name" : "mat1_18", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "56"},
			{"Name" : "mat1_19", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "55"},
			{"Name" : "mat1_20", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "54"},
			{"Name" : "mat1_21", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "53"},
			{"Name" : "mat1_22", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "52"},
			{"Name" : "mat1_23", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "51"},
			{"Name" : "mat1_24", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "50"},
			{"Name" : "mat1_25", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "49"},
			{"Name" : "mat1_26", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "48"},
			{"Name" : "mat1_27", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "47"},
			{"Name" : "mat1_28", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "46"},
			{"Name" : "mat1_29", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "45"},
			{"Name" : "mat1_30", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "44"}]},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054", "Parent" : "93", "Child" : ["95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185"],
		"CDFG" : "vector_sum_prod",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "22", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read51", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read52", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read53", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read54", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read55", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read56", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read57", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read60", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read61", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U163", "Parent" : "94"},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U164", "Parent" : "94"},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U165", "Parent" : "94"},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U166", "Parent" : "94"},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U167", "Parent" : "94"},
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U168", "Parent" : "94"},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U169", "Parent" : "94"},
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U170", "Parent" : "94"},
	{"ID" : "103", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U171", "Parent" : "94"},
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U172", "Parent" : "94"},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U173", "Parent" : "94"},
	{"ID" : "106", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U174", "Parent" : "94"},
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U175", "Parent" : "94"},
	{"ID" : "108", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U176", "Parent" : "94"},
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U177", "Parent" : "94"},
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U178", "Parent" : "94"},
	{"ID" : "111", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U179", "Parent" : "94"},
	{"ID" : "112", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U180", "Parent" : "94"},
	{"ID" : "113", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U181", "Parent" : "94"},
	{"ID" : "114", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U182", "Parent" : "94"},
	{"ID" : "115", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U183", "Parent" : "94"},
	{"ID" : "116", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U184", "Parent" : "94"},
	{"ID" : "117", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U185", "Parent" : "94"},
	{"ID" : "118", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U186", "Parent" : "94"},
	{"ID" : "119", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U187", "Parent" : "94"},
	{"ID" : "120", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U188", "Parent" : "94"},
	{"ID" : "121", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U189", "Parent" : "94"},
	{"ID" : "122", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U190", "Parent" : "94"},
	{"ID" : "123", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U191", "Parent" : "94"},
	{"ID" : "124", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U192", "Parent" : "94"},
	{"ID" : "125", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U193", "Parent" : "94"},
	{"ID" : "126", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U194", "Parent" : "94"},
	{"ID" : "127", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U195", "Parent" : "94"},
	{"ID" : "128", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U196", "Parent" : "94"},
	{"ID" : "129", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U197", "Parent" : "94"},
	{"ID" : "130", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U198", "Parent" : "94"},
	{"ID" : "131", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U199", "Parent" : "94"},
	{"ID" : "132", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U200", "Parent" : "94"},
	{"ID" : "133", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U201", "Parent" : "94"},
	{"ID" : "134", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U202", "Parent" : "94"},
	{"ID" : "135", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U203", "Parent" : "94"},
	{"ID" : "136", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U204", "Parent" : "94"},
	{"ID" : "137", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U205", "Parent" : "94"},
	{"ID" : "138", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U206", "Parent" : "94"},
	{"ID" : "139", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U207", "Parent" : "94"},
	{"ID" : "140", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U208", "Parent" : "94"},
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U209", "Parent" : "94"},
	{"ID" : "142", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U210", "Parent" : "94"},
	{"ID" : "143", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U211", "Parent" : "94"},
	{"ID" : "144", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U212", "Parent" : "94"},
	{"ID" : "145", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U213", "Parent" : "94"},
	{"ID" : "146", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U214", "Parent" : "94"},
	{"ID" : "147", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U215", "Parent" : "94"},
	{"ID" : "148", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U216", "Parent" : "94"},
	{"ID" : "149", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U217", "Parent" : "94"},
	{"ID" : "150", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U218", "Parent" : "94"},
	{"ID" : "151", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U219", "Parent" : "94"},
	{"ID" : "152", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U220", "Parent" : "94"},
	{"ID" : "153", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U221", "Parent" : "94"},
	{"ID" : "154", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U222", "Parent" : "94"},
	{"ID" : "155", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U223", "Parent" : "94"},
	{"ID" : "156", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U224", "Parent" : "94"},
	{"ID" : "157", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U225", "Parent" : "94"},
	{"ID" : "158", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U226", "Parent" : "94"},
	{"ID" : "159", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U227", "Parent" : "94"},
	{"ID" : "160", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U228", "Parent" : "94"},
	{"ID" : "161", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U229", "Parent" : "94"},
	{"ID" : "162", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U230", "Parent" : "94"},
	{"ID" : "163", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U231", "Parent" : "94"},
	{"ID" : "164", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U232", "Parent" : "94"},
	{"ID" : "165", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U233", "Parent" : "94"},
	{"ID" : "166", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U234", "Parent" : "94"},
	{"ID" : "167", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U235", "Parent" : "94"},
	{"ID" : "168", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U236", "Parent" : "94"},
	{"ID" : "169", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U237", "Parent" : "94"},
	{"ID" : "170", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U238", "Parent" : "94"},
	{"ID" : "171", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U239", "Parent" : "94"},
	{"ID" : "172", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U240", "Parent" : "94"},
	{"ID" : "173", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U241", "Parent" : "94"},
	{"ID" : "174", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U242", "Parent" : "94"},
	{"ID" : "175", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U243", "Parent" : "94"},
	{"ID" : "176", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U244", "Parent" : "94"},
	{"ID" : "177", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U245", "Parent" : "94"},
	{"ID" : "178", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U246", "Parent" : "94"},
	{"ID" : "179", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U247", "Parent" : "94"},
	{"ID" : "180", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U248", "Parent" : "94"},
	{"ID" : "181", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U249", "Parent" : "94"},
	{"ID" : "182", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U250", "Parent" : "94"},
	{"ID" : "183", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U251", "Parent" : "94"},
	{"ID" : "184", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U252", "Parent" : "94"},
	{"ID" : "185", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U253", "Parent" : "94"},
	{"ID" : "186", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120", "Parent" : "93", "Child" : ["187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277"],
		"CDFG" : "vector_sum_prod",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "22", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read51", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read52", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read53", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read54", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read55", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read56", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read57", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read60", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read61", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "187", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U163", "Parent" : "186"},
	{"ID" : "188", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U164", "Parent" : "186"},
	{"ID" : "189", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U165", "Parent" : "186"},
	{"ID" : "190", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U166", "Parent" : "186"},
	{"ID" : "191", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U167", "Parent" : "186"},
	{"ID" : "192", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U168", "Parent" : "186"},
	{"ID" : "193", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U169", "Parent" : "186"},
	{"ID" : "194", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U170", "Parent" : "186"},
	{"ID" : "195", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U171", "Parent" : "186"},
	{"ID" : "196", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U172", "Parent" : "186"},
	{"ID" : "197", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U173", "Parent" : "186"},
	{"ID" : "198", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U174", "Parent" : "186"},
	{"ID" : "199", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U175", "Parent" : "186"},
	{"ID" : "200", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U176", "Parent" : "186"},
	{"ID" : "201", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U177", "Parent" : "186"},
	{"ID" : "202", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U178", "Parent" : "186"},
	{"ID" : "203", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U179", "Parent" : "186"},
	{"ID" : "204", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U180", "Parent" : "186"},
	{"ID" : "205", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U181", "Parent" : "186"},
	{"ID" : "206", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U182", "Parent" : "186"},
	{"ID" : "207", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U183", "Parent" : "186"},
	{"ID" : "208", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U184", "Parent" : "186"},
	{"ID" : "209", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U185", "Parent" : "186"},
	{"ID" : "210", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U186", "Parent" : "186"},
	{"ID" : "211", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U187", "Parent" : "186"},
	{"ID" : "212", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U188", "Parent" : "186"},
	{"ID" : "213", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U189", "Parent" : "186"},
	{"ID" : "214", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U190", "Parent" : "186"},
	{"ID" : "215", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U191", "Parent" : "186"},
	{"ID" : "216", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U192", "Parent" : "186"},
	{"ID" : "217", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U193", "Parent" : "186"},
	{"ID" : "218", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U194", "Parent" : "186"},
	{"ID" : "219", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U195", "Parent" : "186"},
	{"ID" : "220", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U196", "Parent" : "186"},
	{"ID" : "221", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U197", "Parent" : "186"},
	{"ID" : "222", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U198", "Parent" : "186"},
	{"ID" : "223", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U199", "Parent" : "186"},
	{"ID" : "224", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U200", "Parent" : "186"},
	{"ID" : "225", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U201", "Parent" : "186"},
	{"ID" : "226", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U202", "Parent" : "186"},
	{"ID" : "227", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U203", "Parent" : "186"},
	{"ID" : "228", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U204", "Parent" : "186"},
	{"ID" : "229", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U205", "Parent" : "186"},
	{"ID" : "230", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U206", "Parent" : "186"},
	{"ID" : "231", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U207", "Parent" : "186"},
	{"ID" : "232", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U208", "Parent" : "186"},
	{"ID" : "233", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U209", "Parent" : "186"},
	{"ID" : "234", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U210", "Parent" : "186"},
	{"ID" : "235", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U211", "Parent" : "186"},
	{"ID" : "236", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U212", "Parent" : "186"},
	{"ID" : "237", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U213", "Parent" : "186"},
	{"ID" : "238", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U214", "Parent" : "186"},
	{"ID" : "239", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U215", "Parent" : "186"},
	{"ID" : "240", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U216", "Parent" : "186"},
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U217", "Parent" : "186"},
	{"ID" : "242", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U218", "Parent" : "186"},
	{"ID" : "243", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U219", "Parent" : "186"},
	{"ID" : "244", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U220", "Parent" : "186"},
	{"ID" : "245", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U221", "Parent" : "186"},
	{"ID" : "246", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U222", "Parent" : "186"},
	{"ID" : "247", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U223", "Parent" : "186"},
	{"ID" : "248", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U224", "Parent" : "186"},
	{"ID" : "249", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U225", "Parent" : "186"},
	{"ID" : "250", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U226", "Parent" : "186"},
	{"ID" : "251", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U227", "Parent" : "186"},
	{"ID" : "252", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U228", "Parent" : "186"},
	{"ID" : "253", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U229", "Parent" : "186"},
	{"ID" : "254", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U230", "Parent" : "186"},
	{"ID" : "255", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U231", "Parent" : "186"},
	{"ID" : "256", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U232", "Parent" : "186"},
	{"ID" : "257", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U233", "Parent" : "186"},
	{"ID" : "258", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U234", "Parent" : "186"},
	{"ID" : "259", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U235", "Parent" : "186"},
	{"ID" : "260", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U236", "Parent" : "186"},
	{"ID" : "261", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U237", "Parent" : "186"},
	{"ID" : "262", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U238", "Parent" : "186"},
	{"ID" : "263", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U239", "Parent" : "186"},
	{"ID" : "264", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U240", "Parent" : "186"},
	{"ID" : "265", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U241", "Parent" : "186"},
	{"ID" : "266", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U242", "Parent" : "186"},
	{"ID" : "267", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U243", "Parent" : "186"},
	{"ID" : "268", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U244", "Parent" : "186"},
	{"ID" : "269", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U245", "Parent" : "186"},
	{"ID" : "270", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U246", "Parent" : "186"},
	{"ID" : "271", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U247", "Parent" : "186"},
	{"ID" : "272", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U248", "Parent" : "186"},
	{"ID" : "273", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U249", "Parent" : "186"},
	{"ID" : "274", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U250", "Parent" : "186"},
	{"ID" : "275", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U251", "Parent" : "186"},
	{"ID" : "276", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U252", "Parent" : "186"},
	{"ID" : "277", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U253", "Parent" : "186"},
	{"ID" : "278", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.fadd_32ns_32ns_32_4_full_dsp_0_U317", "Parent" : "93"},
	{"ID" : "279", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.fadd_32ns_32ns_32_4_full_dsp_0_U318", "Parent" : "93"},
	{"ID" : "280", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.fadd_32ns_32ns_32_4_full_dsp_0_U319", "Parent" : "93"},
	{"ID" : "281", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.fadd_32ns_32ns_32_4_full_dsp_0_U320", "Parent" : "93"},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0", "Parent" : "12", "Child" : ["283"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["75"], "DependentChan" : "287", "DependentChanDepth" : "7", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["93"], "DependentChan" : "290", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["93"], "DependentChan" : "291", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "289", "DependentChanDepth" : "6", "DependentChanType" : "1"},
			{"Name" : "emissions_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["75"], "DependentChan" : "286", "DependentChanDepth" : "7", "DependentChanType" : "1"},
			{"Name" : "emissions_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "emissions_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "emissions_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "emissions_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "emissions_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "emissions_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "emissions_7", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "283", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0.grp_post_process_fu_176", "Parent" : "282", "Child" : ["284", "285"],
		"CDFG" : "post_process",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "11", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "projSumUsed", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_imageProjs", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "284", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0.grp_post_process_fu_176.fmul_32ns_32ns_32_3_max_dsp_1_U383", "Parent" : "283"},
	{"ID" : "285", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0.grp_post_process_fu_176.fdiv_32ns_32ns_32_9_no_dsp_0_U384", "Parent" : "283"},
	{"ID" : "286", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.p_loc_channel_U", "Parent" : "12"},
	{"ID" : "287", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.p_loc1_channel_U", "Parent" : "12"},
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.localImages_U", "Parent" : "12"},
	{"ID" : "289", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_imageProjs_U", "Parent" : "12"},
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.projSumUsed_U", "Parent" : "12"},
	{"ID" : "291", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_fu_404.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.sum_U", "Parent" : "12"},
	{"ID" : "292", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_atomflow_controller_Pipeline_VITIS_LOOP_136_1_fu_434", "Parent" : "0", "Child" : ["293", "294"],
		"CDFG" : "atomflow_controller_Pipeline_VITIS_LOOP_136_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "2003",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem3_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "atomLocationsSize", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln136", "Type" : "None", "Direction" : "I"},
			{"Name" : "emissions_local", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emissions_local_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emissions_local_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emissions_local_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emissions_local_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emissions_local_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emissions_local_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emissions_local_7", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_136_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atomflow_controller_Pipeline_VITIS_LOOP_136_1_fu_434.sparsemux_17_3_32_1_1_U447", "Parent" : "292"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atomflow_controller_Pipeline_VITIS_LOOP_136_1_fu_434.flow_control_loop_pipe_sequential_init_U", "Parent" : "292"},
	{"ID" : "295", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_atomflow_controller_Pipeline_VITIS_LOOP_231_1_fu_450", "Parent" : "0", "Child" : ["296"],
		"CDFG" : "atomflow_controller_Pipeline_VITIS_LOOP_231_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1026", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stateArray_data_s", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_231_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atomflow_controller_Pipeline_VITIS_LOOP_231_1_fu_450.flow_control_loop_pipe_sequential_init_U", "Parent" : "295"},
	{"ID" : "297", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_atomflow_controller_Pipeline_VITIS_LOOP_231_17_fu_455", "Parent" : "0", "Child" : ["298"],
		"CDFG" : "atomflow_controller_Pipeline_VITIS_LOOP_231_17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1026", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "targetGeometry_data_s", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_231_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atomflow_controller_Pipeline_VITIS_LOOP_231_17_fu_455.flow_control_loop_pipe_sequential_init_U", "Parent" : "297"},
	{"ID" : "299", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_emissions_to_statearray_fu_460", "Parent" : "0", "Child" : ["300", "302", "304", "311"],
		"CDFG" : "emissions_to_statearray",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "4096",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "emissions_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "grp_emissions_to_statearray_Pipeline_VITIS_LOOP_20_1_fu_84", "Port" : "emissions_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "emissions_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "grp_emissions_to_statearray_Pipeline_VITIS_LOOP_20_1_fu_84", "Port" : "emissions_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "emissions_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "grp_emissions_to_statearray_Pipeline_VITIS_LOOP_20_1_fu_84", "Port" : "emissions_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "emissions_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "grp_emissions_to_statearray_Pipeline_VITIS_LOOP_20_1_fu_84", "Port" : "emissions_3", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "emissions_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "grp_emissions_to_statearray_Pipeline_VITIS_LOOP_20_1_fu_84", "Port" : "emissions_4", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "emissions_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "grp_emissions_to_statearray_Pipeline_VITIS_LOOP_20_1_fu_84", "Port" : "emissions_5", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "emissions_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "grp_emissions_to_statearray_Pipeline_VITIS_LOOP_20_1_fu_84", "Port" : "emissions_6", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "emissions_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "grp_emissions_to_statearray_Pipeline_VITIS_LOOP_20_1_fu_84", "Port" : "emissions_7", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "atomLocationsSize", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_rows_write", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_cols_write", "Type" : "None", "Direction" : "I"},
			{"Name" : "threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_data_s", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "grp_emissions_to_statearray_Pipeline_VITIS_LOOP_342_1_fu_70", "Port" : "stateArray_data_s", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "302", "SubInstance" : "grp_emissions_to_statearray_Pipeline_VITIS_LOOP_348_2_fu_77", "Port" : "stateArray_data_s", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "304", "SubInstance" : "grp_emissions_to_statearray_Pipeline_VITIS_LOOP_20_1_fu_84", "Port" : "stateArray_data_s", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_emissions_to_statearray_fu_460.grp_emissions_to_statearray_Pipeline_VITIS_LOOP_342_1_fu_70", "Parent" : "299", "Child" : ["301"],
		"CDFG" : "emissions_to_statearray_Pipeline_VITIS_LOOP_342_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "i_145", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_data_s", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_342_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "301", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_emissions_to_statearray_fu_460.grp_emissions_to_statearray_Pipeline_VITIS_LOOP_342_1_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "300"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_emissions_to_statearray_fu_460.grp_emissions_to_statearray_Pipeline_VITIS_LOOP_348_2_fu_77", "Parent" : "299", "Child" : ["303"],
		"CDFG" : "emissions_to_statearray_Pipeline_VITIS_LOOP_348_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_data_s", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_348_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "303", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_emissions_to_statearray_fu_460.grp_emissions_to_statearray_Pipeline_VITIS_LOOP_348_2_fu_77.flow_control_loop_pipe_sequential_init_U", "Parent" : "302"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_emissions_to_statearray_fu_460.grp_emissions_to_statearray_Pipeline_VITIS_LOOP_20_1_fu_84", "Parent" : "299", "Child" : ["305", "306", "307", "308", "309", "310"],
		"CDFG" : "emissions_to_statearray_Pipeline_VITIS_LOOP_20_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "40", "EstimateLatencyMax" : "2039",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "atomLocationsSize", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_cols_write", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_rows_write", "Type" : "None", "Direction" : "I"},
			{"Name" : "emissions_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emissions_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emissions_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emissions_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emissions_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emissions_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emissions_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emissions_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bitcast_ln25_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_152", "Type" : "None", "Direction" : "I"},
			{"Name" : "threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_data_s", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter38", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter38", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "305", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_emissions_to_statearray_fu_460.grp_emissions_to_statearray_Pipeline_VITIS_LOOP_20_1_fu_84.fcmp_32ns_32ns_1_2_no_dsp_1_U465", "Parent" : "304"},
	{"ID" : "306", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_emissions_to_statearray_fu_460.grp_emissions_to_statearray_Pipeline_VITIS_LOOP_20_1_fu_84.sdiv_32ns_32ns_32_36_1_U466", "Parent" : "304"},
	{"ID" : "307", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_emissions_to_statearray_fu_460.grp_emissions_to_statearray_Pipeline_VITIS_LOOP_20_1_fu_84.srem_32ns_32ns_10_36_1_U467", "Parent" : "304"},
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_emissions_to_statearray_fu_460.grp_emissions_to_statearray_Pipeline_VITIS_LOOP_20_1_fu_84.sparsemux_17_3_32_1_1_U468", "Parent" : "304"},
	{"ID" : "309", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_emissions_to_statearray_fu_460.grp_emissions_to_statearray_Pipeline_VITIS_LOOP_20_1_fu_84.mac_muladd_10s_10s_10ns_10_4_1_U469", "Parent" : "304"},
	{"ID" : "310", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_emissions_to_statearray_fu_460.grp_emissions_to_statearray_Pipeline_VITIS_LOOP_20_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "304"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_emissions_to_statearray_fu_460.mul_32s_32s_64_1_1_U490", "Parent" : "299"},
	{"ID" : "312", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_load_target_geometry_fu_477", "Parent" : "0", "Child" : ["313", "315", "317", "320", "321"],
		"CDFG" : "load_target_geometry",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "3093",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem4", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "317", "SubInstance" : "grp_load_target_geometry_Pipeline_VITIS_LOOP_42_1_VITIS_LOOP_44_2_fu_80", "Port" : "gmem4", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "targetGeometry_mem", "Type" : "None", "Direction" : "I"},
			{"Name" : "targetGeometry_rows_write", "Type" : "None", "Direction" : "I"},
			{"Name" : "targetGeometry_cols_write", "Type" : "None", "Direction" : "I"},
			{"Name" : "targetGeometry_data_s", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_load_target_geometry_Pipeline_VITIS_LOOP_342_1_fu_66", "Port" : "targetGeometry_data_s", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "315", "SubInstance" : "grp_load_target_geometry_Pipeline_VITIS_LOOP_348_2_fu_73", "Port" : "targetGeometry_data_s", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "317", "SubInstance" : "grp_load_target_geometry_Pipeline_VITIS_LOOP_42_1_VITIS_LOOP_44_2_fu_80", "Port" : "targetGeometry_data_s", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_load_target_geometry_fu_477.grp_load_target_geometry_Pipeline_VITIS_LOOP_342_1_fu_66", "Parent" : "312", "Child" : ["314"],
		"CDFG" : "load_target_geometry_Pipeline_VITIS_LOOP_342_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "i_128", "Type" : "None", "Direction" : "I"},
			{"Name" : "targetGeometry_data_s", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_342_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_load_target_geometry_fu_477.grp_load_target_geometry_Pipeline_VITIS_LOOP_342_1_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "313"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_load_target_geometry_fu_477.grp_load_target_geometry_Pipeline_VITIS_LOOP_348_2_fu_73", "Parent" : "312", "Child" : ["316"],
		"CDFG" : "load_target_geometry_Pipeline_VITIS_LOOP_348_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "targetGeometry_data_s", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_348_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_load_target_geometry_fu_477.grp_load_target_geometry_Pipeline_VITIS_LOOP_348_2_fu_73.flow_control_loop_pipe_sequential_init_U", "Parent" : "315"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_load_target_geometry_fu_477.grp_load_target_geometry_Pipeline_VITIS_LOOP_42_1_VITIS_LOOP_44_2_fu_80", "Parent" : "312", "Child" : ["318", "319"],
		"CDFG" : "load_target_geometry_Pipeline_VITIS_LOOP_42_1_VITIS_LOOP_44_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "1036",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "targetGeometry_cols_write", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln0", "Type" : "None", "Direction" : "I"},
			{"Name" : "targetGeometry_mem", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem4", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem4_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem4_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "targetGeometry_data_s", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_42_1_VITIS_LOOP_44_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter12", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_load_target_geometry_fu_477.grp_load_target_geometry_Pipeline_VITIS_LOOP_42_1_VITIS_LOOP_44_2_fu_80.mul_32s_31ns_62_1_1_U510", "Parent" : "317"},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_load_target_geometry_fu_477.grp_load_target_geometry_Pipeline_VITIS_LOOP_42_1_VITIS_LOOP_44_2_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "317"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_load_target_geometry_fu_477.mul_31ns_31ns_62_1_1_U518", "Parent" : "312"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_load_target_geometry_fu_477.mul_32s_32s_64_1_1_U519", "Parent" : "312"},
	{"ID" : "322", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487", "Parent" : "0", "Child" : ["323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "357", "383", "514"],
		"CDFG" : "sortArray_impl_state_accessor_HLSMoveStream_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "10006860",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stateArray_data_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "349", "SubInstance" : "grp_findUnusableAtoms_fu_213", "Port" : "stateArray_data_s", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "357", "SubInstance" : "grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288", "Port" : "stateArray_data_s", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "383", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299", "Port" : "stateArray_data_s", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "514", "SubInstance" : "grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342", "Port" : "stateArray_data_s", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "stateArray_rows_val4", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_cols_val9", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneRowStart", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneRowEnd", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneColStart", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneColEnd", "Type" : "None", "Direction" : "I"},
			{"Name" : "targetGeometry_data_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "349", "SubInstance" : "grp_findUnusableAtoms_fu_213", "Port" : "targetGeometry_data_s", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "targetGeometry_cols_val10", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveStream", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "357", "SubInstance" : "grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288", "Port" : "moveStream", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "383", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299", "Port" : "moveStream", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "514", "SubInstance" : "grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342", "Port" : "moveStream", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_usableAtoms_data_U", "Parent" : "322"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_usableAtoms_count_U", "Parent" : "322"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_usableAtoms_count_1_U", "Parent" : "322"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_usableAtoms_count_2_U", "Parent" : "322"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_usableAtoms_count_3_U", "Parent" : "322"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_usableAtoms_count_4_U", "Parent" : "322"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_usableAtoms_count_5_U", "Parent" : "322"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_usableAtoms_count_6_U", "Parent" : "322"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_usableAtoms_count_7_U", "Parent" : "322"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_unusableAtoms_count_U", "Parent" : "322"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_unusableAtoms_count_1_U", "Parent" : "322"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_unusableAtoms_count_2_U", "Parent" : "322"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_unusableAtoms_count_3_U", "Parent" : "322"},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_unusableAtoms_count_4_U", "Parent" : "322"},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_unusableAtoms_count_5_U", "Parent" : "322"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_unusableAtoms_count_6_U", "Parent" : "322"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_unusableAtoms_count_7_U", "Parent" : "322"},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_targetSites_data_U", "Parent" : "322"},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_targetSites_count_U", "Parent" : "322"},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_targetSites_count_1_U", "Parent" : "322"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_targetSites_count_2_U", "Parent" : "322"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_targetSites_count_3_U", "Parent" : "322"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_targetSites_count_4_U", "Parent" : "322"},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_targetSites_count_5_U", "Parent" : "322"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_targetSites_count_6_U", "Parent" : "322"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.unusableInfo_targetSites_count_7_U", "Parent" : "322"},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_findUnusableAtoms_fu_213", "Parent" : "322", "Child" : ["350", "352", "356"],
		"CDFG" : "findUnusableAtoms",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "5387",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stateArray_data_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "352", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "stateArray_data_s", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "stateArray_cols_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "arraySizeXC", "Type" : "None", "Direction" : "I"},
			{"Name" : "arraySizeAC", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneRowStart", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneRowEnd", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneColStart", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneColEnd", "Type" : "None", "Direction" : "I"},
			{"Name" : "targetGeometry_data_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "352", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetGeometry_data_s", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetGeometry_cols_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "usableAtoms_data", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "352", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_data", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "352", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "352", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "352", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_2", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_3", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "352", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_3", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_4", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "352", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_4", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_5", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "352", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_5", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_6", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "352", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_6", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_7", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "352", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_7", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "unusableAtoms_count_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableAtoms_count_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableAtoms_count_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableAtoms_count_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableAtoms_count_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableAtoms_count_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableAtoms_count_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableAtoms_count_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "targetSites_data", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "352", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_data", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "352", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "352", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "352", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_2", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_3", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "352", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_3", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_4", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "352", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_4", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_5", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "352", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_5", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_6", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "352", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_6", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_7", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "352", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_7", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1446_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_findUnusableAtoms_fu_213.grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Parent" : "349", "Child" : ["351"],
		"CDFG" : "findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "unusableAtoms_count_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "usableAtoms_count_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "targetSites_count_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "unusableAtoms_count_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "usableAtoms_count_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "targetSites_count_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "unusableAtoms_count_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "usableAtoms_count_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "targetSites_count_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "unusableAtoms_count_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "usableAtoms_count_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "targetSites_count_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "unusableAtoms_count_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "usableAtoms_count_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "targetSites_count_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "unusableAtoms_count_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "usableAtoms_count_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "targetSites_count_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "unusableAtoms_count_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "usableAtoms_count_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "targetSites_count_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "targetSites_count_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "usableAtoms_count_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "unusableAtoms_count_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1436_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "351", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_findUnusableAtoms_fu_213.grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "350"},
	{"ID" : "352", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_findUnusableAtoms_fu_213.grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Parent" : "349", "Child" : ["353", "354", "355"],
		"CDFG" : "findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "102",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty_151", "Type" : "None", "Direction" : "I"},
			{"Name" : "phi_mul", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_data_s", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "targetSites_count_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "zext_ln1446_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "targetSites_count_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "targetSites_count_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "targetSites_count_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "targetSites_count_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "targetSites_count_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "targetSites_count_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "targetSites_count_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "usableAtoms_count_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "usableAtoms_count_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "usableAtoms_count_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "usableAtoms_count_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "usableAtoms_count_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "usableAtoms_count_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "usableAtoms_count_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "usableAtoms_count_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compZoneColStart", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneColEnd", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp22", "Type" : "None", "Direction" : "I"},
			{"Name" : "rev", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "targetGeometry_data_s", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln135_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "targetSites_data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "usableAtoms_data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "indexXC", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1453_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "353", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_findUnusableAtoms_fu_213.grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254.sparsemux_17_3_16_1_1_U551", "Parent" : "352"},
	{"ID" : "354", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_findUnusableAtoms_fu_213.grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254.sparsemux_17_3_16_1_1_U552", "Parent" : "352"},
	{"ID" : "355", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_findUnusableAtoms_fu_213.grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254.flow_control_loop_pipe_sequential_init_U", "Parent" : "352"},
	{"ID" : "356", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_findUnusableAtoms_fu_213.am_submul_9ns_10ns_10s_10_4_1_U585", "Parent" : "349"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288", "Parent" : "322", "Child" : ["358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "369", "371", "379", "382"],
		"CDFG" : "clearFirstNRowsOrCols_HLSMoveStream_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3573", "EstimateLatencyMax" : "157327",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stateArray_data_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "grp_clearFirstNRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_421_2_fu_2082", "Port" : "stateArray_data_s", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "371", "SubInstance" : "grp_execute_fu_2105", "Port" : "stateArray_data_s", "Inst_start_state" : "62", "Inst_end_state" : "63"}]},
			{"Name" : "stateArray_rows_val1", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_cols_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveStream", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "379", "SubInstance" : "grp_push_back_fu_2114", "Port" : "moveStream", "Inst_start_state" : "64", "Inst_end_state" : "65"}]},
			{"Name" : "arraySizeAC", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "65", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state6", "ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_435_3.1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "65", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "65", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state9"], "PostState" : ["ap_ST_fsm_state11"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state10_blk"}},
			{"Name" : "VITIS_LOOP_454_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "65", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state26"], "QuitState" : ["ap_ST_fsm_state9"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state27"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "65", "FirstState" : "ap_ST_fsm_state27", "LastState" : ["ap_ST_fsm_state27"], "QuitState" : ["ap_ST_fsm_state27"], "PreState" : ["ap_ST_fsm_state9"], "PostState" : ["ap_ST_fsm_state28"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state27_blk"}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "65", "FirstState" : "ap_ST_fsm_state28", "LastState" : ["ap_ST_fsm_state28"], "QuitState" : ["ap_ST_fsm_state28"], "PreState" : ["ap_ST_fsm_state27"], "PostState" : ["ap_ST_fsm_state29"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state28_blk"}},
			{"Name" : "VITIS_LOOP_435_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "65", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state65"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_407_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "65", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "358", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.move_U", "Parent" : "357"},
	{"ID" : "359", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.ref_tmp_i_0_U", "Parent" : "357"},
	{"ID" : "360", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.ref_tmp_i_1_U", "Parent" : "357"},
	{"ID" : "361", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.occupiedIndices_U", "Parent" : "357"},
	{"ID" : "362", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.occupiedIndices_1_U", "Parent" : "357"},
	{"ID" : "363", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.start_colSelection_U", "Parent" : "357"},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.start_rowSelection_U", "Parent" : "357"},
	{"ID" : "365", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.end_colSelection_U", "Parent" : "357"},
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.end_rowSelection_U", "Parent" : "357"},
	{"ID" : "367", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_clearFirstNRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_421_2_fu_2082", "Parent" : "357", "Child" : ["368"],
		"CDFG" : "clearFirstNRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_421_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "arraySizeAC", "Type" : "None", "Direction" : "I"},
			{"Name" : "occupiedIndices_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "occupiedIndices", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mul_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_data_s", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "occupiedCount_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_421_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "368", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_clearFirstNRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_421_2_fu_2082.flow_control_loop_pipe_sequential_init_U", "Parent" : "367"},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_clearFirstNRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_459_4_fu_2093", "Parent" : "357", "Child" : ["370"],
		"CDFG" : "clearFirstNRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_459_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "processedCount", "Type" : "None", "Direction" : "I"},
			{"Name" : "occupiedCount_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "occupiedIndices", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "occupiedIndices_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "start_colSelection", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "end_colSelection", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "start_colSelectionCount_0_lcssa_ce_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_459_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "370", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_clearFirstNRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_459_4_fu_2093.flow_control_loop_pipe_sequential_init_U", "Parent" : "369"},
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_execute_fu_2105", "Parent" : "357", "Child" : ["372", "374", "376", "377", "378"],
		"CDFG" : "execute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "3117",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "move", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "372", "SubInstance" : "grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296", "Port" : "move", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "374", "SubInstance" : "grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304", "Port" : "move", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "stateArray_data_s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "stateArray_rows_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_cols_val", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_2126_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_pp0_stage0"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2156_2_VITIS_LOOP_2162_3", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "PreState" : ["ap_ST_fsm_state5"], "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "PostState" : ["ap_ST_fsm_state19"]}},
			{"Name" : "VITIS_LOOP_2183_4_VITIS_LOOP_2189_5", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_pp1_stage0", "FirstStateIter" : "ap_enable_reg_pp1_iter0", "FirstStateBlock" : "ap_block_pp1_stage0_subdone", "LastState" : "ap_ST_fsm_pp1_stage2", "LastStateIter" : "ap_enable_reg_pp1_iter1", "LastStateBlock" : "ap_block_pp1_stage2_subdone", "PreState" : ["ap_ST_fsm_state19"], "QuitState" : "ap_ST_fsm_pp1_stage2", "QuitStateIter" : "ap_enable_reg_pp1_iter1", "QuitStateBlock" : "ap_block_pp1_stage2_subdone", "PostState" : ["ap_ST_fsm_state27"]}}]},
	{"ID" : "372", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_execute_fu_2105.grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296", "Parent" : "371", "Child" : ["373"],
		"CDFG" : "execute_Pipeline_VITIS_LOOP_106_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "count_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln2136", "Type" : "None", "Direction" : "I"},
			{"Name" : "move", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_106_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "373", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_execute_fu_2105.grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296.flow_control_loop_pipe_sequential_init_U", "Parent" : "372"},
	{"ID" : "374", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_execute_fu_2105.grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304", "Parent" : "371", "Child" : ["375"],
		"CDFG" : "execute_Pipeline_VITIS_LOOP_106_16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln2136", "Type" : "None", "Direction" : "I"},
			{"Name" : "move", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_106_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "375", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_execute_fu_2105.grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304.flow_control_loop_pipe_sequential_init_U", "Parent" : "374"},
	{"ID" : "376", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_execute_fu_2105.mul_8ns_8ns_16_1_1_U642", "Parent" : "371"},
	{"ID" : "377", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_execute_fu_2105.mac_muladd_10s_10s_10ns_10_4_1_U643", "Parent" : "371"},
	{"ID" : "378", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_execute_fu_2105.mac_muladd_10s_10s_10ns_10_4_1_U644", "Parent" : "371"},
	{"ID" : "379", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_push_back_fu_2114", "Parent" : "357", "Child" : ["380"],
		"CDFG" : "push_back",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "339", "EstimateLatencyMax" : "339",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "moveStream", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "380", "SubInstance" : "grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Port" : "moveStream", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "this_count_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "move", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "380", "SubInstance" : "grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Port" : "move", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "380", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_push_back_fu_2114.grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Parent" : "379", "Child" : ["381"],
		"CDFG" : "push_back_Pipeline_VITIS_LOOP_601_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "338", "EstimateLatencyMax" : "338",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "move", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "moveStream", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "moveStream_TDATA_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_601_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "381", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_push_back_fu_2114.grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32.flow_control_loop_pipe_sequential_init_U", "Parent" : "380"},
	{"ID" : "382", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.mul_10s_2ns_10_1_1_U655", "Parent" : "357"},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299", "Parent" : "322", "Child" : ["384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "435", "438", "440", "442", "444", "446", "448", "450", "452", "460", "463", "465", "467", "469", "471", "475", "477", "479", "481", "483", "485", "486", "488", "490", "492", "494", "496", "498", "500", "502", "504", "506", "508", "509", "510", "511", "512", "513"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "9594273",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stateArray_data_s", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "452", "SubInstance" : "grp_execute_fu_18706", "Port" : "stateArray_data_s", "Inst_start_state" : "548", "Inst_end_state" : "549"}]},
			{"Name" : "stateArray_rows_val4", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_cols_val9", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveStream", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "460", "SubInstance" : "grp_push_back_fu_18715", "Port" : "moveStream", "Inst_start_state" : "550", "Inst_end_state" : "551"}]},
			{"Name" : "moveList_count_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv7", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv6", "Type" : "None", "Direction" : "I"},
			{"Name" : "unusableInfo_usableAtoms_data", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "440", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_609_5_fu_18636", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "442", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_643_6_fu_18653", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "463", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1085_33_fu_18726", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "127", "Inst_end_state" : "128"},
					{"ID" : "467", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1092_34_fu_18742", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "129", "Inst_end_state" : "130"},
					{"ID" : "475", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1161_38_fu_18781", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "133", "Inst_end_state" : "134"},
					{"ID" : "477", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1168_39_fu_18791", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "135", "Inst_end_state" : "136"},
					{"ID" : "483", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1198_42_fu_18817", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "139", "Inst_end_state" : "140"},
					{"ID" : "490", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_1_fu_18848", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "215", "Inst_end_state" : "216"},
					{"ID" : "492", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_1_fu_18858", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "218", "Inst_end_state" : "219"},
					{"ID" : "506", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_841_18_fu_18918", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "514", "Inst_end_state" : "515"}]},
			{"Name" : "unusableInfo_usableAtoms_count_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "unusableInfo_usableAtoms_count_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "unusableInfo_usableAtoms_count_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "unusableInfo_usableAtoms_count_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "unusableInfo_usableAtoms_count_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "unusableInfo_usableAtoms_count_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "unusableInfo_usableAtoms_count_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "unusableInfo_usableAtoms_count_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "unusableInfo_unusableAtoms_count_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "unusableInfo_unusableAtoms_count_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "unusableInfo_unusableAtoms_count_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "unusableInfo_unusableAtoms_count_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "unusableInfo_unusableAtoms_count_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "unusableInfo_unusableAtoms_count_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "unusableInfo_unusableAtoms_count_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "unusableInfo_unusableAtoms_count_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "unusableInfo_targetSites_data", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "494", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_14_fu_18868", "Port" : "unusableInfo_targetSites_data", "Inst_start_state" : "220", "Inst_end_state" : "221"},
					{"ID" : "496", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_15_fu_18878", "Port" : "unusableInfo_targetSites_data", "Inst_start_state" : "223", "Inst_end_state" : "224"}]},
			{"Name" : "unusableInfo_targetSites_count_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "435", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableInfo_targetSites_count_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "435", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableInfo_targetSites_count_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "435", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableInfo_targetSites_count_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "435", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableInfo_targetSites_count_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "435", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableInfo_targetSites_count_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "435", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableInfo_targetSites_count_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "435", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableInfo_targetSites_count_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "435", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "compZoneRowStart", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneRowEnd", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneColStart", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneColEnd", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_658_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state15", "LastState" : ["ap_ST_fsm_state19"], "QuitState" : ["ap_ST_fsm_state15"], "PreState" : ["ap_ST_fsm_state9", "ap_ST_fsm_state12", "ap_ST_fsm_state14"], "PostState" : ["ap_ST_fsm_state20"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state23", "LastState" : ["ap_ST_fsm_state24"], "QuitState" : ["ap_ST_fsm_state23"], "PreState" : ["ap_ST_fsm_state22"], "PostState" : ["ap_ST_fsm_state22", "ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_684_9.1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state22", "LastState" : ["ap_ST_fsm_state23"], "QuitState" : ["ap_ST_fsm_state23"], "PreState" : ["ap_ST_fsm_state21"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state26", "LastState" : ["ap_ST_fsm_state26"], "QuitState" : ["ap_ST_fsm_state26"], "PreState" : ["ap_ST_fsm_state25"], "PostState" : ["ap_ST_fsm_state27"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state26_blk"}},
			{"Name" : "VITIS_LOOP_454_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state25", "LastState" : ["ap_ST_fsm_state42"], "QuitState" : ["ap_ST_fsm_state25"], "PreState" : ["ap_ST_fsm_state23"], "PostState" : ["ap_ST_fsm_state43"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state43", "LastState" : ["ap_ST_fsm_state43"], "QuitState" : ["ap_ST_fsm_state43"], "PreState" : ["ap_ST_fsm_state25"], "PostState" : ["ap_ST_fsm_state44"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state43_blk"}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state44", "LastState" : ["ap_ST_fsm_state44"], "QuitState" : ["ap_ST_fsm_state44"], "PreState" : ["ap_ST_fsm_state43"], "PostState" : ["ap_ST_fsm_state45"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state44_blk"}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state45", "LastState" : ["ap_ST_fsm_state45"], "QuitState" : ["ap_ST_fsm_state45"], "PreState" : ["ap_ST_fsm_state44"], "PostState" : ["ap_ST_fsm_state46"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state45_blk"}},
			{"Name" : "VITIS_LOOP_684_9", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state21", "LastState" : ["ap_ST_fsm_state98"], "QuitState" : ["ap_ST_fsm_state21"], "PreState" : ["ap_ST_fsm_state20"], "PostState" : ["ap_ST_fsm_state490", "ap_ST_fsm_state99"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state493", "LastState" : ["ap_ST_fsm_state494"], "QuitState" : ["ap_ST_fsm_state493"], "PreState" : ["ap_ST_fsm_state492"], "PostState" : ["ap_ST_fsm_state492", "ap_ST_fsm_state495"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_804_16.1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state492", "LastState" : ["ap_ST_fsm_state493"], "QuitState" : ["ap_ST_fsm_state493"], "PreState" : ["ap_ST_fsm_state491"], "PostState" : ["ap_ST_fsm_state495"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state496", "LastState" : ["ap_ST_fsm_state496"], "QuitState" : ["ap_ST_fsm_state496"], "PreState" : ["ap_ST_fsm_state495"], "PostState" : ["ap_ST_fsm_state497"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state496_blk"}},
			{"Name" : "VITIS_LOOP_454_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state495", "LastState" : ["ap_ST_fsm_state512"], "QuitState" : ["ap_ST_fsm_state495"], "PreState" : ["ap_ST_fsm_state493"], "PostState" : ["ap_ST_fsm_state513"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state513", "LastState" : ["ap_ST_fsm_state513"], "QuitState" : ["ap_ST_fsm_state513"], "PreState" : ["ap_ST_fsm_state495"], "PostState" : ["ap_ST_fsm_state514"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state513_blk"}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state514", "LastState" : ["ap_ST_fsm_state514"], "QuitState" : ["ap_ST_fsm_state514"], "PreState" : ["ap_ST_fsm_state513"], "PostState" : ["ap_ST_fsm_state515"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state514_blk"}},
			{"Name" : "VITIS_LOOP_804_16", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state491", "LastState" : ["ap_ST_fsm_state551"], "QuitState" : ["ap_ST_fsm_state491"], "PreState" : ["ap_ST_fsm_state490"], "PostState" : ["ap_ST_fsm_state552"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state104", "LastState" : ["ap_ST_fsm_state105"], "QuitState" : ["ap_ST_fsm_state104"], "PreState" : ["ap_ST_fsm_state103"], "PostState" : ["ap_ST_fsm_state103", "ap_ST_fsm_state106"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_875_20.1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state103", "LastState" : ["ap_ST_fsm_state104"], "QuitState" : ["ap_ST_fsm_state104"], "PreState" : ["ap_ST_fsm_state102"], "PostState" : ["ap_ST_fsm_state106"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state107", "LastState" : ["ap_ST_fsm_state107"], "QuitState" : ["ap_ST_fsm_state107"], "PreState" : ["ap_ST_fsm_state106"], "PostState" : ["ap_ST_fsm_state108"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state107_blk"}},
			{"Name" : "VITIS_LOOP_454_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state106", "LastState" : ["ap_ST_fsm_state123"], "QuitState" : ["ap_ST_fsm_state106"], "PreState" : ["ap_ST_fsm_state104"], "PostState" : ["ap_ST_fsm_state124"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state124", "LastState" : ["ap_ST_fsm_state124"], "QuitState" : ["ap_ST_fsm_state124"], "PreState" : ["ap_ST_fsm_state106"], "PostState" : ["ap_ST_fsm_state125"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state124_blk"}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state125", "LastState" : ["ap_ST_fsm_state125"], "QuitState" : ["ap_ST_fsm_state125"], "PreState" : ["ap_ST_fsm_state124"], "PostState" : ["ap_ST_fsm_state126"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state125_blk"}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state126", "LastState" : ["ap_ST_fsm_state126"], "QuitState" : ["ap_ST_fsm_state126"], "PreState" : ["ap_ST_fsm_state125"], "PostState" : ["ap_ST_fsm_state127"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state126_blk"}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state127", "LastState" : ["ap_ST_fsm_state127"], "QuitState" : ["ap_ST_fsm_state127"], "PreState" : ["ap_ST_fsm_state126"], "PostState" : ["ap_ST_fsm_state128"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state127_blk"}},
			{"Name" : "VITIS_LOOP_875_20", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state101", "LastState" : ["ap_ST_fsm_state212"], "QuitState" : ["ap_ST_fsm_state102"], "PreState" : ["ap_ST_fsm_state100"], "PostState" : ["ap_ST_fsm_state213"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state227", "LastState" : ["ap_ST_fsm_state228"], "QuitState" : ["ap_ST_fsm_state227"], "PreState" : ["ap_ST_fsm_state226"], "PostState" : ["ap_ST_fsm_state226", "ap_ST_fsm_state229"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_866_19.2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state226", "LastState" : ["ap_ST_fsm_state227"], "QuitState" : ["ap_ST_fsm_state227"], "PreState" : ["ap_ST_fsm_state225"], "PostState" : ["ap_ST_fsm_state229"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state230", "LastState" : ["ap_ST_fsm_state230"], "QuitState" : ["ap_ST_fsm_state230"], "PreState" : ["ap_ST_fsm_state229"], "PostState" : ["ap_ST_fsm_state231"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state230_blk"}},
			{"Name" : "VITIS_LOOP_454_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state229", "LastState" : ["ap_ST_fsm_state246"], "QuitState" : ["ap_ST_fsm_state229"], "PreState" : ["ap_ST_fsm_state227"], "PostState" : ["ap_ST_fsm_state247"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state247", "LastState" : ["ap_ST_fsm_state247"], "QuitState" : ["ap_ST_fsm_state247"], "PreState" : ["ap_ST_fsm_state229"], "PostState" : ["ap_ST_fsm_state248"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state247_blk"}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state248", "LastState" : ["ap_ST_fsm_state248"], "QuitState" : ["ap_ST_fsm_state248"], "PreState" : ["ap_ST_fsm_state247"], "PostState" : ["ap_ST_fsm_state249"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state248_blk"}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state249", "LastState" : ["ap_ST_fsm_state249"], "QuitState" : ["ap_ST_fsm_state249"], "PreState" : ["ap_ST_fsm_state248"], "PostState" : ["ap_ST_fsm_state250"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state249_blk"}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state250", "LastState" : ["ap_ST_fsm_state250"], "QuitState" : ["ap_ST_fsm_state250"], "PreState" : ["ap_ST_fsm_state249"], "PostState" : ["ap_ST_fsm_state251"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state250_blk"}},
			{"Name" : "VITIS_LOOP_866_19", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state99", "LastState" : ["ap_ST_fsm_state488"], "QuitState" : ["ap_ST_fsm_state99", "ap_ST_fsm_state100", "ap_ST_fsm_state213"], "PreState" : ["ap_ST_fsm_state21"], "PostState" : ["ap_ST_fsm_state489"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_559_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "936", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state934"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state936", "ap_ST_fsm_state935"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "384", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.move_i_U", "Parent" : "383"},
	{"ID" : "385", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.move442_i_U", "Parent" : "383"},
	{"ID" : "386", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.move559_i_U", "Parent" : "383"},
	{"ID" : "387", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.move1392_i_U", "Parent" : "383"},
	{"ID" : "388", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.ref_tmp_i603_0_i_U", "Parent" : "383"},
	{"ID" : "389", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.ref_tmp_i603_1_i_U", "Parent" : "383"},
	{"ID" : "390", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.ref_tmp_i527_0_i_U", "Parent" : "383"},
	{"ID" : "391", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.ref_tmp_i527_1_i_U", "Parent" : "383"},
	{"ID" : "392", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.ref_tmp_i381_0_i_U", "Parent" : "383"},
	{"ID" : "393", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.ref_tmp_i381_1_i_U", "Parent" : "383"},
	{"ID" : "394", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.ref_tmp_i_0_i_U", "Parent" : "383"},
	{"ID" : "395", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.ref_tmp_i_1_i_U", "Parent" : "383"},
	{"ID" : "396", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.parkingSpotsPerSuitableIndexXC_data_U", "Parent" : "383"},
	{"ID" : "397", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.parkingSpotsRemainingAtCurrentIndexXC_data_U", "Parent" : "383"},
	{"ID" : "398", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.start_colSelection_U", "Parent" : "383"},
	{"ID" : "399", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.start_rowSelection_U", "Parent" : "383"},
	{"ID" : "400", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.elbow_colSelection_U", "Parent" : "383"},
	{"ID" : "401", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.elbow_rowSelection_U", "Parent" : "383"},
	{"ID" : "402", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.end_colSelection_U", "Parent" : "383"},
	{"ID" : "403", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.end_rowSelection_U", "Parent" : "383"},
	{"ID" : "404", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.start_colSelection_1_U", "Parent" : "383"},
	{"ID" : "405", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.start_rowSelection_1_U", "Parent" : "383"},
	{"ID" : "406", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.end_colSelection_1_U", "Parent" : "383"},
	{"ID" : "407", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.end_rowSelection_1_U", "Parent" : "383"},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.start_colSelection_2_U", "Parent" : "383"},
	{"ID" : "409", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.start_rowSelection_2_U", "Parent" : "383"},
	{"ID" : "410", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.elbow1_colSelection_U", "Parent" : "383"},
	{"ID" : "411", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.elbow1_rowSelection_U", "Parent" : "383"},
	{"ID" : "412", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.elbow2_colSelection_U", "Parent" : "383"},
	{"ID" : "413", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.elbow2_rowSelection_U", "Parent" : "383"},
	{"ID" : "414", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.end_colSelection_2_U", "Parent" : "383"},
	{"ID" : "415", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.end_rowSelection_2_U", "Parent" : "383"},
	{"ID" : "416", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.usableFrontBuf_U", "Parent" : "383"},
	{"ID" : "417", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.usableBackBuf_U", "Parent" : "383"},
	{"ID" : "418", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.parkFrontBuf_U", "Parent" : "383"},
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.parkBackBuf_U", "Parent" : "383"},
	{"ID" : "420", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.tempUsableH_U", "Parent" : "383"},
	{"ID" : "421", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.tempParkingH_U", "Parent" : "383"},
	{"ID" : "422", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.usedSourceIndices_data_U", "Parent" : "383"},
	{"ID" : "423", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.usedTargetIndices_data_U", "Parent" : "383"},
	{"ID" : "424", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.start_colSelection_3_U", "Parent" : "383"},
	{"ID" : "425", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.start_rowSelection_3_U", "Parent" : "383"},
	{"ID" : "426", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.elbow1_colSelection_1_U", "Parent" : "383"},
	{"ID" : "427", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.elbow1_rowSelection_1_U", "Parent" : "383"},
	{"ID" : "428", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.elbow2_colSelection_1_U", "Parent" : "383"},
	{"ID" : "429", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.elbow2_rowSelection_1_U", "Parent" : "383"},
	{"ID" : "430", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.end_colSelection_3_U", "Parent" : "383"},
	{"ID" : "431", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.end_rowSelection_3_U", "Parent" : "383"},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.unusableAtoms_data_U", "Parent" : "383"},
	{"ID" : "433", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_525_1_fu_18593", "Parent" : "383", "Child" : ["434"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_525_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln525", "Type" : "None", "Direction" : "I"},
			{"Name" : "parkingSpotsPerSuitableIndexXC_data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "parkingSpotsPerSuitableIndexXC_count_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_525_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "434", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_525_1_fu_18593.flow_control_loop_pipe_sequential_init_U", "Parent" : "433"},
	{"ID" : "435", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Parent" : "383", "Child" : ["436", "437"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv6", "Type" : "None", "Direction" : "I"},
			{"Name" : "unusableInfo_targetSites_count_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "unusableInfo_targetSites_count_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "unusableInfo_targetSites_count_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "unusableInfo_targetSites_count_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "unusableInfo_targetSites_count_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "unusableInfo_targetSites_count_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "unusableInfo_targetSites_count_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "unusableInfo_targetSites_count_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "totalRequiredAtoms_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_549_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "436", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602.sparsemux_17_3_16_1_1_U676", "Parent" : "435"},
	{"ID" : "437", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602.flow_control_loop_pipe_sequential_init_U", "Parent" : "435"},
	{"ID" : "438", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_533_2_fu_18625", "Parent" : "383", "Child" : ["439"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_533_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "parkingSpotsPerSuitableIndexXC_count_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln533", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneColEnd_cast46", "Type" : "None", "Direction" : "I"},
			{"Name" : "parkingSpotsPerSuitableIndexXC_data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "parkingSpotsPerSuitableIndexXC_count_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_533_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "439", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_533_2_fu_18625.flow_control_loop_pipe_sequential_init_U", "Parent" : "438"},
	{"ID" : "440", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_609_5_fu_18636", "Parent" : "383", "Child" : ["441"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_609_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "unusableWriteIdx", "Type" : "None", "Direction" : "I"},
			{"Name" : "currentSize", "Type" : "None", "Direction" : "I"},
			{"Name" : "backIdx", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln620_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "unusableInfo_usableAtoms_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv7", "Type" : "None", "Direction" : "I"},
			{"Name" : "unusableAtoms_data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "unusableWriteIdx_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "frontIdx_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "backIdx_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "discardCount_01099_i_ce_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_609_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "441", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_609_5_fu_18636.flow_control_loop_pipe_sequential_init_U", "Parent" : "440"},
	{"ID" : "442", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_643_6_fu_18653", "Parent" : "383", "Child" : ["443"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_643_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "frontIdx_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "backIdx_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln620_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "unusableInfo_usableAtoms_data", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "writeIdx_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_643_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "443", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_643_6_fu_18653.flow_control_loop_pipe_sequential_init_U", "Parent" : "442"},
	{"ID" : "444", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_666_8_fu_18663", "Parent" : "383", "Child" : ["445"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_666_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "67",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln658_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "indexXC", "Type" : "None", "Direction" : "I"},
			{"Name" : "unusableAtoms_data", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "zext_ln620_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "key", "Type" : "None", "Direction" : "I"},
			{"Name" : "j_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_666_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "445", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_666_8_fu_18663.flow_control_loop_pipe_sequential_init_U", "Parent" : "444"},
	{"ID" : "446", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_752_13_fu_18674", "Parent" : "383", "Child" : ["447"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_752_13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indexAC_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "indexAC_idx_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln620_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "unusableAtoms_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "start_colSelection", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "elbow_colSelection", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "div373_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "indicesHigherMiddle_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "indicesLowerOrEqualMiddle_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_752_13", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "447", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_752_13_fu_18674.flow_control_loop_pipe_sequential_init_U", "Parent" : "446"},
	{"ID" : "448", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_772_14_fu_18687", "Parent" : "383", "Child" : ["449"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_772_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty_104", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "end_colSelection", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "indicesLowerOrEqualMiddle_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "end_colSelectionCount_6_ph_ce_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_772_14", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "449", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_772_14_fu_18687.flow_control_loop_pipe_sequential_init_U", "Parent" : "448"},
	{"ID" : "450", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_780_15_fu_18696", "Parent" : "383", "Child" : ["451"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_780_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "end_colSelectionCount_6_ph", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_103", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "end_colSelection", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "indicesHigherMiddle_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "end_colSelectionCount_1_lcssa_i_ph_ce_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_780_15", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "451", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_780_15_fu_18696.flow_control_loop_pipe_sequential_init_U", "Parent" : "450"},
	{"ID" : "452", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_execute_fu_18706", "Parent" : "383", "Child" : ["453", "455", "457", "458", "459"],
		"CDFG" : "execute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "3117",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "move", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "453", "SubInstance" : "grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296", "Port" : "move", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "455", "SubInstance" : "grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304", "Port" : "move", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "stateArray_data_s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "stateArray_rows_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_cols_val", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_2126_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_pp0_stage0"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2156_2_VITIS_LOOP_2162_3", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "PreState" : ["ap_ST_fsm_state5"], "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "PostState" : ["ap_ST_fsm_state19"]}},
			{"Name" : "VITIS_LOOP_2183_4_VITIS_LOOP_2189_5", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_pp1_stage0", "FirstStateIter" : "ap_enable_reg_pp1_iter0", "FirstStateBlock" : "ap_block_pp1_stage0_subdone", "LastState" : "ap_ST_fsm_pp1_stage2", "LastStateIter" : "ap_enable_reg_pp1_iter1", "LastStateBlock" : "ap_block_pp1_stage2_subdone", "PreState" : ["ap_ST_fsm_state19"], "QuitState" : "ap_ST_fsm_pp1_stage2", "QuitStateIter" : "ap_enable_reg_pp1_iter1", "QuitStateBlock" : "ap_block_pp1_stage2_subdone", "PostState" : ["ap_ST_fsm_state27"]}}]},
	{"ID" : "453", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_execute_fu_18706.grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296", "Parent" : "452", "Child" : ["454"],
		"CDFG" : "execute_Pipeline_VITIS_LOOP_106_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "count_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln2136", "Type" : "None", "Direction" : "I"},
			{"Name" : "move", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_106_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "454", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_execute_fu_18706.grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296.flow_control_loop_pipe_sequential_init_U", "Parent" : "453"},
	{"ID" : "455", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_execute_fu_18706.grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304", "Parent" : "452", "Child" : ["456"],
		"CDFG" : "execute_Pipeline_VITIS_LOOP_106_16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln2136", "Type" : "None", "Direction" : "I"},
			{"Name" : "move", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_106_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "456", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_execute_fu_18706.grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304.flow_control_loop_pipe_sequential_init_U", "Parent" : "455"},
	{"ID" : "457", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_execute_fu_18706.mul_8ns_8ns_16_1_1_U642", "Parent" : "452"},
	{"ID" : "458", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_execute_fu_18706.mac_muladd_10s_10s_10ns_10_4_1_U643", "Parent" : "452"},
	{"ID" : "459", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_execute_fu_18706.mac_muladd_10s_10s_10ns_10_4_1_U644", "Parent" : "452"},
	{"ID" : "460", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_push_back_fu_18715", "Parent" : "383", "Child" : ["461"],
		"CDFG" : "push_back",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "339", "EstimateLatencyMax" : "339",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "moveStream", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "461", "SubInstance" : "grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Port" : "moveStream", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "this_count_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "move", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "461", "SubInstance" : "grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Port" : "move", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "461", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_push_back_fu_18715.grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Parent" : "460", "Child" : ["462"],
		"CDFG" : "push_back_Pipeline_VITIS_LOOP_601_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "338", "EstimateLatencyMax" : "338",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "move", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "moveStream", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "moveStream_TDATA_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_601_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "462", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_push_back_fu_18715.grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32.flow_control_loop_pipe_sequential_init_U", "Parent" : "461"},
	{"ID" : "463", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1085_33_fu_18726", "Parent" : "383", "Child" : ["464"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1085_33",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "prefetchCountUsable", "Type" : "None", "Direction" : "I"},
			{"Name" : "indexXC", "Type" : "None", "Direction" : "I"},
			{"Name" : "unusableInfo_usableAtoms_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "usableFrontBuf", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1085_33", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "464", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1085_33_fu_18726.flow_control_loop_pipe_sequential_init_U", "Parent" : "463"},
	{"ID" : "465", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1099_35_fu_18735", "Parent" : "383", "Child" : ["466"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1099_35",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "prefetchCountParking_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "parkingSpotsRemainingAtCurrentIndexXC_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "parkFrontBuf", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1099_35", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "466", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1099_35_fu_18735.flow_control_loop_pipe_sequential_init_U", "Parent" : "465"},
	{"ID" : "467", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1092_34_fu_18742", "Parent" : "383", "Child" : ["468"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1092_34",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "prefetchCountUsable", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub1013_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln620_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "unusableInfo_usableAtoms_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "usableBackBuf", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1092_34", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "468", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1092_34_fu_18742.flow_control_loop_pipe_sequential_init_U", "Parent" : "467"},
	{"ID" : "469", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1106_36_fu_18752", "Parent" : "383", "Child" : ["470"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1106_36",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "prefetchCountParking_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub1043_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "parkingSpotsRemainingAtCurrentIndexXC_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "parkBackBuf", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1106_36", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "470", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1106_36_fu_18752.flow_control_loop_pipe_sequential_init_U", "Parent" : "469"},
	{"ID" : "471", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1114_37_fu_18760", "Parent" : "383", "Child" : ["472", "473", "474"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1114_37",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "usableFrontBuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "usableBackBuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "parkFrontBuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "parkBackBuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "start_colSelection_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "end_colSelection_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "prefetchCountParking_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "prefetchCountUsable", "Type" : "None", "Direction" : "I"},
			{"Name" : "parkingSpotsRemainingAtCurrentIndexXC_count_7_cast38", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln882", "Type" : "None", "Direction" : "I"},
			{"Name" : "requiredAtoms_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "iter_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parkingBackIdx_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parkingFrontIdx_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "usableBackIdx_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "usableFrontIdx_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1114_37", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "472", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1114_37_fu_18760.uitodp_64ns_64_4_no_dsp_1_U746", "Parent" : "471"},
	{"ID" : "473", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1114_37_fu_18760.sitodp_32ns_64_4_no_dsp_1_U747", "Parent" : "471"},
	{"ID" : "474", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1114_37_fu_18760.flow_control_loop_pipe_sequential_init_U", "Parent" : "471"},
	{"ID" : "475", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1161_38_fu_18781", "Parent" : "383", "Child" : ["476"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1161_38",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln1161", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln620_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln1161", "Type" : "None", "Direction" : "I"},
			{"Name" : "unusableInfo_usableAtoms_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tempUsableH", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1161_38", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "476", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1161_38_fu_18781.flow_control_loop_pipe_sequential_init_U", "Parent" : "475"},
	{"ID" : "477", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1168_39_fu_18791", "Parent" : "383", "Child" : ["478"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1168_39",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln1168", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln620_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "unusableInfo_usableAtoms_data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tempUsableH", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1168_39", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "478", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1168_39_fu_18791.flow_control_loop_pipe_sequential_init_U", "Parent" : "477"},
	{"ID" : "479", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1179_40_fu_18801", "Parent" : "383", "Child" : ["480"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1179_40",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln1179", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln1179", "Type" : "None", "Direction" : "I"},
			{"Name" : "parkingSpotsRemainingAtCurrentIndexXC_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tempParkingH", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1179_40", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "480", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1179_40_fu_18801.flow_control_loop_pipe_sequential_init_U", "Parent" : "479"},
	{"ID" : "481", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1186_41_fu_18809", "Parent" : "383", "Child" : ["482"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1186_41",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "writeIdx1156_1_lcssa_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "tempParkingH", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "parkingSpotsRemainingAtCurrentIndexXC_data", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1186_41", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "482", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1186_41_fu_18809.flow_control_loop_pipe_sequential_init_U", "Parent" : "481"},
	{"ID" : "483", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1198_42_fu_18817", "Parent" : "383", "Child" : ["484"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1198_42",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln1197", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "iter_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "unusableInfo_usableAtoms_data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "end_colSelection_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "targetCount_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1198_42", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "484", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1198_42_fu_18817.flow_control_loop_pipe_sequential_init_U", "Parent" : "483"},
	{"ID" : "485", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_hlsSort_fu_18828", "Parent" : "383",
		"CDFG" : "hlsSort",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "545",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "begin_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "end_offset", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_2070_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2060_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "486", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1220_44_fu_18834", "Parent" : "383", "Child" : ["487"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1220_44",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "iter_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "end_colSelection_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "elbow2_colSelection", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1220_44", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "487", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1220_44_fu_18834.flow_control_loop_pipe_sequential_init_U", "Parent" : "486"},
	{"ID" : "488", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1213_43_fu_18841", "Parent" : "383", "Child" : ["489"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1213_43",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "iter_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "start_colSelection_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "elbow1_colSelection", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1213_43", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "489", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1213_43_fu_18841.flow_control_loop_pipe_sequential_init_U", "Parent" : "488"},
	{"ID" : "490", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_1_fu_18848", "Parent" : "383", "Child" : ["491"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln1269", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln15", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln620_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "unusableInfo_usableAtoms_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "usedSourceIndices_data", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_260_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "491", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_1_fu_18848.flow_control_loop_pipe_sequential_init_U", "Parent" : "490"},
	{"ID" : "492", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_1_fu_18858", "Parent" : "383", "Child" : ["493"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "202",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln1270", "Type" : "None", "Direction" : "I"},
			{"Name" : "shift_end", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln620_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "unusableInfo_usableAtoms_data", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_206_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "493", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_1_fu_18858.flow_control_loop_pipe_sequential_init_U", "Parent" : "492"},
	{"ID" : "494", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_14_fu_18868", "Parent" : "383", "Child" : ["495"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln1274", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln24", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "unusableInfo_targetSites_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "usedTargetIndices_data", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_260_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "495", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_14_fu_18868.flow_control_loop_pipe_sequential_init_U", "Parent" : "494"},
	{"ID" : "496", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_15_fu_18878", "Parent" : "383", "Child" : ["497"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "202",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln1275", "Type" : "None", "Direction" : "I"},
			{"Name" : "shift_end_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_105", "Type" : "None", "Direction" : "I"},
			{"Name" : "unusableInfo_targetSites_data", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_206_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "497", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_15_fu_18878.flow_control_loop_pipe_sequential_init_U", "Parent" : "496"},
	{"ID" : "498", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1331_49_fu_18888", "Parent" : "383", "Child" : ["499"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1331_49",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "usedSourceIndices_count_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "usedSourceIndices_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "start_colSelection_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1331_49", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "499", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1331_49_fu_18888.flow_control_loop_pipe_sequential_init_U", "Parent" : "498"},
	{"ID" : "500", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1339_50_fu_18896", "Parent" : "383", "Child" : ["501"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1339_50",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "usedTargetIndices_count_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "usedTargetIndices_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "end_colSelection_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1339_50", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "501", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1339_50_fu_18896.flow_control_loop_pipe_sequential_init_U", "Parent" : "500"},
	{"ID" : "502", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1349_51_fu_18904", "Parent" : "383", "Child" : ["503"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1349_51",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "start_colSelection_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "elbow1_colSelection_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1349_51", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "503", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1349_51_fu_18904.flow_control_loop_pipe_sequential_init_U", "Parent" : "502"},
	{"ID" : "504", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1356_52_fu_18911", "Parent" : "383", "Child" : ["505"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1356_52",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "end_colSelection_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "elbow2_colSelection_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1356_52", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "505", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1356_52_fu_18911.flow_control_loop_pipe_sequential_init_U", "Parent" : "504"},
	{"ID" : "506", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_841_18_fu_18918", "Parent" : "383", "Child" : ["507"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_841_18",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indexAC_idx2", "Type" : "None", "Direction" : "I"},
			{"Name" : "indexAC_idx2_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln620_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "unusableInfo_usableAtoms_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "start_colSelection_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "end_colSelection_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_841_18", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "507", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_841_18_fu_18918.flow_control_loop_pipe_sequential_init_U", "Parent" : "506"},
	{"ID" : "508", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.sparsemux_17_3_16_1_1_U834", "Parent" : "383"},
	{"ID" : "509", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.sparsemux_17_3_16_1_1_U835", "Parent" : "383"},
	{"ID" : "510", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.sparsemux_17_3_16_1_1_x_U836", "Parent" : "383"},
	{"ID" : "511", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.sparsemux_17_3_16_1_1_U837", "Parent" : "383"},
	{"ID" : "512", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.sparsemux_17_3_16_1_1_U838", "Parent" : "383"},
	{"ID" : "513", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.ama_addmuladd_16ns_1ns_16s_16ns_16_4_1_U839", "Parent" : "383"},
	{"ID" : "514", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342", "Parent" : "322", "Child" : ["515", "516", "517", "518", "519", "520", "521", "522", "523", "524", "525", "526", "528", "529", "530", "538", "541", "542"],
		"CDFG" : "resolveSortingDeficiencies_HLSMoveStream_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "249866",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stateArray_data_s", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "530", "SubInstance" : "grp_execute_fu_3951", "Port" : "stateArray_data_s", "Inst_start_state" : "113", "Inst_end_state" : "114"}]},
			{"Name" : "stateArray_rows_val1", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_cols_val2", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveStream", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "538", "SubInstance" : "grp_push_back_fu_3960", "Port" : "moveStream", "Inst_start_state" : "115", "Inst_end_state" : "116"}]},
			{"Name" : "moveList_count_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "arraySizeXC", "Type" : "None", "Direction" : "I"},
			{"Name" : "usableAtoms_data", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "526", "SubInstance" : "grp_resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1695_7_fu_3918", "Port" : "usableAtoms_data", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "usableAtoms_count_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "usableAtoms_count_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "usableAtoms_count_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "usableAtoms_count_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "usableAtoms_count_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "usableAtoms_count_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "usableAtoms_count_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "usableAtoms_count_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "targetSites_data", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "526", "SubInstance" : "grp_resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1695_7_fu_3918", "Port" : "targetSites_data", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "targetSites_count_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "targetSites_count_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "targetSites_count_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "targetSites_count_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "targetSites_count_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "targetSites_count_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "targetSites_count_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "targetSites_count_7", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1607_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "118", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state118", "ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "118", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state7", "ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1598_2.2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "118", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "118", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state11_blk"}},
			{"Name" : "VITIS_LOOP_454_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "118", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state27"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state28"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "118", "FirstState" : "ap_ST_fsm_state28", "LastState" : ["ap_ST_fsm_state28"], "QuitState" : ["ap_ST_fsm_state28"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state29"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state28_blk"}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "118", "FirstState" : "ap_ST_fsm_state29", "LastState" : ["ap_ST_fsm_state29"], "QuitState" : ["ap_ST_fsm_state29"], "PreState" : ["ap_ST_fsm_state28"], "PostState" : ["ap_ST_fsm_state30"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state29_blk"}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "118", "FirstState" : "ap_ST_fsm_state30", "LastState" : ["ap_ST_fsm_state30"], "QuitState" : ["ap_ST_fsm_state30"], "PreState" : ["ap_ST_fsm_state29"], "PostState" : ["ap_ST_fsm_state31"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state30_blk"}},
			{"Name" : "VITIS_LOOP_434_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "118", "FirstState" : "ap_ST_fsm_state31", "LastState" : ["ap_ST_fsm_state31"], "QuitState" : ["ap_ST_fsm_state31"], "PreState" : ["ap_ST_fsm_state30"], "PostState" : ["ap_ST_fsm_state32"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state31_blk"}},
			{"Name" : "VITIS_LOOP_57_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "118", "FirstState" : "ap_ST_fsm_state35", "LastState" : ["ap_ST_fsm_state36"], "QuitState" : ["ap_ST_fsm_state36"], "PreState" : ["ap_ST_fsm_state34"], "PostState" : ["ap_ST_fsm_state37"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_51_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "118", "FirstState" : "ap_ST_fsm_state33", "LastState" : ["ap_ST_fsm_state37"], "QuitState" : ["ap_ST_fsm_state33"], "PreState" : ["ap_ST_fsm_state32"], "PostState" : ["ap_ST_fsm_state38"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_57_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "118", "FirstState" : "ap_ST_fsm_state40", "LastState" : ["ap_ST_fsm_state41"], "QuitState" : ["ap_ST_fsm_state41"], "PreState" : ["ap_ST_fsm_state39"], "PostState" : ["ap_ST_fsm_state42"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_51_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "118", "FirstState" : "ap_ST_fsm_state38", "LastState" : ["ap_ST_fsm_state42"], "QuitState" : ["ap_ST_fsm_state38"], "PreState" : ["ap_ST_fsm_state33"], "PostState" : ["ap_ST_fsm_state43"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1598_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "118", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state116"], "QuitState" : ["ap_ST_fsm_state4", "ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state117", "ap_ST_fsm_state118"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1585_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "118", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state117"], "QuitState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state118"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "515", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.move_U", "Parent" : "514"},
	{"ID" : "516", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.ref_tmp_i_0_U", "Parent" : "514"},
	{"ID" : "517", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.ref_tmp_i_1_U", "Parent" : "514"},
	{"ID" : "518", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.start_colSelection_U", "Parent" : "514"},
	{"ID" : "519", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.start_rowSelection_U", "Parent" : "514"},
	{"ID" : "520", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.elbow1_colSelection_U", "Parent" : "514"},
	{"ID" : "521", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.elbow1_rowSelection_U", "Parent" : "514"},
	{"ID" : "522", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.elbow2_colSelection_U", "Parent" : "514"},
	{"ID" : "523", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.elbow2_rowSelection_U", "Parent" : "514"},
	{"ID" : "524", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.end_colSelection_U", "Parent" : "514"},
	{"ID" : "525", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.end_rowSelection_U", "Parent" : "514"},
	{"ID" : "526", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1695_7_fu_3918", "Parent" : "514", "Child" : ["527"],
		"CDFG" : "resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1695_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "end_colSelectionCount", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub175", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "usableAtoms_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "start_colSelection", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub186", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1706_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "targetSites_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "end_colSelection", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1695_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "527", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1695_7_fu_3918.flow_control_loop_pipe_sequential_init_U", "Parent" : "526"},
	{"ID" : "528", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1716_8_fu_3933", "Parent" : "514",
		"CDFG" : "resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1716_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "end_colSelectionCount", "Type" : "None", "Direction" : "I"},
			{"Name" : "start_colSelection", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "elbow1_colSelection", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "i221_0194_0_phi_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "i_116_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1716_8", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state4", "ap_ST_fsm_state5"]}}]},
	{"ID" : "529", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1723_9_fu_3942", "Parent" : "514",
		"CDFG" : "resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1723_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "end_colSelectionCount", "Type" : "None", "Direction" : "I"},
			{"Name" : "end_colSelection", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "elbow2_colSelection", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "i238_0197_0_phi_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "i_120_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1723_9", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state4", "ap_ST_fsm_state5"]}}]},
	{"ID" : "530", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_execute_fu_3951", "Parent" : "514", "Child" : ["531", "533", "535", "536", "537"],
		"CDFG" : "execute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "3117",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "move", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "531", "SubInstance" : "grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296", "Port" : "move", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "533", "SubInstance" : "grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304", "Port" : "move", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "stateArray_data_s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "stateArray_rows_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_cols_val", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_2126_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_pp0_stage0"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2156_2_VITIS_LOOP_2162_3", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "PreState" : ["ap_ST_fsm_state5"], "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "PostState" : ["ap_ST_fsm_state19"]}},
			{"Name" : "VITIS_LOOP_2183_4_VITIS_LOOP_2189_5", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_pp1_stage0", "FirstStateIter" : "ap_enable_reg_pp1_iter0", "FirstStateBlock" : "ap_block_pp1_stage0_subdone", "LastState" : "ap_ST_fsm_pp1_stage2", "LastStateIter" : "ap_enable_reg_pp1_iter1", "LastStateBlock" : "ap_block_pp1_stage2_subdone", "PreState" : ["ap_ST_fsm_state19"], "QuitState" : "ap_ST_fsm_pp1_stage2", "QuitStateIter" : "ap_enable_reg_pp1_iter1", "QuitStateBlock" : "ap_block_pp1_stage2_subdone", "PostState" : ["ap_ST_fsm_state27"]}}]},
	{"ID" : "531", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_execute_fu_3951.grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296", "Parent" : "530", "Child" : ["532"],
		"CDFG" : "execute_Pipeline_VITIS_LOOP_106_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "count_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln2136", "Type" : "None", "Direction" : "I"},
			{"Name" : "move", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_106_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "532", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_execute_fu_3951.grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296.flow_control_loop_pipe_sequential_init_U", "Parent" : "531"},
	{"ID" : "533", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_execute_fu_3951.grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304", "Parent" : "530", "Child" : ["534"],
		"CDFG" : "execute_Pipeline_VITIS_LOOP_106_16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln2136", "Type" : "None", "Direction" : "I"},
			{"Name" : "move", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_106_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "534", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_execute_fu_3951.grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304.flow_control_loop_pipe_sequential_init_U", "Parent" : "533"},
	{"ID" : "535", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_execute_fu_3951.mul_8ns_8ns_16_1_1_U642", "Parent" : "530"},
	{"ID" : "536", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_execute_fu_3951.mac_muladd_10s_10s_10ns_10_4_1_U643", "Parent" : "530"},
	{"ID" : "537", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_execute_fu_3951.mac_muladd_10s_10s_10ns_10_4_1_U644", "Parent" : "530"},
	{"ID" : "538", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_push_back_fu_3960", "Parent" : "514", "Child" : ["539"],
		"CDFG" : "push_back",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "339", "EstimateLatencyMax" : "339",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "moveStream", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "539", "SubInstance" : "grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Port" : "moveStream", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "this_count_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "move", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "539", "SubInstance" : "grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Port" : "move", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "539", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_push_back_fu_3960.grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Parent" : "538", "Child" : ["540"],
		"CDFG" : "push_back_Pipeline_VITIS_LOOP_601_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "338", "EstimateLatencyMax" : "338",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "move", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "moveStream", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "moveStream_TDATA_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_601_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "540", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_push_back_fu_3960.grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32.flow_control_loop_pipe_sequential_init_U", "Parent" : "539"},
	{"ID" : "541", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.sparsemux_17_3_16_1_1_U909", "Parent" : "514"},
	{"ID" : "542", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortArray_impl_state_accessor_HLSMoveStream_s_fu_487.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.sparsemux_17_3_16_1_1_U910", "Parent" : "514"},
	{"ID" : "543", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "544", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem0_m_axi_U", "Parent" : "0"},
	{"ID" : "545", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem1_m_axi_U", "Parent" : "0"},
	{"ID" : "546", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem3_m_axi_U", "Parent" : "0"},
	{"ID" : "547", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem4_m_axi_U", "Parent" : "0"},
	{"ID" : "548", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem5_m_axi_U", "Parent" : "0"},
	{"ID" : "549", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem6_m_axi_U", "Parent" : "0"},
	{"ID" : "550", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_moveStream_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	atomflow_controller {
		gmem0 {Type I LastRead 10 FirstWrite -1}
		gmem5 {Type I LastRead 1 FirstWrite -1}
		gmem1 {Type I LastRead 9 FirstWrite -1}
		gmem2 {Type I LastRead -1 FirstWrite -1}
		gmem6 {Type I LastRead 11 FirstWrite -1}
		gmem3 {Type O LastRead 14 FirstWrite 2}
		gmem4 {Type I LastRead 11 FirstWrite -1}
		mode {Type I LastRead 0 FirstWrite -1}
		emission_threshold {Type I LastRead 0 FirstWrite -1}
		atomLocationsSize {Type I LastRead 0 FirstWrite -1}
		projShape0 {Type I LastRead 0 FirstWrite -1}
		projShape1 {Type I LastRead 0 FirstWrite -1}
		atomLocations {Type I LastRead 0 FirstWrite -1}
		psfSupersample {Type I LastRead 0 FirstWrite -1}
		imageProjectionSize {Type I LastRead -1 FirstWrite -1}
		imageProjs_local {Type I LastRead 0 FirstWrite -1}
		imageProjs {Type I LastRead 0 FirstWrite -1}
		imageProjs_local_size {Type I LastRead -1 FirstWrite -1}
		fullImage {Type I LastRead 0 FirstWrite -1}
		fullImage_rows {Type I LastRead -1 FirstWrite -1}
		fullImage_cols {Type I LastRead -1 FirstWrite -1}
		emissions {Type I LastRead 0 FirstWrite -1}
		grid_rows {Type I LastRead 0 FirstWrite -1}
		grid_cols {Type I LastRead 0 FirstWrite -1}
		targetGeometry_mem {Type I LastRead 0 FirstWrite -1}
		compZoneRowStart {Type I LastRead 0 FirstWrite -1}
		compZoneRowEnd {Type I LastRead 0 FirstWrite -1}
		compZoneColStart {Type I LastRead 0 FirstWrite -1}
		compZoneColEnd {Type I LastRead 0 FirstWrite -1}
		moveStream {Type O LastRead -1 FirstWrite 16}
		moveCount {Type O LastRead -1 FirstWrite 24}
		mask_table {Type I LastRead -1 FirstWrite -1}
		one_half_table {Type I LastRead -1 FirstWrite -1}}
	reconstruct {
		atomLocationsSize {Type I LastRead 0 FirstWrite -1}
		projShape0 {Type I LastRead 0 FirstWrite -1}
		projShape1 {Type I LastRead 0 FirstWrite -1}
		gmem0 {Type I LastRead 10 FirstWrite -1}
		atomLocations {Type I LastRead 0 FirstWrite -1}
		psfSupersample {Type I LastRead 0 FirstWrite -1}
		gmem5 {Type I LastRead 1 FirstWrite -1}
		imageProjs_local {Type I LastRead 0 FirstWrite -1}
		imageProjs_0_0_val {Type I LastRead 0 FirstWrite -1}
		gmem6 {Type I LastRead 11 FirstWrite -1}
		fullImage {Type I LastRead 0 FirstWrite -1}
		emissions_0 {Type O LastRead -1 FirstWrite 14}
		emissions_1 {Type O LastRead -1 FirstWrite 14}
		emissions_2 {Type O LastRead -1 FirstWrite 14}
		emissions_3 {Type O LastRead -1 FirstWrite 14}
		emissions_4 {Type O LastRead -1 FirstWrite 14}
		emissions_5 {Type O LastRead -1 FirstWrite 14}
		emissions_6 {Type O LastRead -1 FirstWrite 14}
		emissions_7 {Type O LastRead -1 FirstWrite 14}
		mask_table {Type I LastRead -1 FirstWrite -1}
		one_half_table {Type I LastRead -1 FirstWrite -1}}
	dataflow_in_loop_VITIS_LOOP_241_1_1 {
		conv {Type I LastRead 12 FirstWrite -1}
		psfSupersample {Type I LastRead 12 FirstWrite -1}
		projShape0 {Type I LastRead 12 FirstWrite -1}
		projShape1 {Type I LastRead 12 FirstWrite -1}
		gmem0 {Type I LastRead 10 FirstWrite -1}
		atomLocations {Type I LastRead 12 FirstWrite -1}
		gmem6 {Type I LastRead 11 FirstWrite -1}
		fullImage {Type I LastRead 14 FirstWrite -1}
		gmem5 {Type I LastRead 1 FirstWrite -1}
		imageProjs_local {Type I LastRead 14 FirstWrite -1}
		imageProjs_0_0_val {Type I LastRead 14 FirstWrite -1}
		emissions_0 {Type O LastRead -1 FirstWrite 14}
		emissions_1 {Type O LastRead -1 FirstWrite 14}
		emissions_2 {Type O LastRead -1 FirstWrite 14}
		emissions_3 {Type O LastRead -1 FirstWrite 14}
		emissions_4 {Type O LastRead -1 FirstWrite 14}
		emissions_5 {Type O LastRead -1 FirstWrite 14}
		emissions_6 {Type O LastRead -1 FirstWrite 14}
		emissions_7 {Type O LastRead -1 FirstWrite 14}
		mask_table {Type I LastRead -1 FirstWrite -1}
		one_half_table {Type I LastRead -1 FirstWrite -1}}
	dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_1 {
		conv {Type I LastRead 0 FirstWrite -1}}
	getLocalImages_single {
		curr_idx {Type I LastRead 0 FirstWrite -1}
		psfSupersample {Type I LastRead 9 FirstWrite -1}
		projShape0 {Type I LastRead 9 FirstWrite -1}
		projShape1 {Type I LastRead 9 FirstWrite -1}
		gmem0 {Type I LastRead 10 FirstWrite -1}
		atomLocations {Type I LastRead 0 FirstWrite -1}
		localImages {Type O LastRead -1 FirstWrite 26}
		mask_table {Type I LastRead -1 FirstWrite -1}
		one_half_table {Type I LastRead -1 FirstWrite -1}}
	Image_extract_next {
		localImages {Type I LastRead 8 FirstWrite -1}
		gmem6 {Type I LastRead 11 FirstWrite -1}
		fullImage {Type I LastRead 8 FirstWrite -1}
		curr_fullImage_0 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_1 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_2 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_3 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_4 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_5 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_6 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_7 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_8 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_9 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_10 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_11 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_12 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_13 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_14 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_15 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_16 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_17 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_18 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_19 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_20 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_21 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_22 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_23 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_24 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_25 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_26 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_27 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_28 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_29 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_30 {Type O LastRead -1 FirstWrite 12}
		gmem5 {Type I LastRead 1 FirstWrite -1}
		imageProjs_local {Type I LastRead 0 FirstWrite -1}
		curr_localImage_0 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_1 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_2 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_3 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_4 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_5 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_6 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_7 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_8 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_9 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_10 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_11 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_12 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_13 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_14 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_15 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_16 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_17 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_18 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_19 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_20 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_21 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_22 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_23 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_24 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_25 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_26 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_27 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_28 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_29 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_30 {Type O LastRead -1 FirstWrite 2}
		curr_imageProjs_write {Type I LastRead 9 FirstWrite -1}}
	Image_extract_next_Pipeline_VITIS_LOOP_95_1 {
		curr_fullImage_30 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_29 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_28 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_27 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_26 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_25 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_24 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_23 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_22 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_21 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_20 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_19 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_18 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_17 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_16 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_15 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_14 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_13 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_12 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_11 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_10 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_9 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_8 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_7 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_6 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_5 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_4 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_3 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_2 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_1 {Type O LastRead -1 FirstWrite 12}
		curr_fullImage_0 {Type O LastRead -1 FirstWrite 12}
		curr_localImage_30 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_29 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_28 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_27 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_26 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_25 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_24 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_23 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_22 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_21 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_20 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_19 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_18 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_17 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_16 {Type O LastRead -1 FirstWrite 2}
		curr_localImage_15 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_14 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_13 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_12 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_11 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_10 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_9 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_8 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_7 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_6 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_5 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_4 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_3 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_2 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_1 {Type O LastRead -1 FirstWrite 1}
		curr_localImage_0 {Type O LastRead -1 FirstWrite 1}
		trunc_ln48 {Type I LastRead 0 FirstWrite -1}
		curr_info_X_min {Type I LastRead 0 FirstWrite -1}
		fullImage {Type I LastRead 0 FirstWrite -1}
		gmem6 {Type I LastRead 11 FirstWrite -1}
		gmem5 {Type I LastRead 1 FirstWrite -1}
		zext_ln95 {Type I LastRead 0 FirstWrite -1}}
	matrix_sum_prod {
		mat_0 {Type I LastRead 16 FirstWrite -1}
		mat_1 {Type I LastRead 16 FirstWrite -1}
		mat_2 {Type I LastRead 16 FirstWrite -1}
		mat_3 {Type I LastRead 16 FirstWrite -1}
		mat_4 {Type I LastRead 16 FirstWrite -1}
		mat_5 {Type I LastRead 16 FirstWrite -1}
		mat_6 {Type I LastRead 16 FirstWrite -1}
		mat_7 {Type I LastRead 16 FirstWrite -1}
		mat_8 {Type I LastRead 16 FirstWrite -1}
		mat_9 {Type I LastRead 16 FirstWrite -1}
		mat_10 {Type I LastRead 16 FirstWrite -1}
		mat_11 {Type I LastRead 16 FirstWrite -1}
		mat_12 {Type I LastRead 16 FirstWrite -1}
		mat_13 {Type I LastRead 16 FirstWrite -1}
		mat_14 {Type I LastRead 16 FirstWrite -1}
		mat_15 {Type I LastRead 16 FirstWrite -1}
		mat_16 {Type I LastRead 16 FirstWrite -1}
		mat_17 {Type I LastRead 16 FirstWrite -1}
		mat_18 {Type I LastRead 16 FirstWrite -1}
		mat_19 {Type I LastRead 16 FirstWrite -1}
		mat_20 {Type I LastRead 16 FirstWrite -1}
		mat_21 {Type I LastRead 16 FirstWrite -1}
		mat_22 {Type I LastRead 16 FirstWrite -1}
		mat_23 {Type I LastRead 16 FirstWrite -1}
		mat_24 {Type I LastRead 16 FirstWrite -1}
		mat_25 {Type I LastRead 16 FirstWrite -1}
		mat_26 {Type I LastRead 16 FirstWrite -1}
		mat_27 {Type I LastRead 16 FirstWrite -1}
		mat_28 {Type I LastRead 16 FirstWrite -1}
		mat_29 {Type I LastRead 16 FirstWrite -1}
		mat_30 {Type I LastRead 16 FirstWrite -1}
		mat1_0 {Type I LastRead 16 FirstWrite -1}
		mat1_1 {Type I LastRead 16 FirstWrite -1}
		mat1_2 {Type I LastRead 16 FirstWrite -1}
		mat1_3 {Type I LastRead 16 FirstWrite -1}
		mat1_4 {Type I LastRead 16 FirstWrite -1}
		mat1_5 {Type I LastRead 16 FirstWrite -1}
		mat1_6 {Type I LastRead 16 FirstWrite -1}
		mat1_7 {Type I LastRead 16 FirstWrite -1}
		mat1_8 {Type I LastRead 16 FirstWrite -1}
		mat1_9 {Type I LastRead 16 FirstWrite -1}
		mat1_10 {Type I LastRead 16 FirstWrite -1}
		mat1_11 {Type I LastRead 16 FirstWrite -1}
		mat1_12 {Type I LastRead 16 FirstWrite -1}
		mat1_13 {Type I LastRead 16 FirstWrite -1}
		mat1_14 {Type I LastRead 16 FirstWrite -1}
		mat1_15 {Type I LastRead 16 FirstWrite -1}
		mat1_16 {Type I LastRead 16 FirstWrite -1}
		mat1_17 {Type I LastRead 16 FirstWrite -1}
		mat1_18 {Type I LastRead 16 FirstWrite -1}
		mat1_19 {Type I LastRead 16 FirstWrite -1}
		mat1_20 {Type I LastRead 16 FirstWrite -1}
		mat1_21 {Type I LastRead 16 FirstWrite -1}
		mat1_22 {Type I LastRead 16 FirstWrite -1}
		mat1_23 {Type I LastRead 16 FirstWrite -1}
		mat1_24 {Type I LastRead 16 FirstWrite -1}
		mat1_25 {Type I LastRead 16 FirstWrite -1}
		mat1_26 {Type I LastRead 16 FirstWrite -1}
		mat1_27 {Type I LastRead 16 FirstWrite -1}
		mat1_28 {Type I LastRead 16 FirstWrite -1}
		mat1_29 {Type I LastRead 16 FirstWrite -1}
		mat1_30 {Type I LastRead 16 FirstWrite -1}}
	vector_sum_prod {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read42 {Type I LastRead 0 FirstWrite -1}
		p_read43 {Type I LastRead 0 FirstWrite -1}
		p_read44 {Type I LastRead 0 FirstWrite -1}
		p_read45 {Type I LastRead 0 FirstWrite -1}
		p_read46 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		p_read48 {Type I LastRead 0 FirstWrite -1}
		p_read49 {Type I LastRead 0 FirstWrite -1}
		p_read50 {Type I LastRead 0 FirstWrite -1}
		p_read51 {Type I LastRead 0 FirstWrite -1}
		p_read52 {Type I LastRead 0 FirstWrite -1}
		p_read53 {Type I LastRead 0 FirstWrite -1}
		p_read54 {Type I LastRead 0 FirstWrite -1}
		p_read55 {Type I LastRead 0 FirstWrite -1}
		p_read56 {Type I LastRead 0 FirstWrite -1}
		p_read57 {Type I LastRead 0 FirstWrite -1}
		p_read58 {Type I LastRead 0 FirstWrite -1}
		p_read59 {Type I LastRead 0 FirstWrite -1}
		p_read60 {Type I LastRead 0 FirstWrite -1}
		p_read61 {Type I LastRead 0 FirstWrite -1}}
	vector_sum_prod {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read42 {Type I LastRead 0 FirstWrite -1}
		p_read43 {Type I LastRead 0 FirstWrite -1}
		p_read44 {Type I LastRead 0 FirstWrite -1}
		p_read45 {Type I LastRead 0 FirstWrite -1}
		p_read46 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		p_read48 {Type I LastRead 0 FirstWrite -1}
		p_read49 {Type I LastRead 0 FirstWrite -1}
		p_read50 {Type I LastRead 0 FirstWrite -1}
		p_read51 {Type I LastRead 0 FirstWrite -1}
		p_read52 {Type I LastRead 0 FirstWrite -1}
		p_read53 {Type I LastRead 0 FirstWrite -1}
		p_read54 {Type I LastRead 0 FirstWrite -1}
		p_read55 {Type I LastRead 0 FirstWrite -1}
		p_read56 {Type I LastRead 0 FirstWrite -1}
		p_read57 {Type I LastRead 0 FirstWrite -1}
		p_read58 {Type I LastRead 0 FirstWrite -1}
		p_read59 {Type I LastRead 0 FirstWrite -1}
		p_read60 {Type I LastRead 0 FirstWrite -1}
		p_read61 {Type I LastRead 0 FirstWrite -1}}
	dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		emissions_6 {Type O LastRead -1 FirstWrite 14}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		emissions_5 {Type O LastRead -1 FirstWrite 14}
		emissions_4 {Type O LastRead -1 FirstWrite 14}
		emissions_3 {Type O LastRead -1 FirstWrite 14}
		emissions_2 {Type O LastRead -1 FirstWrite 14}
		emissions_1 {Type O LastRead -1 FirstWrite 14}
		emissions_0 {Type O LastRead -1 FirstWrite 14}
		emissions_7 {Type O LastRead -1 FirstWrite 14}}
	post_process {
		projSumUsed {Type I LastRead 0 FirstWrite -1}
		sum {Type I LastRead 0 FirstWrite -1}
		curr_imageProjs {Type I LastRead 0 FirstWrite -1}}
	atomflow_controller_Pipeline_VITIS_LOOP_136_1 {
		gmem3 {Type O LastRead -1 FirstWrite 2}
		atomLocationsSize {Type I LastRead 0 FirstWrite -1}
		sext_ln136 {Type I LastRead 0 FirstWrite -1}
		emissions_local {Type I LastRead 0 FirstWrite -1}
		emissions_local_1 {Type I LastRead 0 FirstWrite -1}
		emissions_local_2 {Type I LastRead 0 FirstWrite -1}
		emissions_local_3 {Type I LastRead 0 FirstWrite -1}
		emissions_local_4 {Type I LastRead 0 FirstWrite -1}
		emissions_local_5 {Type I LastRead 0 FirstWrite -1}
		emissions_local_6 {Type I LastRead 0 FirstWrite -1}
		emissions_local_7 {Type I LastRead 0 FirstWrite -1}}
	atomflow_controller_Pipeline_VITIS_LOOP_231_1 {
		stateArray_data_s {Type O LastRead -1 FirstWrite 0}}
	atomflow_controller_Pipeline_VITIS_LOOP_231_17 {
		targetGeometry_data_s {Type O LastRead -1 FirstWrite 0}}
	emissions_to_statearray {
		emissions_0 {Type I LastRead 36 FirstWrite -1}
		emissions_1 {Type I LastRead 36 FirstWrite -1}
		emissions_2 {Type I LastRead 36 FirstWrite -1}
		emissions_3 {Type I LastRead 36 FirstWrite -1}
		emissions_4 {Type I LastRead 36 FirstWrite -1}
		emissions_5 {Type I LastRead 36 FirstWrite -1}
		emissions_6 {Type I LastRead 36 FirstWrite -1}
		emissions_7 {Type I LastRead 36 FirstWrite -1}
		atomLocationsSize {Type I LastRead 4 FirstWrite -1}
		stateArray_rows_write {Type I LastRead 0 FirstWrite -1}
		stateArray_cols_write {Type I LastRead 0 FirstWrite -1}
		threshold {Type I LastRead 4 FirstWrite -1}
		stateArray_data_s {Type O LastRead -1 FirstWrite 0}}
	emissions_to_statearray_Pipeline_VITIS_LOOP_342_1 {
		i_145 {Type I LastRead 0 FirstWrite -1}
		stateArray_data_s {Type O LastRead -1 FirstWrite 0}}
	emissions_to_statearray_Pipeline_VITIS_LOOP_348_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		stateArray_data_s {Type O LastRead -1 FirstWrite 0}}
	emissions_to_statearray_Pipeline_VITIS_LOOP_20_1 {
		atomLocationsSize {Type I LastRead 0 FirstWrite -1}
		stateArray_cols_write {Type I LastRead 0 FirstWrite -1}
		stateArray_rows_write {Type I LastRead 0 FirstWrite -1}
		emissions_0 {Type I LastRead 36 FirstWrite -1}
		emissions_1 {Type I LastRead 36 FirstWrite -1}
		emissions_2 {Type I LastRead 36 FirstWrite -1}
		emissions_3 {Type I LastRead 36 FirstWrite -1}
		emissions_4 {Type I LastRead 36 FirstWrite -1}
		emissions_5 {Type I LastRead 36 FirstWrite -1}
		emissions_6 {Type I LastRead 36 FirstWrite -1}
		emissions_7 {Type I LastRead 36 FirstWrite -1}
		bitcast_ln25_1 {Type I LastRead 0 FirstWrite -1}
		empty_152 {Type I LastRead 0 FirstWrite -1}
		threshold {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		stateArray_data_s {Type O LastRead -1 FirstWrite 38}}
	load_target_geometry {
		gmem4 {Type I LastRead 11 FirstWrite -1}
		targetGeometry_mem {Type I LastRead 4 FirstWrite -1}
		targetGeometry_rows_write {Type I LastRead 0 FirstWrite -1}
		targetGeometry_cols_write {Type I LastRead 0 FirstWrite -1}
		targetGeometry_data_s {Type O LastRead -1 FirstWrite 0}}
	load_target_geometry_Pipeline_VITIS_LOOP_342_1 {
		i_128 {Type I LastRead 0 FirstWrite -1}
		targetGeometry_data_s {Type O LastRead -1 FirstWrite 0}}
	load_target_geometry_Pipeline_VITIS_LOOP_348_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		targetGeometry_data_s {Type O LastRead -1 FirstWrite 0}}
	load_target_geometry_Pipeline_VITIS_LOOP_42_1_VITIS_LOOP_44_2 {
		targetGeometry_cols_write {Type I LastRead 0 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}
		sext_ln0 {Type I LastRead 0 FirstWrite -1}
		targetGeometry_mem {Type I LastRead 0 FirstWrite -1}
		gmem4 {Type I LastRead 11 FirstWrite -1}
		targetGeometry_data_s {Type O LastRead -1 FirstWrite 12}}
	sortArray_impl_state_accessor_HLSMoveStream_s {
		stateArray_data_s {Type IO LastRead 0 FirstWrite -1}
		stateArray_rows_val4 {Type I LastRead 0 FirstWrite -1}
		stateArray_cols_val9 {Type I LastRead 0 FirstWrite -1}
		compZoneRowStart {Type I LastRead 0 FirstWrite -1}
		compZoneRowEnd {Type I LastRead 0 FirstWrite -1}
		compZoneColStart {Type I LastRead 0 FirstWrite -1}
		compZoneColEnd {Type I LastRead 0 FirstWrite -1}
		targetGeometry_data_s {Type I LastRead 0 FirstWrite -1}
		targetGeometry_cols_val10 {Type I LastRead 0 FirstWrite -1}
		moveStream {Type O LastRead -1 FirstWrite 16}}
	findUnusableAtoms {
		stateArray_data_s {Type I LastRead 0 FirstWrite -1}
		stateArray_cols_val {Type I LastRead 0 FirstWrite -1}
		arraySizeXC {Type I LastRead 0 FirstWrite -1}
		arraySizeAC {Type I LastRead 0 FirstWrite -1}
		compZoneRowStart {Type I LastRead 0 FirstWrite -1}
		compZoneRowEnd {Type I LastRead 0 FirstWrite -1}
		compZoneColStart {Type I LastRead 0 FirstWrite -1}
		compZoneColEnd {Type I LastRead 0 FirstWrite -1}
		targetGeometry_data_s {Type I LastRead 0 FirstWrite -1}
		targetGeometry_cols_val {Type I LastRead 0 FirstWrite -1}
		usableAtoms_data {Type O LastRead -1 FirstWrite 2}
		usableAtoms_count_0 {Type IO LastRead 1 FirstWrite 0}
		usableAtoms_count_1 {Type IO LastRead 1 FirstWrite 0}
		usableAtoms_count_2 {Type IO LastRead 1 FirstWrite 0}
		usableAtoms_count_3 {Type IO LastRead 1 FirstWrite 0}
		usableAtoms_count_4 {Type IO LastRead 1 FirstWrite 0}
		usableAtoms_count_5 {Type IO LastRead 1 FirstWrite 0}
		usableAtoms_count_6 {Type IO LastRead 1 FirstWrite 0}
		usableAtoms_count_7 {Type IO LastRead 1 FirstWrite 0}
		unusableAtoms_count_0 {Type O LastRead -1 FirstWrite 0}
		unusableAtoms_count_1 {Type O LastRead -1 FirstWrite 0}
		unusableAtoms_count_2 {Type O LastRead -1 FirstWrite 0}
		unusableAtoms_count_3 {Type O LastRead -1 FirstWrite 0}
		unusableAtoms_count_4 {Type O LastRead -1 FirstWrite 0}
		unusableAtoms_count_5 {Type O LastRead -1 FirstWrite 0}
		unusableAtoms_count_6 {Type O LastRead -1 FirstWrite 0}
		unusableAtoms_count_7 {Type O LastRead -1 FirstWrite 0}
		targetSites_data {Type O LastRead -1 FirstWrite 2}
		targetSites_count_0 {Type IO LastRead 1 FirstWrite 0}
		targetSites_count_1 {Type IO LastRead 1 FirstWrite 0}
		targetSites_count_2 {Type IO LastRead 1 FirstWrite 0}
		targetSites_count_3 {Type IO LastRead 1 FirstWrite 0}
		targetSites_count_4 {Type IO LastRead 1 FirstWrite 0}
		targetSites_count_5 {Type IO LastRead 1 FirstWrite 0}
		targetSites_count_6 {Type IO LastRead 1 FirstWrite 0}
		targetSites_count_7 {Type IO LastRead 1 FirstWrite 0}}
	findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1 {
		empty {Type I LastRead 0 FirstWrite -1}
		unusableAtoms_count_7 {Type O LastRead -1 FirstWrite 0}
		usableAtoms_count_7 {Type O LastRead -1 FirstWrite 0}
		targetSites_count_7 {Type O LastRead -1 FirstWrite 0}
		unusableAtoms_count_6 {Type O LastRead -1 FirstWrite 0}
		usableAtoms_count_6 {Type O LastRead -1 FirstWrite 0}
		targetSites_count_6 {Type O LastRead -1 FirstWrite 0}
		unusableAtoms_count_5 {Type O LastRead -1 FirstWrite 0}
		usableAtoms_count_5 {Type O LastRead -1 FirstWrite 0}
		targetSites_count_5 {Type O LastRead -1 FirstWrite 0}
		unusableAtoms_count_4 {Type O LastRead -1 FirstWrite 0}
		usableAtoms_count_4 {Type O LastRead -1 FirstWrite 0}
		targetSites_count_4 {Type O LastRead -1 FirstWrite 0}
		unusableAtoms_count_3 {Type O LastRead -1 FirstWrite 0}
		usableAtoms_count_3 {Type O LastRead -1 FirstWrite 0}
		targetSites_count_3 {Type O LastRead -1 FirstWrite 0}
		unusableAtoms_count_2 {Type O LastRead -1 FirstWrite 0}
		usableAtoms_count_2 {Type O LastRead -1 FirstWrite 0}
		targetSites_count_2 {Type O LastRead -1 FirstWrite 0}
		unusableAtoms_count_1 {Type O LastRead -1 FirstWrite 0}
		usableAtoms_count_1 {Type O LastRead -1 FirstWrite 0}
		targetSites_count_1 {Type O LastRead -1 FirstWrite 0}
		targetSites_count_0 {Type O LastRead -1 FirstWrite 0}
		usableAtoms_count_0 {Type O LastRead -1 FirstWrite 0}
		unusableAtoms_count_0 {Type O LastRead -1 FirstWrite 0}}
	findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3 {
		empty_151 {Type I LastRead 0 FirstWrite -1}
		phi_mul {Type I LastRead 0 FirstWrite -1}
		stateArray_data_s {Type I LastRead 0 FirstWrite -1}
		targetSites_count_0 {Type IO LastRead 1 FirstWrite 2}
		zext_ln1446_2 {Type I LastRead 0 FirstWrite -1}
		targetSites_count_1 {Type IO LastRead 1 FirstWrite 2}
		targetSites_count_2 {Type IO LastRead 1 FirstWrite 2}
		targetSites_count_3 {Type IO LastRead 1 FirstWrite 2}
		targetSites_count_4 {Type IO LastRead 1 FirstWrite 2}
		targetSites_count_5 {Type IO LastRead 1 FirstWrite 2}
		targetSites_count_6 {Type IO LastRead 1 FirstWrite 2}
		targetSites_count_7 {Type IO LastRead 1 FirstWrite 2}
		usableAtoms_count_0 {Type IO LastRead 1 FirstWrite 2}
		usableAtoms_count_1 {Type IO LastRead 1 FirstWrite 2}
		usableAtoms_count_2 {Type IO LastRead 1 FirstWrite 2}
		usableAtoms_count_3 {Type IO LastRead 1 FirstWrite 2}
		usableAtoms_count_4 {Type IO LastRead 1 FirstWrite 2}
		usableAtoms_count_5 {Type IO LastRead 1 FirstWrite 2}
		usableAtoms_count_6 {Type IO LastRead 1 FirstWrite 2}
		usableAtoms_count_7 {Type IO LastRead 1 FirstWrite 2}
		compZoneColStart {Type I LastRead 0 FirstWrite -1}
		compZoneColEnd {Type I LastRead 0 FirstWrite -1}
		cmp22 {Type I LastRead 0 FirstWrite -1}
		rev {Type I LastRead 0 FirstWrite -1}
		mul_i {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		targetGeometry_data_s {Type I LastRead 0 FirstWrite -1}
		zext_ln135_4 {Type I LastRead 0 FirstWrite -1}
		targetSites_data {Type O LastRead -1 FirstWrite 2}
		usableAtoms_data {Type O LastRead -1 FirstWrite 2}
		indexXC {Type I LastRead 0 FirstWrite -1}}
	clearFirstNRowsOrCols_HLSMoveStream_s {
		stateArray_data_s {Type IO LastRead 0 FirstWrite -1}
		stateArray_rows_val1 {Type I LastRead 0 FirstWrite -1}
		stateArray_cols_val {Type I LastRead 0 FirstWrite -1}
		moveStream {Type O LastRead -1 FirstWrite 16}
		arraySizeAC {Type I LastRead 0 FirstWrite -1}}
	clearFirstNRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_421_2 {
		arraySizeAC {Type I LastRead 0 FirstWrite -1}
		occupiedIndices_1 {Type O LastRead -1 FirstWrite 1}
		occupiedIndices {Type O LastRead -1 FirstWrite 1}
		mul_i {Type I LastRead 0 FirstWrite -1}
		stateArray_data_s {Type I LastRead 0 FirstWrite -1}
		occupiedCount_out {Type O LastRead -1 FirstWrite 1}}
	clearFirstNRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_459_4 {
		processedCount {Type I LastRead 0 FirstWrite -1}
		occupiedCount_reload {Type I LastRead 0 FirstWrite -1}
		occupiedIndices {Type I LastRead 1 FirstWrite -1}
		occupiedIndices_1 {Type I LastRead 1 FirstWrite -1}
		start_colSelection {Type O LastRead -1 FirstWrite 1}
		end_colSelection {Type O LastRead -1 FirstWrite 1}
		start_colSelectionCount_0_lcssa_ce_out {Type O LastRead -1 FirstWrite 1}}
	execute {
		move {Type I LastRead 10 FirstWrite -1}
		stateArray_data_s {Type O LastRead -1 FirstWrite 10}
		stateArray_rows_val {Type I LastRead 1 FirstWrite -1}
		stateArray_cols_val {Type I LastRead 1 FirstWrite -1}}
	execute_Pipeline_VITIS_LOOP_106_1 {
		count_assign {Type I LastRead 0 FirstWrite -1}
		mul_ln2136 {Type I LastRead 0 FirstWrite -1}
		move {Type I LastRead 1 FirstWrite -1}}
	execute_Pipeline_VITIS_LOOP_106_16 {
		empty {Type I LastRead 0 FirstWrite -1}
		mul_ln2136 {Type I LastRead 0 FirstWrite -1}
		move {Type I LastRead 1 FirstWrite -1}}
	push_back {
		moveStream {Type O LastRead -1 FirstWrite 16}
		this_count_read {Type I LastRead 1 FirstWrite -1}
		move {Type I LastRead 16 FirstWrite -1}}
	push_back_Pipeline_VITIS_LOOP_601_1 {
		move {Type I LastRead 16 FirstWrite -1}
		moveStream {Type O LastRead -1 FirstWrite 16}}
	sortRemainingRowsOrCols_HLSMoveStream_s {
		stateArray_data_s {Type O LastRead -1 FirstWrite 10}
		stateArray_rows_val4 {Type I LastRead 4 FirstWrite -1}
		stateArray_cols_val9 {Type I LastRead 4 FirstWrite -1}
		moveStream {Type O LastRead -1 FirstWrite 16}
		moveList_count_read {Type I LastRead 4 FirstWrite -1}
		conv7 {Type I LastRead 2 FirstWrite -1}
		conv6 {Type I LastRead 0 FirstWrite -1}
		unusableInfo_usableAtoms_data {Type IO LastRead 147 FirstWrite -1}
		unusableInfo_usableAtoms_count_0 {Type IO LastRead 38 FirstWrite 13}
		unusableInfo_usableAtoms_count_1 {Type IO LastRead 38 FirstWrite 13}
		unusableInfo_usableAtoms_count_2 {Type IO LastRead 38 FirstWrite 13}
		unusableInfo_usableAtoms_count_3 {Type IO LastRead 38 FirstWrite 13}
		unusableInfo_usableAtoms_count_4 {Type IO LastRead 38 FirstWrite 13}
		unusableInfo_usableAtoms_count_5 {Type IO LastRead 38 FirstWrite 13}
		unusableInfo_usableAtoms_count_6 {Type IO LastRead 38 FirstWrite 13}
		unusableInfo_usableAtoms_count_7 {Type IO LastRead 38 FirstWrite 13}
		unusableInfo_unusableAtoms_count_0 {Type IO LastRead 22 FirstWrite 11}
		unusableInfo_unusableAtoms_count_1 {Type IO LastRead 22 FirstWrite 11}
		unusableInfo_unusableAtoms_count_2 {Type IO LastRead 22 FirstWrite 11}
		unusableInfo_unusableAtoms_count_3 {Type IO LastRead 22 FirstWrite 11}
		unusableInfo_unusableAtoms_count_4 {Type IO LastRead 22 FirstWrite 11}
		unusableInfo_unusableAtoms_count_5 {Type IO LastRead 22 FirstWrite 11}
		unusableInfo_unusableAtoms_count_6 {Type IO LastRead 22 FirstWrite 11}
		unusableInfo_unusableAtoms_count_7 {Type IO LastRead 22 FirstWrite 11}
		unusableInfo_targetSites_data {Type IO LastRead 1 FirstWrite -1}
		unusableInfo_targetSites_count_0 {Type IO LastRead 20 FirstWrite -1}
		unusableInfo_targetSites_count_1 {Type IO LastRead 20 FirstWrite -1}
		unusableInfo_targetSites_count_2 {Type IO LastRead 20 FirstWrite -1}
		unusableInfo_targetSites_count_3 {Type IO LastRead 20 FirstWrite -1}
		unusableInfo_targetSites_count_4 {Type IO LastRead 20 FirstWrite -1}
		unusableInfo_targetSites_count_5 {Type IO LastRead 20 FirstWrite -1}
		unusableInfo_targetSites_count_6 {Type IO LastRead 20 FirstWrite -1}
		unusableInfo_targetSites_count_7 {Type IO LastRead 20 FirstWrite -1}
		compZoneRowStart {Type I LastRead 4 FirstWrite -1}
		compZoneRowEnd {Type I LastRead 4 FirstWrite -1}
		compZoneColStart {Type I LastRead 0 FirstWrite -1}
		compZoneColEnd {Type I LastRead 2 FirstWrite -1}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_525_1 {
		sext_ln525 {Type I LastRead 0 FirstWrite -1}
		parkingSpotsPerSuitableIndexXC_data {Type O LastRead -1 FirstWrite 1}
		parkingSpotsPerSuitableIndexXC_count_out {Type O LastRead -1 FirstWrite 1}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3 {
		conv6 {Type I LastRead 0 FirstWrite -1}
		unusableInfo_targetSites_count_0 {Type I LastRead 0 FirstWrite -1}
		unusableInfo_targetSites_count_1 {Type I LastRead 0 FirstWrite -1}
		unusableInfo_targetSites_count_2 {Type I LastRead 0 FirstWrite -1}
		unusableInfo_targetSites_count_3 {Type I LastRead 0 FirstWrite -1}
		unusableInfo_targetSites_count_4 {Type I LastRead 0 FirstWrite -1}
		unusableInfo_targetSites_count_5 {Type I LastRead 0 FirstWrite -1}
		unusableInfo_targetSites_count_6 {Type I LastRead 0 FirstWrite -1}
		unusableInfo_targetSites_count_7 {Type I LastRead 0 FirstWrite -1}
		totalRequiredAtoms_out {Type O LastRead -1 FirstWrite 0}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_533_2 {
		parkingSpotsPerSuitableIndexXC_count_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln533 {Type I LastRead 0 FirstWrite -1}
		compZoneColEnd_cast46 {Type I LastRead 0 FirstWrite -1}
		parkingSpotsPerSuitableIndexXC_data {Type O LastRead -1 FirstWrite 1}
		parkingSpotsPerSuitableIndexXC_count_6_out {Type O LastRead -1 FirstWrite 1}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_609_5 {
		unusableWriteIdx {Type I LastRead 0 FirstWrite -1}
		currentSize {Type I LastRead 0 FirstWrite -1}
		backIdx {Type I LastRead 0 FirstWrite -1}
		zext_ln620_1 {Type I LastRead 0 FirstWrite -1}
		unusableInfo_usableAtoms_data {Type I LastRead 2 FirstWrite -1}
		conv7 {Type I LastRead 0 FirstWrite -1}
		unusableAtoms_data {Type O LastRead -1 FirstWrite 2}
		threshold {Type I LastRead 0 FirstWrite -1}
		unusableWriteIdx_1_out {Type O LastRead -1 FirstWrite 1}
		frontIdx_out {Type O LastRead -1 FirstWrite 1}
		backIdx_1_out {Type O LastRead -1 FirstWrite 1}
		discardCount_01099_i_ce_out {Type O LastRead -1 FirstWrite 1}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_643_6 {
		frontIdx_reload {Type I LastRead 0 FirstWrite -1}
		backIdx_1_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln620_1 {Type I LastRead 0 FirstWrite -1}
		unusableInfo_usableAtoms_data {Type IO LastRead 1 FirstWrite 2}
		writeIdx_out {Type O LastRead -1 FirstWrite 1}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_666_8 {
		zext_ln658_1 {Type I LastRead 0 FirstWrite -1}
		indexXC {Type I LastRead 0 FirstWrite -1}
		unusableAtoms_data {Type IO LastRead 1 FirstWrite 2}
		zext_ln620_1 {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}
		j_out {Type O LastRead -1 FirstWrite 2}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_752_13 {
		indexAC_idx {Type I LastRead 0 FirstWrite -1}
		indexAC_idx_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln620_1 {Type I LastRead 0 FirstWrite -1}
		unusableAtoms_data {Type I LastRead 0 FirstWrite -1}
		start_colSelection {Type O LastRead -1 FirstWrite 1}
		elbow_colSelection {Type O LastRead -1 FirstWrite 1}
		div373_i {Type I LastRead 0 FirstWrite -1}
		indicesHigherMiddle_out {Type O LastRead -1 FirstWrite 0}
		indicesLowerOrEqualMiddle_out {Type O LastRead -1 FirstWrite 0}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_772_14 {
		empty_104 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		end_colSelection {Type O LastRead -1 FirstWrite 1}
		indicesLowerOrEqualMiddle_reload {Type I LastRead 0 FirstWrite -1}
		end_colSelectionCount_6_ph_ce_out {Type O LastRead -1 FirstWrite 1}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_780_15 {
		end_colSelectionCount_6_ph {Type I LastRead 0 FirstWrite -1}
		empty_103 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		end_colSelection {Type O LastRead -1 FirstWrite 1}
		indicesHigherMiddle_reload {Type I LastRead 0 FirstWrite -1}
		end_colSelectionCount_1_lcssa_i_ph_ce_out {Type O LastRead -1 FirstWrite 1}}
	execute {
		move {Type I LastRead 10 FirstWrite -1}
		stateArray_data_s {Type O LastRead -1 FirstWrite 10}
		stateArray_rows_val {Type I LastRead 1 FirstWrite -1}
		stateArray_cols_val {Type I LastRead 1 FirstWrite -1}}
	execute_Pipeline_VITIS_LOOP_106_1 {
		count_assign {Type I LastRead 0 FirstWrite -1}
		mul_ln2136 {Type I LastRead 0 FirstWrite -1}
		move {Type I LastRead 1 FirstWrite -1}}
	execute_Pipeline_VITIS_LOOP_106_16 {
		empty {Type I LastRead 0 FirstWrite -1}
		mul_ln2136 {Type I LastRead 0 FirstWrite -1}
		move {Type I LastRead 1 FirstWrite -1}}
	push_back {
		moveStream {Type O LastRead -1 FirstWrite 16}
		this_count_read {Type I LastRead 1 FirstWrite -1}
		move {Type I LastRead 16 FirstWrite -1}}
	push_back_Pipeline_VITIS_LOOP_601_1 {
		move {Type I LastRead 16 FirstWrite -1}
		moveStream {Type O LastRead -1 FirstWrite 16}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1085_33 {
		prefetchCountUsable {Type I LastRead 0 FirstWrite -1}
		indexXC {Type I LastRead 0 FirstWrite -1}
		unusableInfo_usableAtoms_data {Type I LastRead 0 FirstWrite -1}
		usableFrontBuf {Type O LastRead -1 FirstWrite 1}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1099_35 {
		prefetchCountParking_1 {Type I LastRead 0 FirstWrite -1}
		parkingSpotsRemainingAtCurrentIndexXC_data {Type I LastRead 0 FirstWrite -1}
		parkFrontBuf {Type O LastRead -1 FirstWrite 1}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1092_34 {
		prefetchCountUsable {Type I LastRead 0 FirstWrite -1}
		sub1013_i {Type I LastRead 0 FirstWrite -1}
		zext_ln620_1 {Type I LastRead 0 FirstWrite -1}
		unusableInfo_usableAtoms_data {Type I LastRead 0 FirstWrite -1}
		usableBackBuf {Type O LastRead -1 FirstWrite 1}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1106_36 {
		prefetchCountParking_1 {Type I LastRead 0 FirstWrite -1}
		sub1043_i {Type I LastRead 0 FirstWrite -1}
		parkingSpotsRemainingAtCurrentIndexXC_data {Type I LastRead 0 FirstWrite -1}
		parkBackBuf {Type O LastRead -1 FirstWrite 1}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1114_37 {
		usableFrontBuf {Type I LastRead 0 FirstWrite -1}
		usableBackBuf {Type I LastRead 0 FirstWrite -1}
		parkFrontBuf {Type I LastRead 0 FirstWrite -1}
		parkBackBuf {Type I LastRead 0 FirstWrite -1}
		start_colSelection_2 {Type O LastRead -1 FirstWrite 5}
		end_colSelection_2 {Type O LastRead -1 FirstWrite 5}
		prefetchCountParking_1 {Type I LastRead 0 FirstWrite -1}
		prefetchCountUsable {Type I LastRead 0 FirstWrite -1}
		parkingSpotsRemainingAtCurrentIndexXC_count_7_cast38 {Type I LastRead 0 FirstWrite -1}
		zext_ln882 {Type I LastRead 0 FirstWrite -1}
		requiredAtoms_2 {Type I LastRead 0 FirstWrite -1}
		iter_1_out {Type O LastRead -1 FirstWrite 4}
		parkingBackIdx_out {Type O LastRead -1 FirstWrite 4}
		parkingFrontIdx_out {Type O LastRead -1 FirstWrite 4}
		usableBackIdx_out {Type O LastRead -1 FirstWrite 4}
		usableFrontIdx_3_out {Type O LastRead -1 FirstWrite 4}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1161_38 {
		zext_ln1161 {Type I LastRead 0 FirstWrite -1}
		zext_ln620_1 {Type I LastRead 0 FirstWrite -1}
		select_ln1161 {Type I LastRead 0 FirstWrite -1}
		unusableInfo_usableAtoms_data {Type I LastRead 1 FirstWrite -1}
		tempUsableH {Type O LastRead -1 FirstWrite 2}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1168_39 {
		sext_ln1168 {Type I LastRead 0 FirstWrite -1}
		zext_ln620_1 {Type I LastRead 0 FirstWrite -1}
		unusableInfo_usableAtoms_data {Type O LastRead -1 FirstWrite 1}
		tempUsableH {Type I LastRead 0 FirstWrite -1}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1179_40 {
		zext_ln1179 {Type I LastRead 0 FirstWrite -1}
		select_ln1179 {Type I LastRead 0 FirstWrite -1}
		parkingSpotsRemainingAtCurrentIndexXC_data {Type I LastRead 1 FirstWrite -1}
		tempParkingH {Type O LastRead -1 FirstWrite 2}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1186_41 {
		writeIdx1156_1_lcssa_i {Type I LastRead 0 FirstWrite -1}
		tempParkingH {Type I LastRead 0 FirstWrite -1}
		parkingSpotsRemainingAtCurrentIndexXC_data {Type O LastRead -1 FirstWrite 1}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1198_42 {
		zext_ln1197 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		iter_1_reload {Type I LastRead 0 FirstWrite -1}
		unusableInfo_usableAtoms_data {Type O LastRead -1 FirstWrite 2}
		end_colSelection_2 {Type I LastRead 1 FirstWrite -1}
		targetCount_1_out {Type O LastRead -1 FirstWrite 1}}
	hlsSort {
		begin_r {Type IO LastRead 3 FirstWrite 3}
		end_offset {Type I LastRead 0 FirstWrite -1}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1220_44 {
		iter_1_reload {Type I LastRead 0 FirstWrite -1}
		end_colSelection_2 {Type I LastRead 0 FirstWrite -1}
		elbow2_colSelection {Type O LastRead -1 FirstWrite 1}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1213_43 {
		iter_1_reload {Type I LastRead 0 FirstWrite -1}
		start_colSelection_2 {Type I LastRead 0 FirstWrite -1}
		elbow1_colSelection {Type O LastRead -1 FirstWrite 1}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_1 {
		sext_ln1269 {Type I LastRead 0 FirstWrite -1}
		trunc_ln15 {Type I LastRead 0 FirstWrite -1}
		zext_ln620_1 {Type I LastRead 0 FirstWrite -1}
		unusableInfo_usableAtoms_data {Type I LastRead 1 FirstWrite -1}
		usedSourceIndices_data {Type O LastRead -1 FirstWrite 2}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_1 {
		sext_ln1270 {Type I LastRead 0 FirstWrite -1}
		shift_end {Type I LastRead 0 FirstWrite -1}
		zext_ln620_1 {Type I LastRead 0 FirstWrite -1}
		unusableInfo_usableAtoms_data {Type IO LastRead 1 FirstWrite 2}
		empty {Type I LastRead 0 FirstWrite -1}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_14 {
		sext_ln1274 {Type I LastRead 0 FirstWrite -1}
		trunc_ln24 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		unusableInfo_targetSites_data {Type I LastRead 1 FirstWrite -1}
		usedTargetIndices_data {Type O LastRead -1 FirstWrite 2}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_15 {
		sext_ln1275 {Type I LastRead 0 FirstWrite -1}
		shift_end_1 {Type I LastRead 0 FirstWrite -1}
		empty_105 {Type I LastRead 0 FirstWrite -1}
		unusableInfo_targetSites_data {Type IO LastRead 1 FirstWrite 2}
		empty {Type I LastRead 0 FirstWrite -1}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1331_49 {
		usedSourceIndices_count_3 {Type I LastRead 0 FirstWrite -1}
		usedSourceIndices_data {Type I LastRead 0 FirstWrite -1}
		start_colSelection_3 {Type O LastRead -1 FirstWrite 1}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1339_50 {
		usedTargetIndices_count_3 {Type I LastRead 0 FirstWrite -1}
		usedTargetIndices_data {Type I LastRead 0 FirstWrite -1}
		end_colSelection_3 {Type O LastRead -1 FirstWrite 1}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1349_51 {
		empty {Type I LastRead 0 FirstWrite -1}
		start_colSelection_3 {Type I LastRead 0 FirstWrite -1}
		elbow1_colSelection_1 {Type O LastRead -1 FirstWrite 1}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1356_52 {
		empty {Type I LastRead 0 FirstWrite -1}
		end_colSelection_3 {Type I LastRead 0 FirstWrite -1}
		elbow2_colSelection_1 {Type O LastRead -1 FirstWrite 1}}
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_841_18 {
		indexAC_idx2 {Type I LastRead 0 FirstWrite -1}
		indexAC_idx2_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln620_1 {Type I LastRead 0 FirstWrite -1}
		unusableInfo_usableAtoms_data {Type I LastRead 0 FirstWrite -1}
		start_colSelection_1 {Type O LastRead -1 FirstWrite 1}
		end_colSelection_1 {Type O LastRead -1 FirstWrite 1}}
	resolveSortingDeficiencies_HLSMoveStream_s {
		stateArray_data_s {Type O LastRead -1 FirstWrite 10}
		stateArray_rows_val1 {Type I LastRead 0 FirstWrite -1}
		stateArray_cols_val2 {Type I LastRead 0 FirstWrite -1}
		moveStream {Type O LastRead -1 FirstWrite 16}
		moveList_count_read {Type I LastRead 0 FirstWrite -1}
		arraySizeXC {Type I LastRead 0 FirstWrite -1}
		usableAtoms_data {Type I LastRead 0 FirstWrite -1}
		usableAtoms_count_0 {Type IO LastRead 4 FirstWrite 13}
		usableAtoms_count_1 {Type IO LastRead 4 FirstWrite 13}
		usableAtoms_count_2 {Type IO LastRead 4 FirstWrite 13}
		usableAtoms_count_3 {Type IO LastRead 4 FirstWrite 13}
		usableAtoms_count_4 {Type IO LastRead 4 FirstWrite 13}
		usableAtoms_count_5 {Type IO LastRead 4 FirstWrite 13}
		usableAtoms_count_6 {Type IO LastRead 4 FirstWrite 13}
		usableAtoms_count_7 {Type IO LastRead 4 FirstWrite 13}
		targetSites_data {Type I LastRead 0 FirstWrite -1}
		targetSites_count_0 {Type IO LastRead 1 FirstWrite 3}
		targetSites_count_1 {Type IO LastRead 1 FirstWrite 3}
		targetSites_count_2 {Type IO LastRead 1 FirstWrite 3}
		targetSites_count_3 {Type IO LastRead 1 FirstWrite 3}
		targetSites_count_4 {Type IO LastRead 1 FirstWrite 3}
		targetSites_count_5 {Type IO LastRead 1 FirstWrite 3}
		targetSites_count_6 {Type IO LastRead 1 FirstWrite 3}
		targetSites_count_7 {Type IO LastRead 1 FirstWrite 3}}
	resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1695_7 {
		end_colSelectionCount {Type I LastRead 0 FirstWrite -1}
		sub175 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		usableAtoms_data {Type I LastRead 0 FirstWrite -1}
		start_colSelection {Type O LastRead -1 FirstWrite 1}
		sub186 {Type I LastRead 0 FirstWrite -1}
		zext_ln1706_1 {Type I LastRead 0 FirstWrite -1}
		targetSites_data {Type I LastRead 0 FirstWrite -1}
		end_colSelection {Type O LastRead -1 FirstWrite 1}}
	resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1716_8 {
		end_colSelectionCount {Type I LastRead 0 FirstWrite -1}
		start_colSelection {Type I LastRead 2 FirstWrite -1}
		elbow1_colSelection {Type O LastRead -1 FirstWrite 2}
		i221_0194_0_phi_out {Type O LastRead -1 FirstWrite 2}
		i_116_out {Type O LastRead -1 FirstWrite 3}}
	resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1723_9 {
		end_colSelectionCount {Type I LastRead 0 FirstWrite -1}
		end_colSelection {Type I LastRead 2 FirstWrite -1}
		elbow2_colSelection {Type O LastRead -1 FirstWrite 2}
		i238_0197_0_phi_out {Type O LastRead -1 FirstWrite 2}
		i_120_out {Type O LastRead -1 FirstWrite 3}}
	execute {
		move {Type I LastRead 10 FirstWrite -1}
		stateArray_data_s {Type O LastRead -1 FirstWrite 10}
		stateArray_rows_val {Type I LastRead 1 FirstWrite -1}
		stateArray_cols_val {Type I LastRead 1 FirstWrite -1}}
	execute_Pipeline_VITIS_LOOP_106_1 {
		count_assign {Type I LastRead 0 FirstWrite -1}
		mul_ln2136 {Type I LastRead 0 FirstWrite -1}
		move {Type I LastRead 1 FirstWrite -1}}
	execute_Pipeline_VITIS_LOOP_106_16 {
		empty {Type I LastRead 0 FirstWrite -1}
		mul_ln2136 {Type I LastRead 0 FirstWrite -1}
		move {Type I LastRead 1 FirstWrite -1}}
	push_back {
		moveStream {Type O LastRead -1 FirstWrite 16}
		this_count_read {Type I LastRead 1 FirstWrite -1}
		move {Type I LastRead 16 FirstWrite -1}}
	push_back_Pipeline_VITIS_LOOP_601_1 {
		move {Type I LastRead 16 FirstWrite -1}
		moveStream {Type O LastRead -1 FirstWrite 16}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "182519", "Max" : "10196505"}
	, {"Name" : "Interval", "Min" : "182520", "Max" : "10196506"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 8 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 64 }  { m_axi_gmem0_WSTRB STRB 1 8 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 8 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 64 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	gmem5 { m_axi {  { m_axi_gmem5_AWVALID VALID 1 1 }  { m_axi_gmem5_AWREADY READY 0 1 }  { m_axi_gmem5_AWADDR ADDR 1 64 }  { m_axi_gmem5_AWID ID 1 1 }  { m_axi_gmem5_AWLEN SIZE 1 8 }  { m_axi_gmem5_AWSIZE BURST 1 3 }  { m_axi_gmem5_AWBURST LOCK 1 2 }  { m_axi_gmem5_AWLOCK CACHE 1 2 }  { m_axi_gmem5_AWCACHE PROT 1 4 }  { m_axi_gmem5_AWPROT QOS 1 3 }  { m_axi_gmem5_AWQOS REGION 1 4 }  { m_axi_gmem5_AWREGION USER 1 4 }  { m_axi_gmem5_AWUSER DATA 1 1 }  { m_axi_gmem5_WVALID VALID 1 1 }  { m_axi_gmem5_WREADY READY 0 1 }  { m_axi_gmem5_WDATA FIFONUM 1 512 }  { m_axi_gmem5_WSTRB STRB 1 64 }  { m_axi_gmem5_WLAST LAST 1 1 }  { m_axi_gmem5_WID ID 1 1 }  { m_axi_gmem5_WUSER DATA 1 1 }  { m_axi_gmem5_ARVALID VALID 1 1 }  { m_axi_gmem5_ARREADY READY 0 1 }  { m_axi_gmem5_ARADDR ADDR 1 64 }  { m_axi_gmem5_ARID ID 1 1 }  { m_axi_gmem5_ARLEN SIZE 1 8 }  { m_axi_gmem5_ARSIZE BURST 1 3 }  { m_axi_gmem5_ARBURST LOCK 1 2 }  { m_axi_gmem5_ARLOCK CACHE 1 2 }  { m_axi_gmem5_ARCACHE PROT 1 4 }  { m_axi_gmem5_ARPROT QOS 1 3 }  { m_axi_gmem5_ARQOS REGION 1 4 }  { m_axi_gmem5_ARREGION USER 1 4 }  { m_axi_gmem5_ARUSER DATA 1 1 }  { m_axi_gmem5_RVALID VALID 0 1 }  { m_axi_gmem5_RREADY READY 1 1 }  { m_axi_gmem5_RDATA FIFONUM 0 512 }  { m_axi_gmem5_RLAST LAST 0 1 }  { m_axi_gmem5_RID ID 0 1 }  { m_axi_gmem5_RUSER DATA 0 1 }  { m_axi_gmem5_RRESP RESP 0 2 }  { m_axi_gmem5_BVALID VALID 0 1 }  { m_axi_gmem5_BREADY READY 1 1 }  { m_axi_gmem5_BRESP RESP 0 2 }  { m_axi_gmem5_BID ID 0 1 }  { m_axi_gmem5_BUSER DATA 0 1 } } }
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 8 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 32 }  { m_axi_gmem1_WSTRB STRB 1 4 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 8 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 32 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	gmem2 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN SIZE 1 8 }  { m_axi_gmem2_AWSIZE BURST 1 3 }  { m_axi_gmem2_AWBURST LOCK 1 2 }  { m_axi_gmem2_AWLOCK CACHE 1 2 }  { m_axi_gmem2_AWCACHE PROT 1 4 }  { m_axi_gmem2_AWPROT QOS 1 3 }  { m_axi_gmem2_AWQOS REGION 1 4 }  { m_axi_gmem2_AWREGION USER 1 4 }  { m_axi_gmem2_AWUSER DATA 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA FIFONUM 1 32 }  { m_axi_gmem2_WSTRB STRB 1 4 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER DATA 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN SIZE 1 8 }  { m_axi_gmem2_ARSIZE BURST 1 3 }  { m_axi_gmem2_ARBURST LOCK 1 2 }  { m_axi_gmem2_ARLOCK CACHE 1 2 }  { m_axi_gmem2_ARCACHE PROT 1 4 }  { m_axi_gmem2_ARPROT QOS 1 3 }  { m_axi_gmem2_ARQOS REGION 1 4 }  { m_axi_gmem2_ARREGION USER 1 4 }  { m_axi_gmem2_ARUSER DATA 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA FIFONUM 0 32 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RUSER DATA 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER DATA 0 1 } } }
	gmem6 { m_axi {  { m_axi_gmem6_AWVALID VALID 1 1 }  { m_axi_gmem6_AWREADY READY 0 1 }  { m_axi_gmem6_AWADDR ADDR 1 64 }  { m_axi_gmem6_AWID ID 1 1 }  { m_axi_gmem6_AWLEN SIZE 1 8 }  { m_axi_gmem6_AWSIZE BURST 1 3 }  { m_axi_gmem6_AWBURST LOCK 1 2 }  { m_axi_gmem6_AWLOCK CACHE 1 2 }  { m_axi_gmem6_AWCACHE PROT 1 4 }  { m_axi_gmem6_AWPROT QOS 1 3 }  { m_axi_gmem6_AWQOS REGION 1 4 }  { m_axi_gmem6_AWREGION USER 1 4 }  { m_axi_gmem6_AWUSER DATA 1 1 }  { m_axi_gmem6_WVALID VALID 1 1 }  { m_axi_gmem6_WREADY READY 0 1 }  { m_axi_gmem6_WDATA FIFONUM 1 512 }  { m_axi_gmem6_WSTRB STRB 1 64 }  { m_axi_gmem6_WLAST LAST 1 1 }  { m_axi_gmem6_WID ID 1 1 }  { m_axi_gmem6_WUSER DATA 1 1 }  { m_axi_gmem6_ARVALID VALID 1 1 }  { m_axi_gmem6_ARREADY READY 0 1 }  { m_axi_gmem6_ARADDR ADDR 1 64 }  { m_axi_gmem6_ARID ID 1 1 }  { m_axi_gmem6_ARLEN SIZE 1 8 }  { m_axi_gmem6_ARSIZE BURST 1 3 }  { m_axi_gmem6_ARBURST LOCK 1 2 }  { m_axi_gmem6_ARLOCK CACHE 1 2 }  { m_axi_gmem6_ARCACHE PROT 1 4 }  { m_axi_gmem6_ARPROT QOS 1 3 }  { m_axi_gmem6_ARQOS REGION 1 4 }  { m_axi_gmem6_ARREGION USER 1 4 }  { m_axi_gmem6_ARUSER DATA 1 1 }  { m_axi_gmem6_RVALID VALID 0 1 }  { m_axi_gmem6_RREADY READY 1 1 }  { m_axi_gmem6_RDATA FIFONUM 0 512 }  { m_axi_gmem6_RLAST LAST 0 1 }  { m_axi_gmem6_RID ID 0 1 }  { m_axi_gmem6_RUSER DATA 0 1 }  { m_axi_gmem6_RRESP RESP 0 2 }  { m_axi_gmem6_BVALID VALID 0 1 }  { m_axi_gmem6_BREADY READY 1 1 }  { m_axi_gmem6_BRESP RESP 0 2 }  { m_axi_gmem6_BID ID 0 1 }  { m_axi_gmem6_BUSER DATA 0 1 } } }
	gmem3 { m_axi {  { m_axi_gmem3_AWVALID VALID 1 1 }  { m_axi_gmem3_AWREADY READY 0 1 }  { m_axi_gmem3_AWADDR ADDR 1 64 }  { m_axi_gmem3_AWID ID 1 1 }  { m_axi_gmem3_AWLEN SIZE 1 8 }  { m_axi_gmem3_AWSIZE BURST 1 3 }  { m_axi_gmem3_AWBURST LOCK 1 2 }  { m_axi_gmem3_AWLOCK CACHE 1 2 }  { m_axi_gmem3_AWCACHE PROT 1 4 }  { m_axi_gmem3_AWPROT QOS 1 3 }  { m_axi_gmem3_AWQOS REGION 1 4 }  { m_axi_gmem3_AWREGION USER 1 4 }  { m_axi_gmem3_AWUSER DATA 1 1 }  { m_axi_gmem3_WVALID VALID 1 1 }  { m_axi_gmem3_WREADY READY 0 1 }  { m_axi_gmem3_WDATA FIFONUM 1 32 }  { m_axi_gmem3_WSTRB STRB 1 4 }  { m_axi_gmem3_WLAST LAST 1 1 }  { m_axi_gmem3_WID ID 1 1 }  { m_axi_gmem3_WUSER DATA 1 1 }  { m_axi_gmem3_ARVALID VALID 1 1 }  { m_axi_gmem3_ARREADY READY 0 1 }  { m_axi_gmem3_ARADDR ADDR 1 64 }  { m_axi_gmem3_ARID ID 1 1 }  { m_axi_gmem3_ARLEN SIZE 1 8 }  { m_axi_gmem3_ARSIZE BURST 1 3 }  { m_axi_gmem3_ARBURST LOCK 1 2 }  { m_axi_gmem3_ARLOCK CACHE 1 2 }  { m_axi_gmem3_ARCACHE PROT 1 4 }  { m_axi_gmem3_ARPROT QOS 1 3 }  { m_axi_gmem3_ARQOS REGION 1 4 }  { m_axi_gmem3_ARREGION USER 1 4 }  { m_axi_gmem3_ARUSER DATA 1 1 }  { m_axi_gmem3_RVALID VALID 0 1 }  { m_axi_gmem3_RREADY READY 1 1 }  { m_axi_gmem3_RDATA FIFONUM 0 32 }  { m_axi_gmem3_RLAST LAST 0 1 }  { m_axi_gmem3_RID ID 0 1 }  { m_axi_gmem3_RUSER DATA 0 1 }  { m_axi_gmem3_RRESP RESP 0 2 }  { m_axi_gmem3_BVALID VALID 0 1 }  { m_axi_gmem3_BREADY READY 1 1 }  { m_axi_gmem3_BRESP RESP 0 2 }  { m_axi_gmem3_BID ID 0 1 }  { m_axi_gmem3_BUSER DATA 0 1 } } }
	gmem4 { m_axi {  { m_axi_gmem4_AWVALID VALID 1 1 }  { m_axi_gmem4_AWREADY READY 0 1 }  { m_axi_gmem4_AWADDR ADDR 1 64 }  { m_axi_gmem4_AWID ID 1 1 }  { m_axi_gmem4_AWLEN SIZE 1 8 }  { m_axi_gmem4_AWSIZE BURST 1 3 }  { m_axi_gmem4_AWBURST LOCK 1 2 }  { m_axi_gmem4_AWLOCK CACHE 1 2 }  { m_axi_gmem4_AWCACHE PROT 1 4 }  { m_axi_gmem4_AWPROT QOS 1 3 }  { m_axi_gmem4_AWQOS REGION 1 4 }  { m_axi_gmem4_AWREGION USER 1 4 }  { m_axi_gmem4_AWUSER DATA 1 1 }  { m_axi_gmem4_WVALID VALID 1 1 }  { m_axi_gmem4_WREADY READY 0 1 }  { m_axi_gmem4_WDATA FIFONUM 1 32 }  { m_axi_gmem4_WSTRB STRB 1 4 }  { m_axi_gmem4_WLAST LAST 1 1 }  { m_axi_gmem4_WID ID 1 1 }  { m_axi_gmem4_WUSER DATA 1 1 }  { m_axi_gmem4_ARVALID VALID 1 1 }  { m_axi_gmem4_ARREADY READY 0 1 }  { m_axi_gmem4_ARADDR ADDR 1 64 }  { m_axi_gmem4_ARID ID 1 1 }  { m_axi_gmem4_ARLEN SIZE 1 8 }  { m_axi_gmem4_ARSIZE BURST 1 3 }  { m_axi_gmem4_ARBURST LOCK 1 2 }  { m_axi_gmem4_ARLOCK CACHE 1 2 }  { m_axi_gmem4_ARCACHE PROT 1 4 }  { m_axi_gmem4_ARPROT QOS 1 3 }  { m_axi_gmem4_ARQOS REGION 1 4 }  { m_axi_gmem4_ARREGION USER 1 4 }  { m_axi_gmem4_ARUSER DATA 1 1 }  { m_axi_gmem4_RVALID VALID 0 1 }  { m_axi_gmem4_RREADY READY 1 1 }  { m_axi_gmem4_RDATA FIFONUM 0 32 }  { m_axi_gmem4_RLAST LAST 0 1 }  { m_axi_gmem4_RID ID 0 1 }  { m_axi_gmem4_RUSER DATA 0 1 }  { m_axi_gmem4_RRESP RESP 0 2 }  { m_axi_gmem4_BVALID VALID 0 1 }  { m_axi_gmem4_BREADY READY 1 1 }  { m_axi_gmem4_BRESP RESP 0 2 }  { m_axi_gmem4_BID ID 0 1 }  { m_axi_gmem4_BUSER DATA 0 1 } } }
	moveStream { axis {  { moveStream_TDATA out_data 1 512 }  { moveStream_TVALID out_vld 1 1 }  { moveStream_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem0 { CHANNEL_NUM 0 BUNDLE gmem0 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem1 { CHANNEL_NUM 0 BUNDLE gmem1 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem2 { CHANNEL_NUM 0 BUNDLE gmem2 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem3 { CHANNEL_NUM 0 BUNDLE gmem3 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}
dict set maxi_interface_dict gmem4 { CHANNEL_NUM 0 BUNDLE gmem4 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem5 { CHANNEL_NUM 0 BUNDLE gmem5 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem6 { CHANNEL_NUM 0 BUNDLE gmem6 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem0 1 }
	{ gmem5 1 }
	{ gmem1 1 }
	{ gmem2 1 }
	{ gmem6 1 }
	{ gmem3 1 }
	{ gmem4 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem0 1 }
	{ gmem5 1 }
	{ gmem1 1 }
	{ gmem2 1 }
	{ gmem6 1 }
	{ gmem3 1 }
	{ gmem4 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
