set moduleName findUnusableAtoms
set isTopModule 0
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
set C_modelName {findUnusableAtoms}
set C_modelType { int 1 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict stateArray_data_s { MEM_WIDTH 1 MEM_SIZE 25000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict targetGeometry_data_s { MEM_WIDTH 1 MEM_SIZE 25000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict usableAtoms_data { MEM_WIDTH 32 MEM_SIZE 262144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict usableAtoms_count_0 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict usableAtoms_count_1 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict usableAtoms_count_2 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict usableAtoms_count_3 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict usableAtoms_count_4 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict usableAtoms_count_5 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict usableAtoms_count_6 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict usableAtoms_count_7 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableAtoms_count_0 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableAtoms_count_1 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableAtoms_count_2 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableAtoms_count_3 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableAtoms_count_4 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableAtoms_count_5 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableAtoms_count_6 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableAtoms_count_7 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict targetSites_data { MEM_WIDTH 8 MEM_SIZE 65536 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict targetSites_count_0 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict targetSites_count_1 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict targetSites_count_2 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict targetSites_count_3 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict targetSites_count_4 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict targetSites_count_5 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict targetSites_count_6 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict targetSites_count_7 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ stateArray_data_s int 1 regular {array 25000 { 1 3 } 1 1 }  }
	{ stateArray_cols_val int 15 regular  }
	{ arraySizeXC int 32 regular  }
	{ arraySizeAC int 32 regular  }
	{ compZoneRowStart int 32 regular  }
	{ compZoneRowEnd int 32 regular  }
	{ compZoneColStart int 32 regular  }
	{ compZoneColEnd int 32 regular  }
	{ targetGeometry_data_s int 1 regular {array 25000 { 1 3 } 1 1 }  }
	{ targetGeometry_cols_val int 33 regular  }
	{ usableAtoms_data int 32 regular {array 65536 { 3 0 } 0 1 }  }
	{ usableAtoms_count_0 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_1 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_2 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_3 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_4 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_5 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_6 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_7 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableAtoms_count_0 int 16 regular {array 32 { 3 0 } 0 1 }  }
	{ unusableAtoms_count_1 int 16 regular {array 32 { 3 0 } 0 1 }  }
	{ unusableAtoms_count_2 int 16 regular {array 32 { 3 0 } 0 1 }  }
	{ unusableAtoms_count_3 int 16 regular {array 32 { 3 0 } 0 1 }  }
	{ unusableAtoms_count_4 int 16 regular {array 32 { 3 0 } 0 1 }  }
	{ unusableAtoms_count_5 int 16 regular {array 32 { 3 0 } 0 1 }  }
	{ unusableAtoms_count_6 int 16 regular {array 32 { 3 0 } 0 1 }  }
	{ unusableAtoms_count_7 int 16 regular {array 32 { 3 0 } 0 1 }  }
	{ targetSites_data int 8 regular {array 65536 { 3 0 } 0 1 }  }
	{ targetSites_count_0 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ targetSites_count_1 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ targetSites_count_2 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ targetSites_count_3 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ targetSites_count_4 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ targetSites_count_5 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ targetSites_count_6 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ targetSites_count_7 int 16 regular {array 32 { 1 0 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "stateArray_data_s", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_cols_val", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "arraySizeXC", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arraySizeAC", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "compZoneRowStart", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "compZoneRowEnd", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "compZoneColStart", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "compZoneColEnd", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "targetGeometry_data_s", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "targetGeometry_cols_val", "interface" : "wire", "bitwidth" : 33, "direction" : "READONLY"} , 
 	{ "Name" : "usableAtoms_data", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "usableAtoms_count_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableAtoms_count_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unusableAtoms_count_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unusableAtoms_count_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unusableAtoms_count_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unusableAtoms_count_4", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unusableAtoms_count_5", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unusableAtoms_count_6", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unusableAtoms_count_7", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "targetSites_data", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "targetSites_count_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "targetSites_count_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "targetSites_count_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "targetSites_count_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "targetSites_count_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "targetSites_count_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "targetSites_count_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "targetSites_count_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 173
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stateArray_data_s_address0 sc_out sc_lv 15 signal 0 } 
	{ stateArray_data_s_ce0 sc_out sc_logic 1 signal 0 } 
	{ stateArray_data_s_q0 sc_in sc_lv 1 signal 0 } 
	{ stateArray_cols_val sc_in sc_lv 15 signal 1 } 
	{ arraySizeXC sc_in sc_lv 32 signal 2 } 
	{ arraySizeAC sc_in sc_lv 32 signal 3 } 
	{ compZoneRowStart sc_in sc_lv 32 signal 4 } 
	{ compZoneRowEnd sc_in sc_lv 32 signal 5 } 
	{ compZoneColStart sc_in sc_lv 32 signal 6 } 
	{ compZoneColEnd sc_in sc_lv 32 signal 7 } 
	{ targetGeometry_data_s_address0 sc_out sc_lv 15 signal 8 } 
	{ targetGeometry_data_s_ce0 sc_out sc_logic 1 signal 8 } 
	{ targetGeometry_data_s_q0 sc_in sc_lv 1 signal 8 } 
	{ targetGeometry_cols_val sc_in sc_lv 33 signal 9 } 
	{ usableAtoms_data_address1 sc_out sc_lv 16 signal 10 } 
	{ usableAtoms_data_ce1 sc_out sc_logic 1 signal 10 } 
	{ usableAtoms_data_we1 sc_out sc_logic 1 signal 10 } 
	{ usableAtoms_data_d1 sc_out sc_lv 32 signal 10 } 
	{ usableAtoms_count_0_address0 sc_out sc_lv 5 signal 11 } 
	{ usableAtoms_count_0_ce0 sc_out sc_logic 1 signal 11 } 
	{ usableAtoms_count_0_q0 sc_in sc_lv 16 signal 11 } 
	{ usableAtoms_count_0_address1 sc_out sc_lv 5 signal 11 } 
	{ usableAtoms_count_0_ce1 sc_out sc_logic 1 signal 11 } 
	{ usableAtoms_count_0_we1 sc_out sc_logic 1 signal 11 } 
	{ usableAtoms_count_0_d1 sc_out sc_lv 16 signal 11 } 
	{ usableAtoms_count_1_address0 sc_out sc_lv 5 signal 12 } 
	{ usableAtoms_count_1_ce0 sc_out sc_logic 1 signal 12 } 
	{ usableAtoms_count_1_q0 sc_in sc_lv 16 signal 12 } 
	{ usableAtoms_count_1_address1 sc_out sc_lv 5 signal 12 } 
	{ usableAtoms_count_1_ce1 sc_out sc_logic 1 signal 12 } 
	{ usableAtoms_count_1_we1 sc_out sc_logic 1 signal 12 } 
	{ usableAtoms_count_1_d1 sc_out sc_lv 16 signal 12 } 
	{ usableAtoms_count_2_address0 sc_out sc_lv 5 signal 13 } 
	{ usableAtoms_count_2_ce0 sc_out sc_logic 1 signal 13 } 
	{ usableAtoms_count_2_q0 sc_in sc_lv 16 signal 13 } 
	{ usableAtoms_count_2_address1 sc_out sc_lv 5 signal 13 } 
	{ usableAtoms_count_2_ce1 sc_out sc_logic 1 signal 13 } 
	{ usableAtoms_count_2_we1 sc_out sc_logic 1 signal 13 } 
	{ usableAtoms_count_2_d1 sc_out sc_lv 16 signal 13 } 
	{ usableAtoms_count_3_address0 sc_out sc_lv 5 signal 14 } 
	{ usableAtoms_count_3_ce0 sc_out sc_logic 1 signal 14 } 
	{ usableAtoms_count_3_q0 sc_in sc_lv 16 signal 14 } 
	{ usableAtoms_count_3_address1 sc_out sc_lv 5 signal 14 } 
	{ usableAtoms_count_3_ce1 sc_out sc_logic 1 signal 14 } 
	{ usableAtoms_count_3_we1 sc_out sc_logic 1 signal 14 } 
	{ usableAtoms_count_3_d1 sc_out sc_lv 16 signal 14 } 
	{ usableAtoms_count_4_address0 sc_out sc_lv 5 signal 15 } 
	{ usableAtoms_count_4_ce0 sc_out sc_logic 1 signal 15 } 
	{ usableAtoms_count_4_q0 sc_in sc_lv 16 signal 15 } 
	{ usableAtoms_count_4_address1 sc_out sc_lv 5 signal 15 } 
	{ usableAtoms_count_4_ce1 sc_out sc_logic 1 signal 15 } 
	{ usableAtoms_count_4_we1 sc_out sc_logic 1 signal 15 } 
	{ usableAtoms_count_4_d1 sc_out sc_lv 16 signal 15 } 
	{ usableAtoms_count_5_address0 sc_out sc_lv 5 signal 16 } 
	{ usableAtoms_count_5_ce0 sc_out sc_logic 1 signal 16 } 
	{ usableAtoms_count_5_q0 sc_in sc_lv 16 signal 16 } 
	{ usableAtoms_count_5_address1 sc_out sc_lv 5 signal 16 } 
	{ usableAtoms_count_5_ce1 sc_out sc_logic 1 signal 16 } 
	{ usableAtoms_count_5_we1 sc_out sc_logic 1 signal 16 } 
	{ usableAtoms_count_5_d1 sc_out sc_lv 16 signal 16 } 
	{ usableAtoms_count_6_address0 sc_out sc_lv 5 signal 17 } 
	{ usableAtoms_count_6_ce0 sc_out sc_logic 1 signal 17 } 
	{ usableAtoms_count_6_q0 sc_in sc_lv 16 signal 17 } 
	{ usableAtoms_count_6_address1 sc_out sc_lv 5 signal 17 } 
	{ usableAtoms_count_6_ce1 sc_out sc_logic 1 signal 17 } 
	{ usableAtoms_count_6_we1 sc_out sc_logic 1 signal 17 } 
	{ usableAtoms_count_6_d1 sc_out sc_lv 16 signal 17 } 
	{ usableAtoms_count_7_address0 sc_out sc_lv 5 signal 18 } 
	{ usableAtoms_count_7_ce0 sc_out sc_logic 1 signal 18 } 
	{ usableAtoms_count_7_q0 sc_in sc_lv 16 signal 18 } 
	{ usableAtoms_count_7_address1 sc_out sc_lv 5 signal 18 } 
	{ usableAtoms_count_7_ce1 sc_out sc_logic 1 signal 18 } 
	{ usableAtoms_count_7_we1 sc_out sc_logic 1 signal 18 } 
	{ usableAtoms_count_7_d1 sc_out sc_lv 16 signal 18 } 
	{ unusableAtoms_count_0_address1 sc_out sc_lv 5 signal 19 } 
	{ unusableAtoms_count_0_ce1 sc_out sc_logic 1 signal 19 } 
	{ unusableAtoms_count_0_we1 sc_out sc_logic 1 signal 19 } 
	{ unusableAtoms_count_0_d1 sc_out sc_lv 16 signal 19 } 
	{ unusableAtoms_count_1_address1 sc_out sc_lv 5 signal 20 } 
	{ unusableAtoms_count_1_ce1 sc_out sc_logic 1 signal 20 } 
	{ unusableAtoms_count_1_we1 sc_out sc_logic 1 signal 20 } 
	{ unusableAtoms_count_1_d1 sc_out sc_lv 16 signal 20 } 
	{ unusableAtoms_count_2_address1 sc_out sc_lv 5 signal 21 } 
	{ unusableAtoms_count_2_ce1 sc_out sc_logic 1 signal 21 } 
	{ unusableAtoms_count_2_we1 sc_out sc_logic 1 signal 21 } 
	{ unusableAtoms_count_2_d1 sc_out sc_lv 16 signal 21 } 
	{ unusableAtoms_count_3_address1 sc_out sc_lv 5 signal 22 } 
	{ unusableAtoms_count_3_ce1 sc_out sc_logic 1 signal 22 } 
	{ unusableAtoms_count_3_we1 sc_out sc_logic 1 signal 22 } 
	{ unusableAtoms_count_3_d1 sc_out sc_lv 16 signal 22 } 
	{ unusableAtoms_count_4_address1 sc_out sc_lv 5 signal 23 } 
	{ unusableAtoms_count_4_ce1 sc_out sc_logic 1 signal 23 } 
	{ unusableAtoms_count_4_we1 sc_out sc_logic 1 signal 23 } 
	{ unusableAtoms_count_4_d1 sc_out sc_lv 16 signal 23 } 
	{ unusableAtoms_count_5_address1 sc_out sc_lv 5 signal 24 } 
	{ unusableAtoms_count_5_ce1 sc_out sc_logic 1 signal 24 } 
	{ unusableAtoms_count_5_we1 sc_out sc_logic 1 signal 24 } 
	{ unusableAtoms_count_5_d1 sc_out sc_lv 16 signal 24 } 
	{ unusableAtoms_count_6_address1 sc_out sc_lv 5 signal 25 } 
	{ unusableAtoms_count_6_ce1 sc_out sc_logic 1 signal 25 } 
	{ unusableAtoms_count_6_we1 sc_out sc_logic 1 signal 25 } 
	{ unusableAtoms_count_6_d1 sc_out sc_lv 16 signal 25 } 
	{ unusableAtoms_count_7_address1 sc_out sc_lv 5 signal 26 } 
	{ unusableAtoms_count_7_ce1 sc_out sc_logic 1 signal 26 } 
	{ unusableAtoms_count_7_we1 sc_out sc_logic 1 signal 26 } 
	{ unusableAtoms_count_7_d1 sc_out sc_lv 16 signal 26 } 
	{ targetSites_data_address1 sc_out sc_lv 16 signal 27 } 
	{ targetSites_data_ce1 sc_out sc_logic 1 signal 27 } 
	{ targetSites_data_we1 sc_out sc_logic 1 signal 27 } 
	{ targetSites_data_d1 sc_out sc_lv 8 signal 27 } 
	{ targetSites_count_0_address0 sc_out sc_lv 5 signal 28 } 
	{ targetSites_count_0_ce0 sc_out sc_logic 1 signal 28 } 
	{ targetSites_count_0_q0 sc_in sc_lv 16 signal 28 } 
	{ targetSites_count_0_address1 sc_out sc_lv 5 signal 28 } 
	{ targetSites_count_0_ce1 sc_out sc_logic 1 signal 28 } 
	{ targetSites_count_0_we1 sc_out sc_logic 1 signal 28 } 
	{ targetSites_count_0_d1 sc_out sc_lv 16 signal 28 } 
	{ targetSites_count_1_address0 sc_out sc_lv 5 signal 29 } 
	{ targetSites_count_1_ce0 sc_out sc_logic 1 signal 29 } 
	{ targetSites_count_1_q0 sc_in sc_lv 16 signal 29 } 
	{ targetSites_count_1_address1 sc_out sc_lv 5 signal 29 } 
	{ targetSites_count_1_ce1 sc_out sc_logic 1 signal 29 } 
	{ targetSites_count_1_we1 sc_out sc_logic 1 signal 29 } 
	{ targetSites_count_1_d1 sc_out sc_lv 16 signal 29 } 
	{ targetSites_count_2_address0 sc_out sc_lv 5 signal 30 } 
	{ targetSites_count_2_ce0 sc_out sc_logic 1 signal 30 } 
	{ targetSites_count_2_q0 sc_in sc_lv 16 signal 30 } 
	{ targetSites_count_2_address1 sc_out sc_lv 5 signal 30 } 
	{ targetSites_count_2_ce1 sc_out sc_logic 1 signal 30 } 
	{ targetSites_count_2_we1 sc_out sc_logic 1 signal 30 } 
	{ targetSites_count_2_d1 sc_out sc_lv 16 signal 30 } 
	{ targetSites_count_3_address0 sc_out sc_lv 5 signal 31 } 
	{ targetSites_count_3_ce0 sc_out sc_logic 1 signal 31 } 
	{ targetSites_count_3_q0 sc_in sc_lv 16 signal 31 } 
	{ targetSites_count_3_address1 sc_out sc_lv 5 signal 31 } 
	{ targetSites_count_3_ce1 sc_out sc_logic 1 signal 31 } 
	{ targetSites_count_3_we1 sc_out sc_logic 1 signal 31 } 
	{ targetSites_count_3_d1 sc_out sc_lv 16 signal 31 } 
	{ targetSites_count_4_address0 sc_out sc_lv 5 signal 32 } 
	{ targetSites_count_4_ce0 sc_out sc_logic 1 signal 32 } 
	{ targetSites_count_4_q0 sc_in sc_lv 16 signal 32 } 
	{ targetSites_count_4_address1 sc_out sc_lv 5 signal 32 } 
	{ targetSites_count_4_ce1 sc_out sc_logic 1 signal 32 } 
	{ targetSites_count_4_we1 sc_out sc_logic 1 signal 32 } 
	{ targetSites_count_4_d1 sc_out sc_lv 16 signal 32 } 
	{ targetSites_count_5_address0 sc_out sc_lv 5 signal 33 } 
	{ targetSites_count_5_ce0 sc_out sc_logic 1 signal 33 } 
	{ targetSites_count_5_q0 sc_in sc_lv 16 signal 33 } 
	{ targetSites_count_5_address1 sc_out sc_lv 5 signal 33 } 
	{ targetSites_count_5_ce1 sc_out sc_logic 1 signal 33 } 
	{ targetSites_count_5_we1 sc_out sc_logic 1 signal 33 } 
	{ targetSites_count_5_d1 sc_out sc_lv 16 signal 33 } 
	{ targetSites_count_6_address0 sc_out sc_lv 5 signal 34 } 
	{ targetSites_count_6_ce0 sc_out sc_logic 1 signal 34 } 
	{ targetSites_count_6_q0 sc_in sc_lv 16 signal 34 } 
	{ targetSites_count_6_address1 sc_out sc_lv 5 signal 34 } 
	{ targetSites_count_6_ce1 sc_out sc_logic 1 signal 34 } 
	{ targetSites_count_6_we1 sc_out sc_logic 1 signal 34 } 
	{ targetSites_count_6_d1 sc_out sc_lv 16 signal 34 } 
	{ targetSites_count_7_address0 sc_out sc_lv 5 signal 35 } 
	{ targetSites_count_7_ce0 sc_out sc_logic 1 signal 35 } 
	{ targetSites_count_7_q0 sc_in sc_lv 16 signal 35 } 
	{ targetSites_count_7_address1 sc_out sc_lv 5 signal 35 } 
	{ targetSites_count_7_ce1 sc_out sc_logic 1 signal 35 } 
	{ targetSites_count_7_we1 sc_out sc_logic 1 signal 35 } 
	{ targetSites_count_7_d1 sc_out sc_lv 16 signal 35 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stateArray_data_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "address0" }} , 
 	{ "name": "stateArray_data_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "ce0" }} , 
 	{ "name": "stateArray_data_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "q0" }} , 
 	{ "name": "stateArray_cols_val", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "stateArray_cols_val", "role": "default" }} , 
 	{ "name": "arraySizeXC", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arraySizeXC", "role": "default" }} , 
 	{ "name": "arraySizeAC", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arraySizeAC", "role": "default" }} , 
 	{ "name": "compZoneRowStart", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compZoneRowStart", "role": "default" }} , 
 	{ "name": "compZoneRowEnd", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compZoneRowEnd", "role": "default" }} , 
 	{ "name": "compZoneColStart", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compZoneColStart", "role": "default" }} , 
 	{ "name": "compZoneColEnd", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compZoneColEnd", "role": "default" }} , 
 	{ "name": "targetGeometry_data_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "targetGeometry_data_s", "role": "address0" }} , 
 	{ "name": "targetGeometry_data_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetGeometry_data_s", "role": "ce0" }} , 
 	{ "name": "targetGeometry_data_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "targetGeometry_data_s", "role": "q0" }} , 
 	{ "name": "targetGeometry_cols_val", "direction": "in", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "targetGeometry_cols_val", "role": "default" }} , 
 	{ "name": "usableAtoms_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usableAtoms_data", "role": "address1" }} , 
 	{ "name": "usableAtoms_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_data", "role": "ce1" }} , 
 	{ "name": "usableAtoms_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_data", "role": "we1" }} , 
 	{ "name": "usableAtoms_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "usableAtoms_data", "role": "d1" }} , 
 	{ "name": "usableAtoms_count_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "usableAtoms_count_0", "role": "address0" }} , 
 	{ "name": "usableAtoms_count_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_0", "role": "ce0" }} , 
 	{ "name": "usableAtoms_count_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usableAtoms_count_0", "role": "q0" }} , 
 	{ "name": "usableAtoms_count_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "usableAtoms_count_0", "role": "address1" }} , 
 	{ "name": "usableAtoms_count_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_0", "role": "ce1" }} , 
 	{ "name": "usableAtoms_count_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_0", "role": "we1" }} , 
 	{ "name": "usableAtoms_count_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usableAtoms_count_0", "role": "d1" }} , 
 	{ "name": "usableAtoms_count_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "usableAtoms_count_1", "role": "address0" }} , 
 	{ "name": "usableAtoms_count_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_1", "role": "ce0" }} , 
 	{ "name": "usableAtoms_count_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usableAtoms_count_1", "role": "q0" }} , 
 	{ "name": "usableAtoms_count_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "usableAtoms_count_1", "role": "address1" }} , 
 	{ "name": "usableAtoms_count_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_1", "role": "ce1" }} , 
 	{ "name": "usableAtoms_count_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_1", "role": "we1" }} , 
 	{ "name": "usableAtoms_count_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usableAtoms_count_1", "role": "d1" }} , 
 	{ "name": "usableAtoms_count_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "usableAtoms_count_2", "role": "address0" }} , 
 	{ "name": "usableAtoms_count_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_2", "role": "ce0" }} , 
 	{ "name": "usableAtoms_count_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usableAtoms_count_2", "role": "q0" }} , 
 	{ "name": "usableAtoms_count_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "usableAtoms_count_2", "role": "address1" }} , 
 	{ "name": "usableAtoms_count_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_2", "role": "ce1" }} , 
 	{ "name": "usableAtoms_count_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_2", "role": "we1" }} , 
 	{ "name": "usableAtoms_count_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usableAtoms_count_2", "role": "d1" }} , 
 	{ "name": "usableAtoms_count_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "usableAtoms_count_3", "role": "address0" }} , 
 	{ "name": "usableAtoms_count_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_3", "role": "ce0" }} , 
 	{ "name": "usableAtoms_count_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usableAtoms_count_3", "role": "q0" }} , 
 	{ "name": "usableAtoms_count_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "usableAtoms_count_3", "role": "address1" }} , 
 	{ "name": "usableAtoms_count_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_3", "role": "ce1" }} , 
 	{ "name": "usableAtoms_count_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_3", "role": "we1" }} , 
 	{ "name": "usableAtoms_count_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usableAtoms_count_3", "role": "d1" }} , 
 	{ "name": "usableAtoms_count_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "usableAtoms_count_4", "role": "address0" }} , 
 	{ "name": "usableAtoms_count_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_4", "role": "ce0" }} , 
 	{ "name": "usableAtoms_count_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usableAtoms_count_4", "role": "q0" }} , 
 	{ "name": "usableAtoms_count_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "usableAtoms_count_4", "role": "address1" }} , 
 	{ "name": "usableAtoms_count_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_4", "role": "ce1" }} , 
 	{ "name": "usableAtoms_count_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_4", "role": "we1" }} , 
 	{ "name": "usableAtoms_count_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usableAtoms_count_4", "role": "d1" }} , 
 	{ "name": "usableAtoms_count_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "usableAtoms_count_5", "role": "address0" }} , 
 	{ "name": "usableAtoms_count_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_5", "role": "ce0" }} , 
 	{ "name": "usableAtoms_count_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usableAtoms_count_5", "role": "q0" }} , 
 	{ "name": "usableAtoms_count_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "usableAtoms_count_5", "role": "address1" }} , 
 	{ "name": "usableAtoms_count_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_5", "role": "ce1" }} , 
 	{ "name": "usableAtoms_count_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_5", "role": "we1" }} , 
 	{ "name": "usableAtoms_count_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usableAtoms_count_5", "role": "d1" }} , 
 	{ "name": "usableAtoms_count_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "usableAtoms_count_6", "role": "address0" }} , 
 	{ "name": "usableAtoms_count_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_6", "role": "ce0" }} , 
 	{ "name": "usableAtoms_count_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usableAtoms_count_6", "role": "q0" }} , 
 	{ "name": "usableAtoms_count_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "usableAtoms_count_6", "role": "address1" }} , 
 	{ "name": "usableAtoms_count_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_6", "role": "ce1" }} , 
 	{ "name": "usableAtoms_count_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_6", "role": "we1" }} , 
 	{ "name": "usableAtoms_count_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usableAtoms_count_6", "role": "d1" }} , 
 	{ "name": "usableAtoms_count_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "usableAtoms_count_7", "role": "address0" }} , 
 	{ "name": "usableAtoms_count_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_7", "role": "ce0" }} , 
 	{ "name": "usableAtoms_count_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usableAtoms_count_7", "role": "q0" }} , 
 	{ "name": "usableAtoms_count_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "usableAtoms_count_7", "role": "address1" }} , 
 	{ "name": "usableAtoms_count_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_7", "role": "ce1" }} , 
 	{ "name": "usableAtoms_count_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_count_7", "role": "we1" }} , 
 	{ "name": "usableAtoms_count_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usableAtoms_count_7", "role": "d1" }} , 
 	{ "name": "unusableAtoms_count_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableAtoms_count_0", "role": "address1" }} , 
 	{ "name": "unusableAtoms_count_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableAtoms_count_0", "role": "ce1" }} , 
 	{ "name": "unusableAtoms_count_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableAtoms_count_0", "role": "we1" }} , 
 	{ "name": "unusableAtoms_count_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableAtoms_count_0", "role": "d1" }} , 
 	{ "name": "unusableAtoms_count_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableAtoms_count_1", "role": "address1" }} , 
 	{ "name": "unusableAtoms_count_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableAtoms_count_1", "role": "ce1" }} , 
 	{ "name": "unusableAtoms_count_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableAtoms_count_1", "role": "we1" }} , 
 	{ "name": "unusableAtoms_count_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableAtoms_count_1", "role": "d1" }} , 
 	{ "name": "unusableAtoms_count_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableAtoms_count_2", "role": "address1" }} , 
 	{ "name": "unusableAtoms_count_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableAtoms_count_2", "role": "ce1" }} , 
 	{ "name": "unusableAtoms_count_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableAtoms_count_2", "role": "we1" }} , 
 	{ "name": "unusableAtoms_count_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableAtoms_count_2", "role": "d1" }} , 
 	{ "name": "unusableAtoms_count_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableAtoms_count_3", "role": "address1" }} , 
 	{ "name": "unusableAtoms_count_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableAtoms_count_3", "role": "ce1" }} , 
 	{ "name": "unusableAtoms_count_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableAtoms_count_3", "role": "we1" }} , 
 	{ "name": "unusableAtoms_count_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableAtoms_count_3", "role": "d1" }} , 
 	{ "name": "unusableAtoms_count_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableAtoms_count_4", "role": "address1" }} , 
 	{ "name": "unusableAtoms_count_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableAtoms_count_4", "role": "ce1" }} , 
 	{ "name": "unusableAtoms_count_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableAtoms_count_4", "role": "we1" }} , 
 	{ "name": "unusableAtoms_count_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableAtoms_count_4", "role": "d1" }} , 
 	{ "name": "unusableAtoms_count_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableAtoms_count_5", "role": "address1" }} , 
 	{ "name": "unusableAtoms_count_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableAtoms_count_5", "role": "ce1" }} , 
 	{ "name": "unusableAtoms_count_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableAtoms_count_5", "role": "we1" }} , 
 	{ "name": "unusableAtoms_count_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableAtoms_count_5", "role": "d1" }} , 
 	{ "name": "unusableAtoms_count_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableAtoms_count_6", "role": "address1" }} , 
 	{ "name": "unusableAtoms_count_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableAtoms_count_6", "role": "ce1" }} , 
 	{ "name": "unusableAtoms_count_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableAtoms_count_6", "role": "we1" }} , 
 	{ "name": "unusableAtoms_count_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableAtoms_count_6", "role": "d1" }} , 
 	{ "name": "unusableAtoms_count_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableAtoms_count_7", "role": "address1" }} , 
 	{ "name": "unusableAtoms_count_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableAtoms_count_7", "role": "ce1" }} , 
 	{ "name": "unusableAtoms_count_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableAtoms_count_7", "role": "we1" }} , 
 	{ "name": "unusableAtoms_count_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableAtoms_count_7", "role": "d1" }} , 
 	{ "name": "targetSites_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_data", "role": "address1" }} , 
 	{ "name": "targetSites_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_data", "role": "ce1" }} , 
 	{ "name": "targetSites_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_data", "role": "we1" }} , 
 	{ "name": "targetSites_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "targetSites_data", "role": "d1" }} , 
 	{ "name": "targetSites_count_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "targetSites_count_0", "role": "address0" }} , 
 	{ "name": "targetSites_count_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_0", "role": "ce0" }} , 
 	{ "name": "targetSites_count_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_count_0", "role": "q0" }} , 
 	{ "name": "targetSites_count_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "targetSites_count_0", "role": "address1" }} , 
 	{ "name": "targetSites_count_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_0", "role": "ce1" }} , 
 	{ "name": "targetSites_count_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_0", "role": "we1" }} , 
 	{ "name": "targetSites_count_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_count_0", "role": "d1" }} , 
 	{ "name": "targetSites_count_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "targetSites_count_1", "role": "address0" }} , 
 	{ "name": "targetSites_count_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_1", "role": "ce0" }} , 
 	{ "name": "targetSites_count_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_count_1", "role": "q0" }} , 
 	{ "name": "targetSites_count_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "targetSites_count_1", "role": "address1" }} , 
 	{ "name": "targetSites_count_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_1", "role": "ce1" }} , 
 	{ "name": "targetSites_count_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_1", "role": "we1" }} , 
 	{ "name": "targetSites_count_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_count_1", "role": "d1" }} , 
 	{ "name": "targetSites_count_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "targetSites_count_2", "role": "address0" }} , 
 	{ "name": "targetSites_count_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_2", "role": "ce0" }} , 
 	{ "name": "targetSites_count_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_count_2", "role": "q0" }} , 
 	{ "name": "targetSites_count_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "targetSites_count_2", "role": "address1" }} , 
 	{ "name": "targetSites_count_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_2", "role": "ce1" }} , 
 	{ "name": "targetSites_count_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_2", "role": "we1" }} , 
 	{ "name": "targetSites_count_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_count_2", "role": "d1" }} , 
 	{ "name": "targetSites_count_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "targetSites_count_3", "role": "address0" }} , 
 	{ "name": "targetSites_count_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_3", "role": "ce0" }} , 
 	{ "name": "targetSites_count_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_count_3", "role": "q0" }} , 
 	{ "name": "targetSites_count_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "targetSites_count_3", "role": "address1" }} , 
 	{ "name": "targetSites_count_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_3", "role": "ce1" }} , 
 	{ "name": "targetSites_count_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_3", "role": "we1" }} , 
 	{ "name": "targetSites_count_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_count_3", "role": "d1" }} , 
 	{ "name": "targetSites_count_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "targetSites_count_4", "role": "address0" }} , 
 	{ "name": "targetSites_count_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_4", "role": "ce0" }} , 
 	{ "name": "targetSites_count_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_count_4", "role": "q0" }} , 
 	{ "name": "targetSites_count_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "targetSites_count_4", "role": "address1" }} , 
 	{ "name": "targetSites_count_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_4", "role": "ce1" }} , 
 	{ "name": "targetSites_count_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_4", "role": "we1" }} , 
 	{ "name": "targetSites_count_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_count_4", "role": "d1" }} , 
 	{ "name": "targetSites_count_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "targetSites_count_5", "role": "address0" }} , 
 	{ "name": "targetSites_count_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_5", "role": "ce0" }} , 
 	{ "name": "targetSites_count_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_count_5", "role": "q0" }} , 
 	{ "name": "targetSites_count_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "targetSites_count_5", "role": "address1" }} , 
 	{ "name": "targetSites_count_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_5", "role": "ce1" }} , 
 	{ "name": "targetSites_count_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_5", "role": "we1" }} , 
 	{ "name": "targetSites_count_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_count_5", "role": "d1" }} , 
 	{ "name": "targetSites_count_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "targetSites_count_6", "role": "address0" }} , 
 	{ "name": "targetSites_count_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_6", "role": "ce0" }} , 
 	{ "name": "targetSites_count_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_count_6", "role": "q0" }} , 
 	{ "name": "targetSites_count_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "targetSites_count_6", "role": "address1" }} , 
 	{ "name": "targetSites_count_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_6", "role": "ce1" }} , 
 	{ "name": "targetSites_count_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_6", "role": "we1" }} , 
 	{ "name": "targetSites_count_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_count_6", "role": "d1" }} , 
 	{ "name": "targetSites_count_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "targetSites_count_7", "role": "address0" }} , 
 	{ "name": "targetSites_count_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_7", "role": "ce0" }} , 
 	{ "name": "targetSites_count_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_count_7", "role": "q0" }} , 
 	{ "name": "targetSites_count_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "targetSites_count_7", "role": "address1" }} , 
 	{ "name": "targetSites_count_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_7", "role": "ce1" }} , 
 	{ "name": "targetSites_count_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_7", "role": "we1" }} , 
 	{ "name": "targetSites_count_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_count_7", "role": "d1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "7"],
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
					{"ID" : "3", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "stateArray_data_s", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "stateArray_cols_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "arraySizeXC", "Type" : "None", "Direction" : "I"},
			{"Name" : "arraySizeAC", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneRowStart", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneRowEnd", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneColStart", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneColEnd", "Type" : "None", "Direction" : "I"},
			{"Name" : "targetGeometry_data_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetGeometry_data_s", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetGeometry_cols_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "usableAtoms_data", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_data", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_2", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_3", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_3", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_4", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_4", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_5", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_5", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_6", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_6", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_7", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_7", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "unusableAtoms_count_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableAtoms_count_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableAtoms_count_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableAtoms_count_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableAtoms_count_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableAtoms_count_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableAtoms_count_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableAtoms_count_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "targetSites_data", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_data", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_2", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_3", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_3", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_4", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_4", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_5", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_5", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_6", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_6", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_7", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_7", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1446_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Parent" : "0", "Child" : ["4", "5", "6"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254.sparsemux_17_3_16_1_1_U551", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254.sparsemux_17_3_16_1_1_U552", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_9ns_15ns_15s_15_4_1_U585", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		indexXC {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "5387"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "5387"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stateArray_data_s { ap_memory {  { stateArray_data_s_address0 mem_address 1 15 }  { stateArray_data_s_ce0 mem_ce 1 1 }  { stateArray_data_s_q0 mem_dout 0 1 } } }
	stateArray_cols_val { ap_none {  { stateArray_cols_val in_data 0 15 } } }
	arraySizeXC { ap_none {  { arraySizeXC in_data 0 32 } } }
	arraySizeAC { ap_none {  { arraySizeAC in_data 0 32 } } }
	compZoneRowStart { ap_none {  { compZoneRowStart in_data 0 32 } } }
	compZoneRowEnd { ap_none {  { compZoneRowEnd in_data 0 32 } } }
	compZoneColStart { ap_none {  { compZoneColStart in_data 0 32 } } }
	compZoneColEnd { ap_none {  { compZoneColEnd in_data 0 32 } } }
	targetGeometry_data_s { ap_memory {  { targetGeometry_data_s_address0 mem_address 1 15 }  { targetGeometry_data_s_ce0 mem_ce 1 1 }  { targetGeometry_data_s_q0 mem_dout 0 1 } } }
	targetGeometry_cols_val { ap_none {  { targetGeometry_cols_val in_data 0 33 } } }
	usableAtoms_data { ap_memory {  { usableAtoms_data_address1 MemPortADDR2 1 16 }  { usableAtoms_data_ce1 MemPortCE2 1 1 }  { usableAtoms_data_we1 MemPortWE2 1 1 }  { usableAtoms_data_d1 MemPortDIN2 1 32 } } }
	usableAtoms_count_0 { ap_memory {  { usableAtoms_count_0_address0 mem_address 1 5 }  { usableAtoms_count_0_ce0 mem_ce 1 1 }  { usableAtoms_count_0_q0 mem_dout 0 16 }  { usableAtoms_count_0_address1 MemPortADDR2 1 5 }  { usableAtoms_count_0_ce1 MemPortCE2 1 1 }  { usableAtoms_count_0_we1 MemPortWE2 1 1 }  { usableAtoms_count_0_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_1 { ap_memory {  { usableAtoms_count_1_address0 mem_address 1 5 }  { usableAtoms_count_1_ce0 mem_ce 1 1 }  { usableAtoms_count_1_q0 mem_dout 0 16 }  { usableAtoms_count_1_address1 MemPortADDR2 1 5 }  { usableAtoms_count_1_ce1 MemPortCE2 1 1 }  { usableAtoms_count_1_we1 MemPortWE2 1 1 }  { usableAtoms_count_1_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_2 { ap_memory {  { usableAtoms_count_2_address0 mem_address 1 5 }  { usableAtoms_count_2_ce0 mem_ce 1 1 }  { usableAtoms_count_2_q0 mem_dout 0 16 }  { usableAtoms_count_2_address1 MemPortADDR2 1 5 }  { usableAtoms_count_2_ce1 MemPortCE2 1 1 }  { usableAtoms_count_2_we1 MemPortWE2 1 1 }  { usableAtoms_count_2_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_3 { ap_memory {  { usableAtoms_count_3_address0 mem_address 1 5 }  { usableAtoms_count_3_ce0 mem_ce 1 1 }  { usableAtoms_count_3_q0 mem_dout 0 16 }  { usableAtoms_count_3_address1 MemPortADDR2 1 5 }  { usableAtoms_count_3_ce1 MemPortCE2 1 1 }  { usableAtoms_count_3_we1 MemPortWE2 1 1 }  { usableAtoms_count_3_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_4 { ap_memory {  { usableAtoms_count_4_address0 mem_address 1 5 }  { usableAtoms_count_4_ce0 mem_ce 1 1 }  { usableAtoms_count_4_q0 mem_dout 0 16 }  { usableAtoms_count_4_address1 MemPortADDR2 1 5 }  { usableAtoms_count_4_ce1 MemPortCE2 1 1 }  { usableAtoms_count_4_we1 MemPortWE2 1 1 }  { usableAtoms_count_4_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_5 { ap_memory {  { usableAtoms_count_5_address0 mem_address 1 5 }  { usableAtoms_count_5_ce0 mem_ce 1 1 }  { usableAtoms_count_5_q0 mem_dout 0 16 }  { usableAtoms_count_5_address1 MemPortADDR2 1 5 }  { usableAtoms_count_5_ce1 MemPortCE2 1 1 }  { usableAtoms_count_5_we1 MemPortWE2 1 1 }  { usableAtoms_count_5_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_6 { ap_memory {  { usableAtoms_count_6_address0 mem_address 1 5 }  { usableAtoms_count_6_ce0 mem_ce 1 1 }  { usableAtoms_count_6_q0 mem_dout 0 16 }  { usableAtoms_count_6_address1 MemPortADDR2 1 5 }  { usableAtoms_count_6_ce1 MemPortCE2 1 1 }  { usableAtoms_count_6_we1 MemPortWE2 1 1 }  { usableAtoms_count_6_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_7 { ap_memory {  { usableAtoms_count_7_address0 mem_address 1 5 }  { usableAtoms_count_7_ce0 mem_ce 1 1 }  { usableAtoms_count_7_q0 mem_dout 0 16 }  { usableAtoms_count_7_address1 MemPortADDR2 1 5 }  { usableAtoms_count_7_ce1 MemPortCE2 1 1 }  { usableAtoms_count_7_we1 MemPortWE2 1 1 }  { usableAtoms_count_7_d1 MemPortDIN2 1 16 } } }
	unusableAtoms_count_0 { ap_memory {  { unusableAtoms_count_0_address1 MemPortADDR2 1 5 }  { unusableAtoms_count_0_ce1 MemPortCE2 1 1 }  { unusableAtoms_count_0_we1 MemPortWE2 1 1 }  { unusableAtoms_count_0_d1 MemPortDIN2 1 16 } } }
	unusableAtoms_count_1 { ap_memory {  { unusableAtoms_count_1_address1 MemPortADDR2 1 5 }  { unusableAtoms_count_1_ce1 MemPortCE2 1 1 }  { unusableAtoms_count_1_we1 MemPortWE2 1 1 }  { unusableAtoms_count_1_d1 MemPortDIN2 1 16 } } }
	unusableAtoms_count_2 { ap_memory {  { unusableAtoms_count_2_address1 MemPortADDR2 1 5 }  { unusableAtoms_count_2_ce1 MemPortCE2 1 1 }  { unusableAtoms_count_2_we1 MemPortWE2 1 1 }  { unusableAtoms_count_2_d1 MemPortDIN2 1 16 } } }
	unusableAtoms_count_3 { ap_memory {  { unusableAtoms_count_3_address1 MemPortADDR2 1 5 }  { unusableAtoms_count_3_ce1 MemPortCE2 1 1 }  { unusableAtoms_count_3_we1 MemPortWE2 1 1 }  { unusableAtoms_count_3_d1 MemPortDIN2 1 16 } } }
	unusableAtoms_count_4 { ap_memory {  { unusableAtoms_count_4_address1 MemPortADDR2 1 5 }  { unusableAtoms_count_4_ce1 MemPortCE2 1 1 }  { unusableAtoms_count_4_we1 MemPortWE2 1 1 }  { unusableAtoms_count_4_d1 MemPortDIN2 1 16 } } }
	unusableAtoms_count_5 { ap_memory {  { unusableAtoms_count_5_address1 MemPortADDR2 1 5 }  { unusableAtoms_count_5_ce1 MemPortCE2 1 1 }  { unusableAtoms_count_5_we1 MemPortWE2 1 1 }  { unusableAtoms_count_5_d1 MemPortDIN2 1 16 } } }
	unusableAtoms_count_6 { ap_memory {  { unusableAtoms_count_6_address1 MemPortADDR2 1 5 }  { unusableAtoms_count_6_ce1 MemPortCE2 1 1 }  { unusableAtoms_count_6_we1 MemPortWE2 1 1 }  { unusableAtoms_count_6_d1 MemPortDIN2 1 16 } } }
	unusableAtoms_count_7 { ap_memory {  { unusableAtoms_count_7_address1 MemPortADDR2 1 5 }  { unusableAtoms_count_7_ce1 MemPortCE2 1 1 }  { unusableAtoms_count_7_we1 MemPortWE2 1 1 }  { unusableAtoms_count_7_d1 MemPortDIN2 1 16 } } }
	targetSites_data { ap_memory {  { targetSites_data_address1 MemPortADDR2 1 16 }  { targetSites_data_ce1 MemPortCE2 1 1 }  { targetSites_data_we1 MemPortWE2 1 1 }  { targetSites_data_d1 MemPortDIN2 1 8 } } }
	targetSites_count_0 { ap_memory {  { targetSites_count_0_address0 mem_address 1 5 }  { targetSites_count_0_ce0 mem_ce 1 1 }  { targetSites_count_0_q0 mem_dout 0 16 }  { targetSites_count_0_address1 MemPortADDR2 1 5 }  { targetSites_count_0_ce1 MemPortCE2 1 1 }  { targetSites_count_0_we1 MemPortWE2 1 1 }  { targetSites_count_0_d1 MemPortDIN2 1 16 } } }
	targetSites_count_1 { ap_memory {  { targetSites_count_1_address0 mem_address 1 5 }  { targetSites_count_1_ce0 mem_ce 1 1 }  { targetSites_count_1_q0 mem_dout 0 16 }  { targetSites_count_1_address1 MemPortADDR2 1 5 }  { targetSites_count_1_ce1 MemPortCE2 1 1 }  { targetSites_count_1_we1 MemPortWE2 1 1 }  { targetSites_count_1_d1 MemPortDIN2 1 16 } } }
	targetSites_count_2 { ap_memory {  { targetSites_count_2_address0 mem_address 1 5 }  { targetSites_count_2_ce0 mem_ce 1 1 }  { targetSites_count_2_q0 mem_dout 0 16 }  { targetSites_count_2_address1 MemPortADDR2 1 5 }  { targetSites_count_2_ce1 MemPortCE2 1 1 }  { targetSites_count_2_we1 MemPortWE2 1 1 }  { targetSites_count_2_d1 MemPortDIN2 1 16 } } }
	targetSites_count_3 { ap_memory {  { targetSites_count_3_address0 mem_address 1 5 }  { targetSites_count_3_ce0 mem_ce 1 1 }  { targetSites_count_3_q0 mem_dout 0 16 }  { targetSites_count_3_address1 MemPortADDR2 1 5 }  { targetSites_count_3_ce1 MemPortCE2 1 1 }  { targetSites_count_3_we1 MemPortWE2 1 1 }  { targetSites_count_3_d1 MemPortDIN2 1 16 } } }
	targetSites_count_4 { ap_memory {  { targetSites_count_4_address0 mem_address 1 5 }  { targetSites_count_4_ce0 mem_ce 1 1 }  { targetSites_count_4_q0 mem_dout 0 16 }  { targetSites_count_4_address1 MemPortADDR2 1 5 }  { targetSites_count_4_ce1 MemPortCE2 1 1 }  { targetSites_count_4_we1 MemPortWE2 1 1 }  { targetSites_count_4_d1 MemPortDIN2 1 16 } } }
	targetSites_count_5 { ap_memory {  { targetSites_count_5_address0 mem_address 1 5 }  { targetSites_count_5_ce0 mem_ce 1 1 }  { targetSites_count_5_q0 mem_dout 0 16 }  { targetSites_count_5_address1 MemPortADDR2 1 5 }  { targetSites_count_5_ce1 MemPortCE2 1 1 }  { targetSites_count_5_we1 MemPortWE2 1 1 }  { targetSites_count_5_d1 MemPortDIN2 1 16 } } }
	targetSites_count_6 { ap_memory {  { targetSites_count_6_address0 mem_address 1 5 }  { targetSites_count_6_ce0 mem_ce 1 1 }  { targetSites_count_6_q0 mem_dout 0 16 }  { targetSites_count_6_address1 MemPortADDR2 1 5 }  { targetSites_count_6_ce1 MemPortCE2 1 1 }  { targetSites_count_6_we1 MemPortWE2 1 1 }  { targetSites_count_6_d1 MemPortDIN2 1 16 } } }
	targetSites_count_7 { ap_memory {  { targetSites_count_7_address0 mem_address 1 5 }  { targetSites_count_7_ce0 mem_ce 1 1 }  { targetSites_count_7_q0 mem_dout 0 16 }  { targetSites_count_7_address1 MemPortADDR2 1 5 }  { targetSites_count_7_ce1 MemPortCE2 1 1 }  { targetSites_count_7_we1 MemPortWE2 1 1 }  { targetSites_count_7_d1 MemPortDIN2 1 16 } } }
}
