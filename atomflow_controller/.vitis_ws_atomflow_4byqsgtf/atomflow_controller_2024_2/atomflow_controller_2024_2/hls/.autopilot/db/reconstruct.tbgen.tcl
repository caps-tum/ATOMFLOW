set moduleName reconstruct
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
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
set C_modelName {reconstruct}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict emissions_0 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict emissions_1 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict emissions_2 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict emissions_3 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict emissions_4 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict emissions_5 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict emissions_6 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict emissions_7 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ atomLocationsSize int 32 regular  }
	{ projShape0 int 32 regular  }
	{ projShape1 int 32 regular  }
	{ gmem0 int 64 regular {axi_master 0}  }
	{ atomLocations int 64 regular  }
	{ psfSupersample int 32 regular  }
	{ gmem5 int 512 regular {axi_master 0}  }
	{ imageProjs_local int 64 regular  }
	{ imageProjs_0_0_val float 32 regular  }
	{ gmem6 int 512 regular {axi_master 0}  }
	{ fullImage int 64 regular  }
	{ emissions_0 float 32 regular {array 250 { 0 3 } 0 1 }  }
	{ emissions_1 float 32 regular {array 250 { 0 3 } 0 1 }  }
	{ emissions_2 float 32 regular {array 250 { 0 3 } 0 1 }  }
	{ emissions_3 float 32 regular {array 250 { 0 3 } 0 1 }  }
	{ emissions_4 float 32 regular {array 250 { 0 3 } 0 1 }  }
	{ emissions_5 float 32 regular {array 250 { 0 3 } 0 1 }  }
	{ emissions_6 float 32 regular {array 250 { 0 3 } 0 1 }  }
	{ emissions_7 float 32 regular {array 250 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "atomLocationsSize", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "projShape0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "projShape1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "atomLocations","offset": { "type": "dynamic","port_name": "atomLocations","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "atomLocations", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "psfSupersample", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gmem5", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "imageProjs_local","offset": { "type": "dynamic","port_name": "imageProjs_local","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "imageProjs_local", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "imageProjs_0_0_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gmem6", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "fullImage","offset": { "type": "dynamic","port_name": "fullImage","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "fullImage", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "emissions_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "emissions_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "emissions_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "emissions_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "emissions_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "emissions_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "emissions_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "emissions_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 240
set portList { 
	{ atomLocationsSize sc_in sc_lv 32 signal 0 } 
	{ projShape0 sc_in sc_lv 32 signal 1 } 
	{ projShape1 sc_in sc_lv 32 signal 2 } 
	{ m_axi_gmem0_0_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem0_0_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem0_0_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem0_0_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem0_0_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem0_0_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem0_0_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem0_0_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem0_0_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem0_0_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem0_0_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem0_0_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem0_0_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem0_0_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem0_0_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem0_0_WDATA sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem0_0_WSTRB sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem0_0_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem0_0_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem0_0_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem0_0_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem0_0_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem0_0_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem0_0_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem0_0_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem0_0_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem0_0_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem0_0_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem0_0_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem0_0_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem0_0_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem0_0_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem0_0_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem0_0_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem0_0_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem0_0_RDATA sc_in sc_lv 64 signal 3 } 
	{ m_axi_gmem0_0_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem0_0_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem0_0_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_gmem0_0_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem0_0_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem0_0_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem0_0_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem0_0_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem0_0_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem0_0_BUSER sc_in sc_lv 1 signal 3 } 
	{ atomLocations sc_in sc_lv 64 signal 4 } 
	{ psfSupersample sc_in sc_lv 32 signal 5 } 
	{ m_axi_gmem5_0_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem5_0_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem5_0_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem5_0_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem5_0_AWLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_gmem5_0_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem5_0_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem5_0_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem5_0_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem5_0_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem5_0_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem5_0_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem5_0_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem5_0_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem5_0_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem5_0_WDATA sc_out sc_lv 512 signal 6 } 
	{ m_axi_gmem5_0_WSTRB sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem5_0_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem5_0_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem5_0_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem5_0_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem5_0_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem5_0_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem5_0_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem5_0_ARLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_gmem5_0_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem5_0_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem5_0_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem5_0_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem5_0_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem5_0_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem5_0_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem5_0_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem5_0_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem5_0_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem5_0_RDATA sc_in sc_lv 512 signal 6 } 
	{ m_axi_gmem5_0_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem5_0_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem5_0_RFIFONUM sc_in sc_lv 9 signal 6 } 
	{ m_axi_gmem5_0_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem5_0_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem5_0_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem5_0_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem5_0_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem5_0_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem5_0_BUSER sc_in sc_lv 1 signal 6 } 
	{ imageProjs_local sc_in sc_lv 64 signal 7 } 
	{ imageProjs_0_0_val sc_in sc_lv 32 signal 8 } 
	{ m_axi_gmem6_0_AWVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_gmem6_0_AWREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_gmem6_0_AWADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_gmem6_0_AWID sc_out sc_lv 1 signal 9 } 
	{ m_axi_gmem6_0_AWLEN sc_out sc_lv 32 signal 9 } 
	{ m_axi_gmem6_0_AWSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_gmem6_0_AWBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_gmem6_0_AWLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_gmem6_0_AWCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_gmem6_0_AWPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_gmem6_0_AWQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_gmem6_0_AWREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_gmem6_0_AWUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_gmem6_0_WVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_gmem6_0_WREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_gmem6_0_WDATA sc_out sc_lv 512 signal 9 } 
	{ m_axi_gmem6_0_WSTRB sc_out sc_lv 64 signal 9 } 
	{ m_axi_gmem6_0_WLAST sc_out sc_logic 1 signal 9 } 
	{ m_axi_gmem6_0_WID sc_out sc_lv 1 signal 9 } 
	{ m_axi_gmem6_0_WUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_gmem6_0_ARVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_gmem6_0_ARREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_gmem6_0_ARADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_gmem6_0_ARID sc_out sc_lv 1 signal 9 } 
	{ m_axi_gmem6_0_ARLEN sc_out sc_lv 32 signal 9 } 
	{ m_axi_gmem6_0_ARSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_gmem6_0_ARBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_gmem6_0_ARLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_gmem6_0_ARCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_gmem6_0_ARPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_gmem6_0_ARQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_gmem6_0_ARREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_gmem6_0_ARUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_gmem6_0_RVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_gmem6_0_RREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_gmem6_0_RDATA sc_in sc_lv 512 signal 9 } 
	{ m_axi_gmem6_0_RLAST sc_in sc_logic 1 signal 9 } 
	{ m_axi_gmem6_0_RID sc_in sc_lv 1 signal 9 } 
	{ m_axi_gmem6_0_RFIFONUM sc_in sc_lv 9 signal 9 } 
	{ m_axi_gmem6_0_RUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_gmem6_0_RRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_gmem6_0_BVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_gmem6_0_BREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_gmem6_0_BRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_gmem6_0_BID sc_in sc_lv 1 signal 9 } 
	{ m_axi_gmem6_0_BUSER sc_in sc_lv 1 signal 9 } 
	{ fullImage sc_in sc_lv 64 signal 10 } 
	{ emissions_0_address0 sc_out sc_lv 8 signal 11 } 
	{ emissions_0_ce0 sc_out sc_logic 1 signal 11 } 
	{ emissions_0_d0 sc_out sc_lv 32 signal 11 } 
	{ emissions_0_q0 sc_in sc_lv 32 signal 11 } 
	{ emissions_0_we0 sc_out sc_logic 1 signal 11 } 
	{ emissions_0_address1 sc_out sc_lv 8 signal 11 } 
	{ emissions_0_ce1 sc_out sc_logic 1 signal 11 } 
	{ emissions_0_d1 sc_out sc_lv 32 signal 11 } 
	{ emissions_0_q1 sc_in sc_lv 32 signal 11 } 
	{ emissions_0_we1 sc_out sc_logic 1 signal 11 } 
	{ emissions_1_address0 sc_out sc_lv 8 signal 12 } 
	{ emissions_1_ce0 sc_out sc_logic 1 signal 12 } 
	{ emissions_1_d0 sc_out sc_lv 32 signal 12 } 
	{ emissions_1_q0 sc_in sc_lv 32 signal 12 } 
	{ emissions_1_we0 sc_out sc_logic 1 signal 12 } 
	{ emissions_1_address1 sc_out sc_lv 8 signal 12 } 
	{ emissions_1_ce1 sc_out sc_logic 1 signal 12 } 
	{ emissions_1_d1 sc_out sc_lv 32 signal 12 } 
	{ emissions_1_q1 sc_in sc_lv 32 signal 12 } 
	{ emissions_1_we1 sc_out sc_logic 1 signal 12 } 
	{ emissions_2_address0 sc_out sc_lv 8 signal 13 } 
	{ emissions_2_ce0 sc_out sc_logic 1 signal 13 } 
	{ emissions_2_d0 sc_out sc_lv 32 signal 13 } 
	{ emissions_2_q0 sc_in sc_lv 32 signal 13 } 
	{ emissions_2_we0 sc_out sc_logic 1 signal 13 } 
	{ emissions_2_address1 sc_out sc_lv 8 signal 13 } 
	{ emissions_2_ce1 sc_out sc_logic 1 signal 13 } 
	{ emissions_2_d1 sc_out sc_lv 32 signal 13 } 
	{ emissions_2_q1 sc_in sc_lv 32 signal 13 } 
	{ emissions_2_we1 sc_out sc_logic 1 signal 13 } 
	{ emissions_3_address0 sc_out sc_lv 8 signal 14 } 
	{ emissions_3_ce0 sc_out sc_logic 1 signal 14 } 
	{ emissions_3_d0 sc_out sc_lv 32 signal 14 } 
	{ emissions_3_q0 sc_in sc_lv 32 signal 14 } 
	{ emissions_3_we0 sc_out sc_logic 1 signal 14 } 
	{ emissions_3_address1 sc_out sc_lv 8 signal 14 } 
	{ emissions_3_ce1 sc_out sc_logic 1 signal 14 } 
	{ emissions_3_d1 sc_out sc_lv 32 signal 14 } 
	{ emissions_3_q1 sc_in sc_lv 32 signal 14 } 
	{ emissions_3_we1 sc_out sc_logic 1 signal 14 } 
	{ emissions_4_address0 sc_out sc_lv 8 signal 15 } 
	{ emissions_4_ce0 sc_out sc_logic 1 signal 15 } 
	{ emissions_4_d0 sc_out sc_lv 32 signal 15 } 
	{ emissions_4_q0 sc_in sc_lv 32 signal 15 } 
	{ emissions_4_we0 sc_out sc_logic 1 signal 15 } 
	{ emissions_4_address1 sc_out sc_lv 8 signal 15 } 
	{ emissions_4_ce1 sc_out sc_logic 1 signal 15 } 
	{ emissions_4_d1 sc_out sc_lv 32 signal 15 } 
	{ emissions_4_q1 sc_in sc_lv 32 signal 15 } 
	{ emissions_4_we1 sc_out sc_logic 1 signal 15 } 
	{ emissions_5_address0 sc_out sc_lv 8 signal 16 } 
	{ emissions_5_ce0 sc_out sc_logic 1 signal 16 } 
	{ emissions_5_d0 sc_out sc_lv 32 signal 16 } 
	{ emissions_5_q0 sc_in sc_lv 32 signal 16 } 
	{ emissions_5_we0 sc_out sc_logic 1 signal 16 } 
	{ emissions_5_address1 sc_out sc_lv 8 signal 16 } 
	{ emissions_5_ce1 sc_out sc_logic 1 signal 16 } 
	{ emissions_5_d1 sc_out sc_lv 32 signal 16 } 
	{ emissions_5_q1 sc_in sc_lv 32 signal 16 } 
	{ emissions_5_we1 sc_out sc_logic 1 signal 16 } 
	{ emissions_6_address0 sc_out sc_lv 8 signal 17 } 
	{ emissions_6_ce0 sc_out sc_logic 1 signal 17 } 
	{ emissions_6_d0 sc_out sc_lv 32 signal 17 } 
	{ emissions_6_q0 sc_in sc_lv 32 signal 17 } 
	{ emissions_6_we0 sc_out sc_logic 1 signal 17 } 
	{ emissions_6_address1 sc_out sc_lv 8 signal 17 } 
	{ emissions_6_ce1 sc_out sc_logic 1 signal 17 } 
	{ emissions_6_d1 sc_out sc_lv 32 signal 17 } 
	{ emissions_6_q1 sc_in sc_lv 32 signal 17 } 
	{ emissions_6_we1 sc_out sc_logic 1 signal 17 } 
	{ emissions_7_address0 sc_out sc_lv 8 signal 18 } 
	{ emissions_7_ce0 sc_out sc_logic 1 signal 18 } 
	{ emissions_7_d0 sc_out sc_lv 32 signal 18 } 
	{ emissions_7_q0 sc_in sc_lv 32 signal 18 } 
	{ emissions_7_we0 sc_out sc_logic 1 signal 18 } 
	{ emissions_7_address1 sc_out sc_lv 8 signal 18 } 
	{ emissions_7_ce1 sc_out sc_logic 1 signal 18 } 
	{ emissions_7_d1 sc_out sc_lv 32 signal 18 } 
	{ emissions_7_q1 sc_in sc_lv 32 signal 18 } 
	{ emissions_7_we1 sc_out sc_logic 1 signal 18 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ psfSupersample_ap_vld sc_in sc_logic 1 invld 5 } 
	{ projShape0_ap_vld sc_in sc_logic 1 invld 1 } 
	{ projShape1_ap_vld sc_in sc_logic 1 invld 2 } 
	{ atomLocations_ap_vld sc_in sc_logic 1 invld 4 } 
	{ fullImage_ap_vld sc_in sc_logic 1 invld 10 } 
	{ imageProjs_local_ap_vld sc_in sc_logic 1 invld 7 } 
	{ imageProjs_0_0_val_ap_vld sc_in sc_logic 1 invld 8 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "atomLocationsSize", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "atomLocationsSize", "role": "default" }} , 
 	{ "name": "projShape0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "projShape0", "role": "default" }} , 
 	{ "name": "projShape1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "projShape1", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem0_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem0_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem0_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem0_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem0_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem0_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem0_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem0_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem0_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem0_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem0_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem0_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem0_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem0_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem0_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem0_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem0_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem0_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem0_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem0_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem0_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem0_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem0_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem0_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem0_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem0_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem0_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem0_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem0_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem0_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem0_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem0_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem0_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem0_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem0_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem0_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem0_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem0_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_BUSER" }} , 
 	{ "name": "atomLocations", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "atomLocations", "role": "default" }} , 
 	{ "name": "psfSupersample", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "psfSupersample", "role": "default" }} , 
 	{ "name": "m_axi_gmem5_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem5_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem5_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem5_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem5_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem5_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem5_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem5_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem5_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem5_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem5_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem5_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem5_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem5_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem5_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem5_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem5", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem5_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem5", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem5_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem5_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem5_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem5_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem5_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem5_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem5_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem5_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem5_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem5_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem5_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem5_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem5_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem5_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem5_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem5_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem5_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem5_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem5_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem5", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem5_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem5_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem5_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem5", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem5_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem5_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem5_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem5_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem5_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem5_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem5_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_BUSER" }} , 
 	{ "name": "imageProjs_local", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "default" }} , 
 	{ "name": "imageProjs_0_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imageProjs_0_0_val", "role": "default" }} , 
 	{ "name": "m_axi_gmem6_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem6_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem6_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem6", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem6_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem6_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem6", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem6_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem6", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem6_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem6_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem6_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem6_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem6", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem6_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem6_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem6_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem6_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem6_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem6_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem6", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem6_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem6", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem6_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem6_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem6_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem6_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem6_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem6_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem6", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem6_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem6_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem6", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem6_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem6", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem6_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem6_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem6_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem6_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem6", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem6_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem6_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem6_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem6_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem6_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem6_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem6", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem6_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem6_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem6_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem6", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem6_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem6_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem6_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem6_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem6_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem6_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem6_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "0_BUSER" }} , 
 	{ "name": "fullImage", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fullImage", "role": "default" }} , 
 	{ "name": "emissions_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_0", "role": "address0" }} , 
 	{ "name": "emissions_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_0", "role": "ce0" }} , 
 	{ "name": "emissions_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_0", "role": "d0" }} , 
 	{ "name": "emissions_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_0", "role": "q0" }} , 
 	{ "name": "emissions_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_0", "role": "we0" }} , 
 	{ "name": "emissions_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_0", "role": "address1" }} , 
 	{ "name": "emissions_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_0", "role": "ce1" }} , 
 	{ "name": "emissions_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_0", "role": "d1" }} , 
 	{ "name": "emissions_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_0", "role": "q1" }} , 
 	{ "name": "emissions_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_0", "role": "we1" }} , 
 	{ "name": "emissions_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_1", "role": "address0" }} , 
 	{ "name": "emissions_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_1", "role": "ce0" }} , 
 	{ "name": "emissions_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_1", "role": "d0" }} , 
 	{ "name": "emissions_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_1", "role": "q0" }} , 
 	{ "name": "emissions_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_1", "role": "we0" }} , 
 	{ "name": "emissions_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_1", "role": "address1" }} , 
 	{ "name": "emissions_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_1", "role": "ce1" }} , 
 	{ "name": "emissions_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_1", "role": "d1" }} , 
 	{ "name": "emissions_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_1", "role": "q1" }} , 
 	{ "name": "emissions_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_1", "role": "we1" }} , 
 	{ "name": "emissions_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_2", "role": "address0" }} , 
 	{ "name": "emissions_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_2", "role": "ce0" }} , 
 	{ "name": "emissions_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_2", "role": "d0" }} , 
 	{ "name": "emissions_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_2", "role": "q0" }} , 
 	{ "name": "emissions_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_2", "role": "we0" }} , 
 	{ "name": "emissions_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_2", "role": "address1" }} , 
 	{ "name": "emissions_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_2", "role": "ce1" }} , 
 	{ "name": "emissions_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_2", "role": "d1" }} , 
 	{ "name": "emissions_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_2", "role": "q1" }} , 
 	{ "name": "emissions_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_2", "role": "we1" }} , 
 	{ "name": "emissions_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_3", "role": "address0" }} , 
 	{ "name": "emissions_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_3", "role": "ce0" }} , 
 	{ "name": "emissions_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_3", "role": "d0" }} , 
 	{ "name": "emissions_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_3", "role": "q0" }} , 
 	{ "name": "emissions_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_3", "role": "we0" }} , 
 	{ "name": "emissions_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_3", "role": "address1" }} , 
 	{ "name": "emissions_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_3", "role": "ce1" }} , 
 	{ "name": "emissions_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_3", "role": "d1" }} , 
 	{ "name": "emissions_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_3", "role": "q1" }} , 
 	{ "name": "emissions_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_3", "role": "we1" }} , 
 	{ "name": "emissions_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_4", "role": "address0" }} , 
 	{ "name": "emissions_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_4", "role": "ce0" }} , 
 	{ "name": "emissions_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_4", "role": "d0" }} , 
 	{ "name": "emissions_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_4", "role": "q0" }} , 
 	{ "name": "emissions_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_4", "role": "we0" }} , 
 	{ "name": "emissions_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_4", "role": "address1" }} , 
 	{ "name": "emissions_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_4", "role": "ce1" }} , 
 	{ "name": "emissions_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_4", "role": "d1" }} , 
 	{ "name": "emissions_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_4", "role": "q1" }} , 
 	{ "name": "emissions_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_4", "role": "we1" }} , 
 	{ "name": "emissions_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_5", "role": "address0" }} , 
 	{ "name": "emissions_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_5", "role": "ce0" }} , 
 	{ "name": "emissions_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_5", "role": "d0" }} , 
 	{ "name": "emissions_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_5", "role": "q0" }} , 
 	{ "name": "emissions_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_5", "role": "we0" }} , 
 	{ "name": "emissions_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_5", "role": "address1" }} , 
 	{ "name": "emissions_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_5", "role": "ce1" }} , 
 	{ "name": "emissions_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_5", "role": "d1" }} , 
 	{ "name": "emissions_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_5", "role": "q1" }} , 
 	{ "name": "emissions_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_5", "role": "we1" }} , 
 	{ "name": "emissions_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_6", "role": "address0" }} , 
 	{ "name": "emissions_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_6", "role": "ce0" }} , 
 	{ "name": "emissions_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_6", "role": "d0" }} , 
 	{ "name": "emissions_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_6", "role": "q0" }} , 
 	{ "name": "emissions_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_6", "role": "we0" }} , 
 	{ "name": "emissions_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_6", "role": "address1" }} , 
 	{ "name": "emissions_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_6", "role": "ce1" }} , 
 	{ "name": "emissions_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_6", "role": "d1" }} , 
 	{ "name": "emissions_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_6", "role": "q1" }} , 
 	{ "name": "emissions_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_6", "role": "we1" }} , 
 	{ "name": "emissions_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_7", "role": "address0" }} , 
 	{ "name": "emissions_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_7", "role": "ce0" }} , 
 	{ "name": "emissions_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_7", "role": "d0" }} , 
 	{ "name": "emissions_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_7", "role": "q0" }} , 
 	{ "name": "emissions_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_7", "role": "we0" }} , 
 	{ "name": "emissions_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_7", "role": "address1" }} , 
 	{ "name": "emissions_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_7", "role": "ce1" }} , 
 	{ "name": "emissions_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_7", "role": "d1" }} , 
 	{ "name": "emissions_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_7", "role": "q1" }} , 
 	{ "name": "emissions_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_7", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "psfSupersample_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "psfSupersample", "role": "ap_vld" }} , 
 	{ "name": "projShape0_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "projShape0", "role": "ap_vld" }} , 
 	{ "name": "projShape1_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "projShape1", "role": "ap_vld" }} , 
 	{ "name": "atomLocations_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "atomLocations", "role": "ap_vld" }} , 
 	{ "name": "fullImage_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "fullImage", "role": "ap_vld" }} , 
 	{ "name": "imageProjs_local_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "imageProjs_local", "role": "ap_vld" }} , 
 	{ "name": "imageProjs_0_0_val_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "imageProjs_0_0_val", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
			{"ID" : "1", "Name" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0"}],
		"Port" : [
			{"Name" : "atomLocationsSize", "Type" : "None", "Direction" : "I"},
			{"Name" : "projShape0", "Type" : "None", "Direction" : "I"},
			{"Name" : "projShape1", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "gmem0"}]},
			{"Name" : "atomLocations", "Type" : "None", "Direction" : "I"},
			{"Name" : "psfSupersample", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem5", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "gmem5"}]},
			{"Name" : "imageProjs_local", "Type" : "None", "Direction" : "I"},
			{"Name" : "imageProjs_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem6", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "gmem6"}]},
			{"Name" : "fullImage", "Type" : "None", "Direction" : "I"},
			{"Name" : "emissions_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "emissions_0"}]},
			{"Name" : "emissions_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "emissions_1"}]},
			{"Name" : "emissions_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "emissions_2"}]},
			{"Name" : "emissions_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "emissions_3"}]},
			{"Name" : "emissions_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "emissions_4"}]},
			{"Name" : "emissions_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "emissions_5"}]},
			{"Name" : "emissions_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "emissions_6"}]},
			{"Name" : "emissions_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "emissions_7"}]},
			{"Name" : "mask_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "mask_table"}]},
			{"Name" : "one_half_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Port" : "one_half_table"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_241_1", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "78", "82", "271", "275", "276", "277", "278", "279", "280"],
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
			{"ID" : "64", "Name" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_1_U0"},
			{"ID" : "65", "Name" : "getLocalImages_single_U0"},
			{"ID" : "78", "Name" : "Image_extract_next_U0"}],
		"OutputProcess" : [
			{"ID" : "271", "Name" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0"}],
		"Port" : [
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "psfSupersample", "Type" : "None", "Direction" : "I"},
			{"Name" : "projShape0", "Type" : "None", "Direction" : "I"},
			{"Name" : "projShape1", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "getLocalImages_single_U0", "Port" : "gmem0"}]},
			{"Name" : "atomLocations", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem6", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "Image_extract_next_U0", "Port" : "gmem6"}]},
			{"Name" : "fullImage", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem5", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "Image_extract_next_U0", "Port" : "gmem5"}]},
			{"Name" : "imageProjs_local", "Type" : "None", "Direction" : "I"},
			{"Name" : "imageProjs_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "emissions_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0", "Port" : "emissions_0"}]},
			{"Name" : "emissions_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0", "Port" : "emissions_1"}]},
			{"Name" : "emissions_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0", "Port" : "emissions_2"}]},
			{"Name" : "emissions_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0", "Port" : "emissions_3"}]},
			{"Name" : "emissions_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0", "Port" : "emissions_4"}]},
			{"Name" : "emissions_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0", "Port" : "emissions_5"}]},
			{"Name" : "emissions_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0", "Port" : "emissions_6"}]},
			{"Name" : "emissions_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0", "Port" : "emissions_7"}]},
			{"Name" : "mask_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "getLocalImages_single_U0", "Port" : "mask_table"}]},
			{"Name" : "one_half_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "getLocalImages_single_U0", "Port" : "one_half_table"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_1_182_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_2_183_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_3_184_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_4_185_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_5_186_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_6_187_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_7_188_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_8_189_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_9_190_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_10_191_U", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_11_192_U", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_12_193_U", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_13_194_U", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_14_195_U", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_15_U", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_14_U", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_13_U", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_12_U", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_11_U", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_10_U", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_9_U", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_8_U", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_7_U", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_6_U", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_5_U", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_4_U", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_3_U", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_2_U", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_1_U", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_localImage_16_U", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_U", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_1_196_U", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_2_197_U", "Parent" : "1"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_3_198_U", "Parent" : "1"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_4_199_U", "Parent" : "1"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_5_200_U", "Parent" : "1"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_6_201_U", "Parent" : "1"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_7_202_U", "Parent" : "1"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_8_203_U", "Parent" : "1"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_9_204_U", "Parent" : "1"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_10_205_U", "Parent" : "1"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_11_206_U", "Parent" : "1"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_12_207_U", "Parent" : "1"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_13_208_U", "Parent" : "1"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_14_209_U", "Parent" : "1"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_15_U", "Parent" : "1"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_14_U", "Parent" : "1"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_13_U", "Parent" : "1"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_12_U", "Parent" : "1"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_11_U", "Parent" : "1"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_10_U", "Parent" : "1"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_9_U", "Parent" : "1"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_8_U", "Parent" : "1"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_7_U", "Parent" : "1"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_6_U", "Parent" : "1"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_5_U", "Parent" : "1"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_4_U", "Parent" : "1"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_3_U", "Parent" : "1"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_2_U", "Parent" : "1"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_1_U", "Parent" : "1"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_fullImage_16_U", "Parent" : "1"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_1_U0", "Parent" : "1",
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
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0", "Parent" : "1", "Child" : ["66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77"],
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
			{"Name" : "localImages", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["78"], "DependentChan" : "277", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "localImages_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mask_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "one_half_table", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.mask_table_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.one_half_table_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.fsub_32ns_32ns_32_4_full_dsp_1_U2", "Parent" : "65"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.fsub_32ns_32ns_32_4_full_dsp_1_U3", "Parent" : "65"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.fmul_32ns_32ns_32_3_max_dsp_1_U4", "Parent" : "65"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.fmul_32ns_32ns_32_3_max_dsp_1_U5", "Parent" : "65"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.sitofp_32ns_32_4_no_dsp_1_U6", "Parent" : "65"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.sitofp_32ns_32_4_no_dsp_1_U7", "Parent" : "65"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.sparsemux_7_2_32_1_1_U8", "Parent" : "65"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.sparsemux_7_2_32_1_1_U9", "Parent" : "65"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.sparsemux_7_2_32_1_1_U10", "Parent" : "65"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.getLocalImages_single_U0.sparsemux_7_2_32_1_1_U11", "Parent" : "65"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.Image_extract_next_U0", "Parent" : "1", "Child" : ["79"],
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
			{"Name" : "localImages", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["65"], "DependentChan" : "277", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "localImages_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem6", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "gmem6", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "fullImage", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_fullImage_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "63",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "62",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_2", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "61",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_2", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_3", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "60",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_3", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_4", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "59",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_5", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "58",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_5", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_6", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "57",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_6", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_7", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "56",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_7", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_8", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "55",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_8", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_9", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "54",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_9", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_10", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "53",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_10", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_11", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "52",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_11", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_12", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "51",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_12", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_13", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "50",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_13", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_14", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "49",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_14", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_15", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "48",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_15", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_16", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "47",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_16", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_17", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "46",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_17", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_18", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "45",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_18", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_19", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "44",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_19", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_20", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "43",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_20", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_21", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "42",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_21", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_22", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "41",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_22", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_23", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "40",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_23", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_24", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "39",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_24", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_25", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "38",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_25", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_26", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "37",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_26", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_27", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "36",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_27", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_28", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "35",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_28", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_29", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "34",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_29", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_fullImage_30", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "33",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_fullImage_30", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "gmem5", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem5_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "gmem5", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "imageProjs_local", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_localImage_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "32",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "31",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_2", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "30",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_2", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_3", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "29",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_3", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_4", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "28",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_5", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "27",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_5", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_6", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "26",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_6", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_7", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "25",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_7", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_8", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "24",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_8", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_9", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "23",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_9", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_10", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "22",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_10", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_11", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "21",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_11", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_12", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "20",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_12", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_13", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "19",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_13", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_14", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "18",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_14", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_15", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "17",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_15", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_16", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "16",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_16", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_17", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "15",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_17", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_18", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "14",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_18", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_19", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "13",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_19", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_20", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "12",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_20", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_21", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "11",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_21", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_22", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "10",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_22", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_23", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "9",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_23", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_24", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "8",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_24", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_25", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "7",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_25", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_26", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "6",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_26", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_27", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "5",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_27", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_28", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "4",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_28", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_29", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "3",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_29", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_localImage_30", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "2",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Port" : "curr_localImage_30", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "curr_imageProjs_write", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.Image_extract_next_U0.grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225", "Parent" : "78", "Child" : ["80", "81"],
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
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.Image_extract_next_U0.grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225.partselect_1024ns_1536ns_32ns_1024_1_1_U25", "Parent" : "79"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.Image_extract_next_U0.grp_Image_extract_next_Pipeline_VITIS_LOOP_95_1_fu_225.flow_control_loop_pipe_sequential_init_U", "Parent" : "79"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0", "Parent" : "1", "Child" : ["83", "175", "267", "268", "269", "270"],
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
			{"Name" : "mat_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "32"},
			{"Name" : "mat_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "31"},
			{"Name" : "mat_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "30"},
			{"Name" : "mat_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "29"},
			{"Name" : "mat_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "28"},
			{"Name" : "mat_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "27"},
			{"Name" : "mat_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "26"},
			{"Name" : "mat_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "25"},
			{"Name" : "mat_8", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "24"},
			{"Name" : "mat_9", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "23"},
			{"Name" : "mat_10", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "22"},
			{"Name" : "mat_11", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "21"},
			{"Name" : "mat_12", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "20"},
			{"Name" : "mat_13", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "19"},
			{"Name" : "mat_14", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "18"},
			{"Name" : "mat_15", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "17"},
			{"Name" : "mat_16", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "16"},
			{"Name" : "mat_17", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "15"},
			{"Name" : "mat_18", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "14"},
			{"Name" : "mat_19", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "13"},
			{"Name" : "mat_20", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "12"},
			{"Name" : "mat_21", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "11"},
			{"Name" : "mat_22", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "10"},
			{"Name" : "mat_23", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "9"},
			{"Name" : "mat_24", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "8"},
			{"Name" : "mat_25", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "7"},
			{"Name" : "mat_26", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "6"},
			{"Name" : "mat_27", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "5"},
			{"Name" : "mat_28", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "4"},
			{"Name" : "mat_29", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "3"},
			{"Name" : "mat_30", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "2"},
			{"Name" : "mat1_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "63"},
			{"Name" : "mat1_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "62"},
			{"Name" : "mat1_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "61"},
			{"Name" : "mat1_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "60"},
			{"Name" : "mat1_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "59"},
			{"Name" : "mat1_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "58"},
			{"Name" : "mat1_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "57"},
			{"Name" : "mat1_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "56"},
			{"Name" : "mat1_8", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "55"},
			{"Name" : "mat1_9", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "54"},
			{"Name" : "mat1_10", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "53"},
			{"Name" : "mat1_11", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "52"},
			{"Name" : "mat1_12", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "51"},
			{"Name" : "mat1_13", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "50"},
			{"Name" : "mat1_14", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "49"},
			{"Name" : "mat1_15", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "48"},
			{"Name" : "mat1_16", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "47"},
			{"Name" : "mat1_17", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "46"},
			{"Name" : "mat1_18", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "45"},
			{"Name" : "mat1_19", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "44"},
			{"Name" : "mat1_20", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "43"},
			{"Name" : "mat1_21", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "42"},
			{"Name" : "mat1_22", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "41"},
			{"Name" : "mat1_23", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "40"},
			{"Name" : "mat1_24", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "39"},
			{"Name" : "mat1_25", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "38"},
			{"Name" : "mat1_26", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "37"},
			{"Name" : "mat1_27", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "36"},
			{"Name" : "mat1_28", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "35"},
			{"Name" : "mat1_29", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "34"},
			{"Name" : "mat1_30", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "33"}]},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054", "Parent" : "82", "Child" : ["84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174"],
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
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U163", "Parent" : "83"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U164", "Parent" : "83"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U165", "Parent" : "83"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U166", "Parent" : "83"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U167", "Parent" : "83"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U168", "Parent" : "83"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U169", "Parent" : "83"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U170", "Parent" : "83"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U171", "Parent" : "83"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U172", "Parent" : "83"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U173", "Parent" : "83"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U174", "Parent" : "83"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U175", "Parent" : "83"},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U176", "Parent" : "83"},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U177", "Parent" : "83"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U178", "Parent" : "83"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U179", "Parent" : "83"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U180", "Parent" : "83"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U181", "Parent" : "83"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U182", "Parent" : "83"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U183", "Parent" : "83"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U184", "Parent" : "83"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U185", "Parent" : "83"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U186", "Parent" : "83"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U187", "Parent" : "83"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U188", "Parent" : "83"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U189", "Parent" : "83"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U190", "Parent" : "83"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U191", "Parent" : "83"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U192", "Parent" : "83"},
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U193", "Parent" : "83"},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U194", "Parent" : "83"},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U195", "Parent" : "83"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U196", "Parent" : "83"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U197", "Parent" : "83"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U198", "Parent" : "83"},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U199", "Parent" : "83"},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U200", "Parent" : "83"},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U201", "Parent" : "83"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U202", "Parent" : "83"},
	{"ID" : "124", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U203", "Parent" : "83"},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U204", "Parent" : "83"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U205", "Parent" : "83"},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U206", "Parent" : "83"},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U207", "Parent" : "83"},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U208", "Parent" : "83"},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U209", "Parent" : "83"},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U210", "Parent" : "83"},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U211", "Parent" : "83"},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U212", "Parent" : "83"},
	{"ID" : "134", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U213", "Parent" : "83"},
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U214", "Parent" : "83"},
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U215", "Parent" : "83"},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U216", "Parent" : "83"},
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U217", "Parent" : "83"},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U218", "Parent" : "83"},
	{"ID" : "140", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U219", "Parent" : "83"},
	{"ID" : "141", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U220", "Parent" : "83"},
	{"ID" : "142", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U221", "Parent" : "83"},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fadd_32ns_32ns_32_4_full_dsp_0_U222", "Parent" : "83"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U223", "Parent" : "83"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U224", "Parent" : "83"},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U225", "Parent" : "83"},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U226", "Parent" : "83"},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U227", "Parent" : "83"},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U228", "Parent" : "83"},
	{"ID" : "150", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U229", "Parent" : "83"},
	{"ID" : "151", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U230", "Parent" : "83"},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U231", "Parent" : "83"},
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U232", "Parent" : "83"},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U233", "Parent" : "83"},
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U234", "Parent" : "83"},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U235", "Parent" : "83"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U236", "Parent" : "83"},
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U237", "Parent" : "83"},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U238", "Parent" : "83"},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U239", "Parent" : "83"},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U240", "Parent" : "83"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U241", "Parent" : "83"},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U242", "Parent" : "83"},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U243", "Parent" : "83"},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U244", "Parent" : "83"},
	{"ID" : "166", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U245", "Parent" : "83"},
	{"ID" : "167", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U246", "Parent" : "83"},
	{"ID" : "168", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U247", "Parent" : "83"},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U248", "Parent" : "83"},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U249", "Parent" : "83"},
	{"ID" : "171", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U250", "Parent" : "83"},
	{"ID" : "172", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U251", "Parent" : "83"},
	{"ID" : "173", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U252", "Parent" : "83"},
	{"ID" : "174", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18054.fmul_32ns_32ns_32_3_max_dsp_1_U253", "Parent" : "83"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120", "Parent" : "82", "Child" : ["176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266"],
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
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U163", "Parent" : "175"},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U164", "Parent" : "175"},
	{"ID" : "178", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U165", "Parent" : "175"},
	{"ID" : "179", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U166", "Parent" : "175"},
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U167", "Parent" : "175"},
	{"ID" : "181", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U168", "Parent" : "175"},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U169", "Parent" : "175"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U170", "Parent" : "175"},
	{"ID" : "184", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U171", "Parent" : "175"},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U172", "Parent" : "175"},
	{"ID" : "186", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U173", "Parent" : "175"},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U174", "Parent" : "175"},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U175", "Parent" : "175"},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U176", "Parent" : "175"},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U177", "Parent" : "175"},
	{"ID" : "191", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U178", "Parent" : "175"},
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U179", "Parent" : "175"},
	{"ID" : "193", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U180", "Parent" : "175"},
	{"ID" : "194", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U181", "Parent" : "175"},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U182", "Parent" : "175"},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U183", "Parent" : "175"},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U184", "Parent" : "175"},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U185", "Parent" : "175"},
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U186", "Parent" : "175"},
	{"ID" : "200", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U187", "Parent" : "175"},
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U188", "Parent" : "175"},
	{"ID" : "202", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U189", "Parent" : "175"},
	{"ID" : "203", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U190", "Parent" : "175"},
	{"ID" : "204", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U191", "Parent" : "175"},
	{"ID" : "205", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U192", "Parent" : "175"},
	{"ID" : "206", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U193", "Parent" : "175"},
	{"ID" : "207", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U194", "Parent" : "175"},
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U195", "Parent" : "175"},
	{"ID" : "209", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U196", "Parent" : "175"},
	{"ID" : "210", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U197", "Parent" : "175"},
	{"ID" : "211", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U198", "Parent" : "175"},
	{"ID" : "212", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U199", "Parent" : "175"},
	{"ID" : "213", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U200", "Parent" : "175"},
	{"ID" : "214", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U201", "Parent" : "175"},
	{"ID" : "215", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U202", "Parent" : "175"},
	{"ID" : "216", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U203", "Parent" : "175"},
	{"ID" : "217", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U204", "Parent" : "175"},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U205", "Parent" : "175"},
	{"ID" : "219", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U206", "Parent" : "175"},
	{"ID" : "220", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U207", "Parent" : "175"},
	{"ID" : "221", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U208", "Parent" : "175"},
	{"ID" : "222", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U209", "Parent" : "175"},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U210", "Parent" : "175"},
	{"ID" : "224", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U211", "Parent" : "175"},
	{"ID" : "225", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U212", "Parent" : "175"},
	{"ID" : "226", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U213", "Parent" : "175"},
	{"ID" : "227", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U214", "Parent" : "175"},
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U215", "Parent" : "175"},
	{"ID" : "229", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U216", "Parent" : "175"},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U217", "Parent" : "175"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U218", "Parent" : "175"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U219", "Parent" : "175"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U220", "Parent" : "175"},
	{"ID" : "234", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U221", "Parent" : "175"},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fadd_32ns_32ns_32_4_full_dsp_0_U222", "Parent" : "175"},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U223", "Parent" : "175"},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U224", "Parent" : "175"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U225", "Parent" : "175"},
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U226", "Parent" : "175"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U227", "Parent" : "175"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U228", "Parent" : "175"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U229", "Parent" : "175"},
	{"ID" : "243", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U230", "Parent" : "175"},
	{"ID" : "244", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U231", "Parent" : "175"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U232", "Parent" : "175"},
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U233", "Parent" : "175"},
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U234", "Parent" : "175"},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U235", "Parent" : "175"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U236", "Parent" : "175"},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U237", "Parent" : "175"},
	{"ID" : "251", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U238", "Parent" : "175"},
	{"ID" : "252", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U239", "Parent" : "175"},
	{"ID" : "253", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U240", "Parent" : "175"},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U241", "Parent" : "175"},
	{"ID" : "255", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U242", "Parent" : "175"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U243", "Parent" : "175"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U244", "Parent" : "175"},
	{"ID" : "258", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U245", "Parent" : "175"},
	{"ID" : "259", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U246", "Parent" : "175"},
	{"ID" : "260", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U247", "Parent" : "175"},
	{"ID" : "261", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U248", "Parent" : "175"},
	{"ID" : "262", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U249", "Parent" : "175"},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U250", "Parent" : "175"},
	{"ID" : "264", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U251", "Parent" : "175"},
	{"ID" : "265", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U252", "Parent" : "175"},
	{"ID" : "266", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.grp_vector_sum_prod_fu_18120.fmul_32ns_32ns_32_3_max_dsp_1_U253", "Parent" : "175"},
	{"ID" : "267", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.fadd_32ns_32ns_32_4_full_dsp_0_U317", "Parent" : "82"},
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.fadd_32ns_32ns_32_4_full_dsp_0_U318", "Parent" : "82"},
	{"ID" : "269", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.fadd_32ns_32ns_32_4_full_dsp_0_U319", "Parent" : "82"},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.matrix_sum_prod_U0.fadd_32ns_32ns_32_4_full_dsp_0_U320", "Parent" : "82"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0", "Parent" : "1", "Child" : ["272"],
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["64"], "DependentChan" : "276", "DependentChanDepth" : "7", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["82"], "DependentChan" : "279", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["82"], "DependentChan" : "280", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "278", "DependentChanDepth" : "6", "DependentChanType" : "1"},
			{"Name" : "emissions_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["64"], "DependentChan" : "275", "DependentChanDepth" : "7", "DependentChanType" : "1"},
			{"Name" : "emissions_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "emissions_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "emissions_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "emissions_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "emissions_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "emissions_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "emissions_7", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "272", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0.grp_post_process_fu_176", "Parent" : "271", "Child" : ["273", "274"],
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
	{"ID" : "273", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0.grp_post_process_fu_176.fmul_32ns_32ns_32_3_max_dsp_1_U383", "Parent" : "272"},
	{"ID" : "274", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc_U0.grp_post_process_fu_176.fdiv_32ns_32ns_32_9_no_dsp_0_U384", "Parent" : "272"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.p_loc_channel_U", "Parent" : "1"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.p_loc1_channel_U", "Parent" : "1"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.localImages_U", "Parent" : "1"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.curr_imageProjs_U", "Parent" : "1"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.projSumUsed_U", "Parent" : "1"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_241_1_1_U0.sum_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
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
		curr_imageProjs {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "182496", "Max" : "182496"}
	, {"Name" : "Interval", "Min" : "182496", "Max" : "182496"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	atomLocationsSize { ap_none {  { atomLocationsSize in_data 0 32 } } }
	projShape0 { ap_none {  { projShape0 in_data 0 32 }  { projShape0_ap_vld in_vld 0 1 } } }
	projShape1 { ap_none {  { projShape1 in_data 0 32 }  { projShape1_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_gmem0_0_AWVALID VALID 1 1 }  { m_axi_gmem0_0_AWREADY READY 0 1 }  { m_axi_gmem0_0_AWADDR ADDR 1 64 }  { m_axi_gmem0_0_AWID ID 1 1 }  { m_axi_gmem0_0_AWLEN SIZE 1 32 }  { m_axi_gmem0_0_AWSIZE BURST 1 3 }  { m_axi_gmem0_0_AWBURST LOCK 1 2 }  { m_axi_gmem0_0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_0_AWCACHE PROT 1 4 }  { m_axi_gmem0_0_AWPROT QOS 1 3 }  { m_axi_gmem0_0_AWQOS REGION 1 4 }  { m_axi_gmem0_0_AWREGION USER 1 4 }  { m_axi_gmem0_0_AWUSER DATA 1 1 }  { m_axi_gmem0_0_WVALID VALID 1 1 }  { m_axi_gmem0_0_WREADY READY 0 1 }  { m_axi_gmem0_0_WDATA FIFONUM 1 64 }  { m_axi_gmem0_0_WSTRB STRB 1 8 }  { m_axi_gmem0_0_WLAST LAST 1 1 }  { m_axi_gmem0_0_WID ID 1 1 }  { m_axi_gmem0_0_WUSER DATA 1 1 }  { m_axi_gmem0_0_ARVALID VALID 1 1 }  { m_axi_gmem0_0_ARREADY READY 0 1 }  { m_axi_gmem0_0_ARADDR ADDR 1 64 }  { m_axi_gmem0_0_ARID ID 1 1 }  { m_axi_gmem0_0_ARLEN SIZE 1 32 }  { m_axi_gmem0_0_ARSIZE BURST 1 3 }  { m_axi_gmem0_0_ARBURST LOCK 1 2 }  { m_axi_gmem0_0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_0_ARCACHE PROT 1 4 }  { m_axi_gmem0_0_ARPROT QOS 1 3 }  { m_axi_gmem0_0_ARQOS REGION 1 4 }  { m_axi_gmem0_0_ARREGION USER 1 4 }  { m_axi_gmem0_0_ARUSER DATA 1 1 }  { m_axi_gmem0_0_RVALID VALID 0 1 }  { m_axi_gmem0_0_RREADY READY 1 1 }  { m_axi_gmem0_0_RDATA FIFONUM 0 64 }  { m_axi_gmem0_0_RLAST LAST 0 1 }  { m_axi_gmem0_0_RID ID 0 1 }  { m_axi_gmem0_0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_0_RUSER DATA 0 1 }  { m_axi_gmem0_0_RRESP RESP 0 2 }  { m_axi_gmem0_0_BVALID VALID 0 1 }  { m_axi_gmem0_0_BREADY READY 1 1 }  { m_axi_gmem0_0_BRESP RESP 0 2 }  { m_axi_gmem0_0_BID ID 0 1 }  { m_axi_gmem0_0_BUSER DATA 0 1 } } }
	atomLocations { ap_none {  { atomLocations in_data 0 64 }  { atomLocations_ap_vld in_vld 0 1 } } }
	psfSupersample { ap_none {  { psfSupersample in_data 0 32 }  { psfSupersample_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_gmem5_0_AWVALID VALID 1 1 }  { m_axi_gmem5_0_AWREADY READY 0 1 }  { m_axi_gmem5_0_AWADDR ADDR 1 64 }  { m_axi_gmem5_0_AWID ID 1 1 }  { m_axi_gmem5_0_AWLEN SIZE 1 32 }  { m_axi_gmem5_0_AWSIZE BURST 1 3 }  { m_axi_gmem5_0_AWBURST LOCK 1 2 }  { m_axi_gmem5_0_AWLOCK CACHE 1 2 }  { m_axi_gmem5_0_AWCACHE PROT 1 4 }  { m_axi_gmem5_0_AWPROT QOS 1 3 }  { m_axi_gmem5_0_AWQOS REGION 1 4 }  { m_axi_gmem5_0_AWREGION USER 1 4 }  { m_axi_gmem5_0_AWUSER DATA 1 1 }  { m_axi_gmem5_0_WVALID VALID 1 1 }  { m_axi_gmem5_0_WREADY READY 0 1 }  { m_axi_gmem5_0_WDATA FIFONUM 1 512 }  { m_axi_gmem5_0_WSTRB STRB 1 64 }  { m_axi_gmem5_0_WLAST LAST 1 1 }  { m_axi_gmem5_0_WID ID 1 1 }  { m_axi_gmem5_0_WUSER DATA 1 1 }  { m_axi_gmem5_0_ARVALID VALID 1 1 }  { m_axi_gmem5_0_ARREADY READY 0 1 }  { m_axi_gmem5_0_ARADDR ADDR 1 64 }  { m_axi_gmem5_0_ARID ID 1 1 }  { m_axi_gmem5_0_ARLEN SIZE 1 32 }  { m_axi_gmem5_0_ARSIZE BURST 1 3 }  { m_axi_gmem5_0_ARBURST LOCK 1 2 }  { m_axi_gmem5_0_ARLOCK CACHE 1 2 }  { m_axi_gmem5_0_ARCACHE PROT 1 4 }  { m_axi_gmem5_0_ARPROT QOS 1 3 }  { m_axi_gmem5_0_ARQOS REGION 1 4 }  { m_axi_gmem5_0_ARREGION USER 1 4 }  { m_axi_gmem5_0_ARUSER DATA 1 1 }  { m_axi_gmem5_0_RVALID VALID 0 1 }  { m_axi_gmem5_0_RREADY READY 1 1 }  { m_axi_gmem5_0_RDATA FIFONUM 0 512 }  { m_axi_gmem5_0_RLAST LAST 0 1 }  { m_axi_gmem5_0_RID ID 0 1 }  { m_axi_gmem5_0_RFIFONUM LEN 0 9 }  { m_axi_gmem5_0_RUSER DATA 0 1 }  { m_axi_gmem5_0_RRESP RESP 0 2 }  { m_axi_gmem5_0_BVALID VALID 0 1 }  { m_axi_gmem5_0_BREADY READY 1 1 }  { m_axi_gmem5_0_BRESP RESP 0 2 }  { m_axi_gmem5_0_BID ID 0 1 }  { m_axi_gmem5_0_BUSER DATA 0 1 } } }
	imageProjs_local { ap_none {  { imageProjs_local in_data 0 64 }  { imageProjs_local_ap_vld in_vld 0 1 } } }
	imageProjs_0_0_val { ap_none {  { imageProjs_0_0_val in_data 0 32 }  { imageProjs_0_0_val_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_gmem6_0_AWVALID VALID 1 1 }  { m_axi_gmem6_0_AWREADY READY 0 1 }  { m_axi_gmem6_0_AWADDR ADDR 1 64 }  { m_axi_gmem6_0_AWID ID 1 1 }  { m_axi_gmem6_0_AWLEN SIZE 1 32 }  { m_axi_gmem6_0_AWSIZE BURST 1 3 }  { m_axi_gmem6_0_AWBURST LOCK 1 2 }  { m_axi_gmem6_0_AWLOCK CACHE 1 2 }  { m_axi_gmem6_0_AWCACHE PROT 1 4 }  { m_axi_gmem6_0_AWPROT QOS 1 3 }  { m_axi_gmem6_0_AWQOS REGION 1 4 }  { m_axi_gmem6_0_AWREGION USER 1 4 }  { m_axi_gmem6_0_AWUSER DATA 1 1 }  { m_axi_gmem6_0_WVALID VALID 1 1 }  { m_axi_gmem6_0_WREADY READY 0 1 }  { m_axi_gmem6_0_WDATA FIFONUM 1 512 }  { m_axi_gmem6_0_WSTRB STRB 1 64 }  { m_axi_gmem6_0_WLAST LAST 1 1 }  { m_axi_gmem6_0_WID ID 1 1 }  { m_axi_gmem6_0_WUSER DATA 1 1 }  { m_axi_gmem6_0_ARVALID VALID 1 1 }  { m_axi_gmem6_0_ARREADY READY 0 1 }  { m_axi_gmem6_0_ARADDR ADDR 1 64 }  { m_axi_gmem6_0_ARID ID 1 1 }  { m_axi_gmem6_0_ARLEN SIZE 1 32 }  { m_axi_gmem6_0_ARSIZE BURST 1 3 }  { m_axi_gmem6_0_ARBURST LOCK 1 2 }  { m_axi_gmem6_0_ARLOCK CACHE 1 2 }  { m_axi_gmem6_0_ARCACHE PROT 1 4 }  { m_axi_gmem6_0_ARPROT QOS 1 3 }  { m_axi_gmem6_0_ARQOS REGION 1 4 }  { m_axi_gmem6_0_ARREGION USER 1 4 }  { m_axi_gmem6_0_ARUSER DATA 1 1 }  { m_axi_gmem6_0_RVALID VALID 0 1 }  { m_axi_gmem6_0_RREADY READY 1 1 }  { m_axi_gmem6_0_RDATA FIFONUM 0 512 }  { m_axi_gmem6_0_RLAST LAST 0 1 }  { m_axi_gmem6_0_RID ID 0 1 }  { m_axi_gmem6_0_RFIFONUM LEN 0 9 }  { m_axi_gmem6_0_RUSER DATA 0 1 }  { m_axi_gmem6_0_RRESP RESP 0 2 }  { m_axi_gmem6_0_BVALID VALID 0 1 }  { m_axi_gmem6_0_BREADY READY 1 1 }  { m_axi_gmem6_0_BRESP RESP 0 2 }  { m_axi_gmem6_0_BID ID 0 1 }  { m_axi_gmem6_0_BUSER DATA 0 1 } } }
	fullImage { ap_none {  { fullImage in_data 0 64 }  { fullImage_ap_vld in_vld 0 1 } } }
	emissions_0 { ap_memory {  { emissions_0_address0 mem_address 1 8 }  { emissions_0_ce0 mem_ce 1 1 }  { emissions_0_d0 mem_din 1 32 }  { emissions_0_q0 mem_dout 0 32 }  { emissions_0_we0 mem_we 1 1 }  { emissions_0_address1 mem_address 1 8 }  { emissions_0_ce1 mem_ce 1 1 }  { emissions_0_d1 mem_din 1 32 }  { emissions_0_q1 mem_dout 0 32 }  { emissions_0_we1 mem_we 1 1 } } }
	emissions_1 { ap_memory {  { emissions_1_address0 mem_address 1 8 }  { emissions_1_ce0 mem_ce 1 1 }  { emissions_1_d0 mem_din 1 32 }  { emissions_1_q0 mem_dout 0 32 }  { emissions_1_we0 mem_we 1 1 }  { emissions_1_address1 mem_address 1 8 }  { emissions_1_ce1 mem_ce 1 1 }  { emissions_1_d1 mem_din 1 32 }  { emissions_1_q1 mem_dout 0 32 }  { emissions_1_we1 mem_we 1 1 } } }
	emissions_2 { ap_memory {  { emissions_2_address0 mem_address 1 8 }  { emissions_2_ce0 mem_ce 1 1 }  { emissions_2_d0 mem_din 1 32 }  { emissions_2_q0 mem_dout 0 32 }  { emissions_2_we0 mem_we 1 1 }  { emissions_2_address1 mem_address 1 8 }  { emissions_2_ce1 mem_ce 1 1 }  { emissions_2_d1 mem_din 1 32 }  { emissions_2_q1 mem_dout 0 32 }  { emissions_2_we1 mem_we 1 1 } } }
	emissions_3 { ap_memory {  { emissions_3_address0 mem_address 1 8 }  { emissions_3_ce0 mem_ce 1 1 }  { emissions_3_d0 mem_din 1 32 }  { emissions_3_q0 mem_dout 0 32 }  { emissions_3_we0 mem_we 1 1 }  { emissions_3_address1 mem_address 1 8 }  { emissions_3_ce1 mem_ce 1 1 }  { emissions_3_d1 mem_din 1 32 }  { emissions_3_q1 mem_dout 0 32 }  { emissions_3_we1 mem_we 1 1 } } }
	emissions_4 { ap_memory {  { emissions_4_address0 mem_address 1 8 }  { emissions_4_ce0 mem_ce 1 1 }  { emissions_4_d0 mem_din 1 32 }  { emissions_4_q0 mem_dout 0 32 }  { emissions_4_we0 mem_we 1 1 }  { emissions_4_address1 mem_address 1 8 }  { emissions_4_ce1 mem_ce 1 1 }  { emissions_4_d1 mem_din 1 32 }  { emissions_4_q1 mem_dout 0 32 }  { emissions_4_we1 mem_we 1 1 } } }
	emissions_5 { ap_memory {  { emissions_5_address0 mem_address 1 8 }  { emissions_5_ce0 mem_ce 1 1 }  { emissions_5_d0 mem_din 1 32 }  { emissions_5_q0 mem_dout 0 32 }  { emissions_5_we0 mem_we 1 1 }  { emissions_5_address1 mem_address 1 8 }  { emissions_5_ce1 mem_ce 1 1 }  { emissions_5_d1 mem_din 1 32 }  { emissions_5_q1 mem_dout 0 32 }  { emissions_5_we1 mem_we 1 1 } } }
	emissions_6 { ap_memory {  { emissions_6_address0 mem_address 1 8 }  { emissions_6_ce0 mem_ce 1 1 }  { emissions_6_d0 mem_din 1 32 }  { emissions_6_q0 mem_dout 0 32 }  { emissions_6_we0 mem_we 1 1 }  { emissions_6_address1 mem_address 1 8 }  { emissions_6_ce1 mem_ce 1 1 }  { emissions_6_d1 mem_din 1 32 }  { emissions_6_q1 mem_dout 0 32 }  { emissions_6_we1 mem_we 1 1 } } }
	emissions_7 { ap_memory {  { emissions_7_address0 mem_address 1 8 }  { emissions_7_ce0 mem_ce 1 1 }  { emissions_7_d0 mem_din 1 32 }  { emissions_7_q0 mem_dout 0 32 }  { emissions_7_we0 mem_we 1 1 }  { emissions_7_address1 mem_address 1 8 }  { emissions_7_ce1 mem_ce 1 1 }  { emissions_7_d1 mem_din 1 32 }  { emissions_7_q1 mem_dout 0 32 }  { emissions_7_we1 mem_we 1 1 } } }
}
