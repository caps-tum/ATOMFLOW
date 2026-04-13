set moduleName findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
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
set C_modelName {findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict stateArray_data_s { MEM_WIDTH 1 MEM_SIZE 25000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict targetSites_count_0 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict targetSites_count_1 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict targetSites_count_2 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict targetSites_count_3 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict targetSites_count_4 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict targetSites_count_5 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict targetSites_count_6 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict targetSites_count_7 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict usableAtoms_count_0 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict usableAtoms_count_1 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict usableAtoms_count_2 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict usableAtoms_count_3 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict usableAtoms_count_4 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict usableAtoms_count_5 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict usableAtoms_count_6 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict usableAtoms_count_7 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict targetGeometry_data_s { MEM_WIDTH 1 MEM_SIZE 25000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict targetSites_data { MEM_WIDTH 8 MEM_SIZE 65536 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict usableAtoms_data { MEM_WIDTH 32 MEM_SIZE 262144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ empty_151 int 9 regular  }
	{ phi_mul int 15 regular  }
	{ stateArray_data_s int 1 regular {array 25000 { 1 3 } 1 1 }  }
	{ targetSites_count_0 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ zext_ln1446_2 int 5 regular  }
	{ targetSites_count_1 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ targetSites_count_2 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ targetSites_count_3 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ targetSites_count_4 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ targetSites_count_5 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ targetSites_count_6 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ targetSites_count_7 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_0 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_1 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_2 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_3 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_4 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_5 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_6 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_7 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ compZoneColStart int 32 regular  }
	{ compZoneColEnd int 32 regular  }
	{ cmp22 int 1 regular  }
	{ rev int 1 regular  }
	{ mul_i int 15 regular  }
	{ empty int 15 regular  }
	{ targetGeometry_data_s int 1 regular {array 25000 { 1 3 } 1 1 }  }
	{ zext_ln135_4 int 16 regular  }
	{ targetSites_data int 8 regular {array 65536 { 3 0 } 0 1 }  }
	{ usableAtoms_data int 32 regular {array 65536 { 3 0 } 0 1 }  }
	{ indexXC int 3 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "empty_151", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "phi_mul", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_data_s", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "targetSites_count_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "zext_ln1446_2", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "targetSites_count_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "targetSites_count_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "targetSites_count_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "targetSites_count_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "targetSites_count_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "targetSites_count_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "targetSites_count_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "compZoneColStart", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "compZoneColEnd", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cmp22", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rev", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "mul_i", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "targetGeometry_data_s", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln135_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "targetSites_data", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "usableAtoms_data", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "indexXC", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 143
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ empty_151 sc_in sc_lv 9 signal 0 } 
	{ phi_mul sc_in sc_lv 15 signal 1 } 
	{ stateArray_data_s_address0 sc_out sc_lv 15 signal 2 } 
	{ stateArray_data_s_ce0 sc_out sc_logic 1 signal 2 } 
	{ stateArray_data_s_q0 sc_in sc_lv 1 signal 2 } 
	{ targetSites_count_0_address0 sc_out sc_lv 5 signal 3 } 
	{ targetSites_count_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ targetSites_count_0_q0 sc_in sc_lv 16 signal 3 } 
	{ targetSites_count_0_address1 sc_out sc_lv 5 signal 3 } 
	{ targetSites_count_0_ce1 sc_out sc_logic 1 signal 3 } 
	{ targetSites_count_0_we1 sc_out sc_logic 1 signal 3 } 
	{ targetSites_count_0_d1 sc_out sc_lv 16 signal 3 } 
	{ zext_ln1446_2 sc_in sc_lv 5 signal 4 } 
	{ targetSites_count_1_address0 sc_out sc_lv 5 signal 5 } 
	{ targetSites_count_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ targetSites_count_1_q0 sc_in sc_lv 16 signal 5 } 
	{ targetSites_count_1_address1 sc_out sc_lv 5 signal 5 } 
	{ targetSites_count_1_ce1 sc_out sc_logic 1 signal 5 } 
	{ targetSites_count_1_we1 sc_out sc_logic 1 signal 5 } 
	{ targetSites_count_1_d1 sc_out sc_lv 16 signal 5 } 
	{ targetSites_count_2_address0 sc_out sc_lv 5 signal 6 } 
	{ targetSites_count_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ targetSites_count_2_q0 sc_in sc_lv 16 signal 6 } 
	{ targetSites_count_2_address1 sc_out sc_lv 5 signal 6 } 
	{ targetSites_count_2_ce1 sc_out sc_logic 1 signal 6 } 
	{ targetSites_count_2_we1 sc_out sc_logic 1 signal 6 } 
	{ targetSites_count_2_d1 sc_out sc_lv 16 signal 6 } 
	{ targetSites_count_3_address0 sc_out sc_lv 5 signal 7 } 
	{ targetSites_count_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ targetSites_count_3_q0 sc_in sc_lv 16 signal 7 } 
	{ targetSites_count_3_address1 sc_out sc_lv 5 signal 7 } 
	{ targetSites_count_3_ce1 sc_out sc_logic 1 signal 7 } 
	{ targetSites_count_3_we1 sc_out sc_logic 1 signal 7 } 
	{ targetSites_count_3_d1 sc_out sc_lv 16 signal 7 } 
	{ targetSites_count_4_address0 sc_out sc_lv 5 signal 8 } 
	{ targetSites_count_4_ce0 sc_out sc_logic 1 signal 8 } 
	{ targetSites_count_4_q0 sc_in sc_lv 16 signal 8 } 
	{ targetSites_count_4_address1 sc_out sc_lv 5 signal 8 } 
	{ targetSites_count_4_ce1 sc_out sc_logic 1 signal 8 } 
	{ targetSites_count_4_we1 sc_out sc_logic 1 signal 8 } 
	{ targetSites_count_4_d1 sc_out sc_lv 16 signal 8 } 
	{ targetSites_count_5_address0 sc_out sc_lv 5 signal 9 } 
	{ targetSites_count_5_ce0 sc_out sc_logic 1 signal 9 } 
	{ targetSites_count_5_q0 sc_in sc_lv 16 signal 9 } 
	{ targetSites_count_5_address1 sc_out sc_lv 5 signal 9 } 
	{ targetSites_count_5_ce1 sc_out sc_logic 1 signal 9 } 
	{ targetSites_count_5_we1 sc_out sc_logic 1 signal 9 } 
	{ targetSites_count_5_d1 sc_out sc_lv 16 signal 9 } 
	{ targetSites_count_6_address0 sc_out sc_lv 5 signal 10 } 
	{ targetSites_count_6_ce0 sc_out sc_logic 1 signal 10 } 
	{ targetSites_count_6_q0 sc_in sc_lv 16 signal 10 } 
	{ targetSites_count_6_address1 sc_out sc_lv 5 signal 10 } 
	{ targetSites_count_6_ce1 sc_out sc_logic 1 signal 10 } 
	{ targetSites_count_6_we1 sc_out sc_logic 1 signal 10 } 
	{ targetSites_count_6_d1 sc_out sc_lv 16 signal 10 } 
	{ targetSites_count_7_address0 sc_out sc_lv 5 signal 11 } 
	{ targetSites_count_7_ce0 sc_out sc_logic 1 signal 11 } 
	{ targetSites_count_7_q0 sc_in sc_lv 16 signal 11 } 
	{ targetSites_count_7_address1 sc_out sc_lv 5 signal 11 } 
	{ targetSites_count_7_ce1 sc_out sc_logic 1 signal 11 } 
	{ targetSites_count_7_we1 sc_out sc_logic 1 signal 11 } 
	{ targetSites_count_7_d1 sc_out sc_lv 16 signal 11 } 
	{ usableAtoms_count_0_address0 sc_out sc_lv 5 signal 12 } 
	{ usableAtoms_count_0_ce0 sc_out sc_logic 1 signal 12 } 
	{ usableAtoms_count_0_q0 sc_in sc_lv 16 signal 12 } 
	{ usableAtoms_count_0_address1 sc_out sc_lv 5 signal 12 } 
	{ usableAtoms_count_0_ce1 sc_out sc_logic 1 signal 12 } 
	{ usableAtoms_count_0_we1 sc_out sc_logic 1 signal 12 } 
	{ usableAtoms_count_0_d1 sc_out sc_lv 16 signal 12 } 
	{ usableAtoms_count_1_address0 sc_out sc_lv 5 signal 13 } 
	{ usableAtoms_count_1_ce0 sc_out sc_logic 1 signal 13 } 
	{ usableAtoms_count_1_q0 sc_in sc_lv 16 signal 13 } 
	{ usableAtoms_count_1_address1 sc_out sc_lv 5 signal 13 } 
	{ usableAtoms_count_1_ce1 sc_out sc_logic 1 signal 13 } 
	{ usableAtoms_count_1_we1 sc_out sc_logic 1 signal 13 } 
	{ usableAtoms_count_1_d1 sc_out sc_lv 16 signal 13 } 
	{ usableAtoms_count_2_address0 sc_out sc_lv 5 signal 14 } 
	{ usableAtoms_count_2_ce0 sc_out sc_logic 1 signal 14 } 
	{ usableAtoms_count_2_q0 sc_in sc_lv 16 signal 14 } 
	{ usableAtoms_count_2_address1 sc_out sc_lv 5 signal 14 } 
	{ usableAtoms_count_2_ce1 sc_out sc_logic 1 signal 14 } 
	{ usableAtoms_count_2_we1 sc_out sc_logic 1 signal 14 } 
	{ usableAtoms_count_2_d1 sc_out sc_lv 16 signal 14 } 
	{ usableAtoms_count_3_address0 sc_out sc_lv 5 signal 15 } 
	{ usableAtoms_count_3_ce0 sc_out sc_logic 1 signal 15 } 
	{ usableAtoms_count_3_q0 sc_in sc_lv 16 signal 15 } 
	{ usableAtoms_count_3_address1 sc_out sc_lv 5 signal 15 } 
	{ usableAtoms_count_3_ce1 sc_out sc_logic 1 signal 15 } 
	{ usableAtoms_count_3_we1 sc_out sc_logic 1 signal 15 } 
	{ usableAtoms_count_3_d1 sc_out sc_lv 16 signal 15 } 
	{ usableAtoms_count_4_address0 sc_out sc_lv 5 signal 16 } 
	{ usableAtoms_count_4_ce0 sc_out sc_logic 1 signal 16 } 
	{ usableAtoms_count_4_q0 sc_in sc_lv 16 signal 16 } 
	{ usableAtoms_count_4_address1 sc_out sc_lv 5 signal 16 } 
	{ usableAtoms_count_4_ce1 sc_out sc_logic 1 signal 16 } 
	{ usableAtoms_count_4_we1 sc_out sc_logic 1 signal 16 } 
	{ usableAtoms_count_4_d1 sc_out sc_lv 16 signal 16 } 
	{ usableAtoms_count_5_address0 sc_out sc_lv 5 signal 17 } 
	{ usableAtoms_count_5_ce0 sc_out sc_logic 1 signal 17 } 
	{ usableAtoms_count_5_q0 sc_in sc_lv 16 signal 17 } 
	{ usableAtoms_count_5_address1 sc_out sc_lv 5 signal 17 } 
	{ usableAtoms_count_5_ce1 sc_out sc_logic 1 signal 17 } 
	{ usableAtoms_count_5_we1 sc_out sc_logic 1 signal 17 } 
	{ usableAtoms_count_5_d1 sc_out sc_lv 16 signal 17 } 
	{ usableAtoms_count_6_address0 sc_out sc_lv 5 signal 18 } 
	{ usableAtoms_count_6_ce0 sc_out sc_logic 1 signal 18 } 
	{ usableAtoms_count_6_q0 sc_in sc_lv 16 signal 18 } 
	{ usableAtoms_count_6_address1 sc_out sc_lv 5 signal 18 } 
	{ usableAtoms_count_6_ce1 sc_out sc_logic 1 signal 18 } 
	{ usableAtoms_count_6_we1 sc_out sc_logic 1 signal 18 } 
	{ usableAtoms_count_6_d1 sc_out sc_lv 16 signal 18 } 
	{ usableAtoms_count_7_address0 sc_out sc_lv 5 signal 19 } 
	{ usableAtoms_count_7_ce0 sc_out sc_logic 1 signal 19 } 
	{ usableAtoms_count_7_q0 sc_in sc_lv 16 signal 19 } 
	{ usableAtoms_count_7_address1 sc_out sc_lv 5 signal 19 } 
	{ usableAtoms_count_7_ce1 sc_out sc_logic 1 signal 19 } 
	{ usableAtoms_count_7_we1 sc_out sc_logic 1 signal 19 } 
	{ usableAtoms_count_7_d1 sc_out sc_lv 16 signal 19 } 
	{ compZoneColStart sc_in sc_lv 32 signal 20 } 
	{ compZoneColEnd sc_in sc_lv 32 signal 21 } 
	{ cmp22 sc_in sc_lv 1 signal 22 } 
	{ rev sc_in sc_lv 1 signal 23 } 
	{ mul_i sc_in sc_lv 15 signal 24 } 
	{ empty sc_in sc_lv 15 signal 25 } 
	{ targetGeometry_data_s_address0 sc_out sc_lv 15 signal 26 } 
	{ targetGeometry_data_s_ce0 sc_out sc_logic 1 signal 26 } 
	{ targetGeometry_data_s_q0 sc_in sc_lv 1 signal 26 } 
	{ zext_ln135_4 sc_in sc_lv 16 signal 27 } 
	{ targetSites_data_address1 sc_out sc_lv 16 signal 28 } 
	{ targetSites_data_ce1 sc_out sc_logic 1 signal 28 } 
	{ targetSites_data_we1 sc_out sc_logic 1 signal 28 } 
	{ targetSites_data_d1 sc_out sc_lv 8 signal 28 } 
	{ usableAtoms_data_address1 sc_out sc_lv 16 signal 29 } 
	{ usableAtoms_data_ce1 sc_out sc_logic 1 signal 29 } 
	{ usableAtoms_data_we1 sc_out sc_logic 1 signal 29 } 
	{ usableAtoms_data_d1 sc_out sc_lv 32 signal 29 } 
	{ indexXC sc_in sc_lv 3 signal 30 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "empty_151", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "empty_151", "role": "default" }} , 
 	{ "name": "phi_mul", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "phi_mul", "role": "default" }} , 
 	{ "name": "stateArray_data_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "address0" }} , 
 	{ "name": "stateArray_data_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "ce0" }} , 
 	{ "name": "stateArray_data_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "q0" }} , 
 	{ "name": "targetSites_count_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "targetSites_count_0", "role": "address0" }} , 
 	{ "name": "targetSites_count_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_0", "role": "ce0" }} , 
 	{ "name": "targetSites_count_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_count_0", "role": "q0" }} , 
 	{ "name": "targetSites_count_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "targetSites_count_0", "role": "address1" }} , 
 	{ "name": "targetSites_count_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_0", "role": "ce1" }} , 
 	{ "name": "targetSites_count_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_count_0", "role": "we1" }} , 
 	{ "name": "targetSites_count_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_count_0", "role": "d1" }} , 
 	{ "name": "zext_ln1446_2", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "zext_ln1446_2", "role": "default" }} , 
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
 	{ "name": "compZoneColStart", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compZoneColStart", "role": "default" }} , 
 	{ "name": "compZoneColEnd", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compZoneColEnd", "role": "default" }} , 
 	{ "name": "cmp22", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp22", "role": "default" }} , 
 	{ "name": "rev", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rev", "role": "default" }} , 
 	{ "name": "mul_i", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "mul_i", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "targetGeometry_data_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "targetGeometry_data_s", "role": "address0" }} , 
 	{ "name": "targetGeometry_data_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetGeometry_data_s", "role": "ce0" }} , 
 	{ "name": "targetGeometry_data_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "targetGeometry_data_s", "role": "q0" }} , 
 	{ "name": "zext_ln135_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln135_4", "role": "default" }} , 
 	{ "name": "targetSites_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_data", "role": "address1" }} , 
 	{ "name": "targetSites_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_data", "role": "ce1" }} , 
 	{ "name": "targetSites_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_data", "role": "we1" }} , 
 	{ "name": "targetSites_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "targetSites_data", "role": "d1" }} , 
 	{ "name": "usableAtoms_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usableAtoms_data", "role": "address1" }} , 
 	{ "name": "usableAtoms_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_data", "role": "ce1" }} , 
 	{ "name": "usableAtoms_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_data", "role": "we1" }} , 
 	{ "name": "usableAtoms_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "usableAtoms_data", "role": "d1" }} , 
 	{ "name": "indexXC", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "indexXC", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_16_1_1_U551", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_16_1_1_U552", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "4", "Max" : "102"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "102"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	empty_151 { ap_none {  { empty_151 in_data 0 9 } } }
	phi_mul { ap_none {  { phi_mul in_data 0 15 } } }
	stateArray_data_s { ap_memory {  { stateArray_data_s_address0 mem_address 1 15 }  { stateArray_data_s_ce0 mem_ce 1 1 }  { stateArray_data_s_q0 mem_dout 0 1 } } }
	targetSites_count_0 { ap_memory {  { targetSites_count_0_address0 mem_address 1 5 }  { targetSites_count_0_ce0 mem_ce 1 1 }  { targetSites_count_0_q0 mem_dout 0 16 }  { targetSites_count_0_address1 MemPortADDR2 1 5 }  { targetSites_count_0_ce1 MemPortCE2 1 1 }  { targetSites_count_0_we1 MemPortWE2 1 1 }  { targetSites_count_0_d1 MemPortDIN2 1 16 } } }
	zext_ln1446_2 { ap_none {  { zext_ln1446_2 in_data 0 5 } } }
	targetSites_count_1 { ap_memory {  { targetSites_count_1_address0 mem_address 1 5 }  { targetSites_count_1_ce0 mem_ce 1 1 }  { targetSites_count_1_q0 mem_dout 0 16 }  { targetSites_count_1_address1 MemPortADDR2 1 5 }  { targetSites_count_1_ce1 MemPortCE2 1 1 }  { targetSites_count_1_we1 MemPortWE2 1 1 }  { targetSites_count_1_d1 MemPortDIN2 1 16 } } }
	targetSites_count_2 { ap_memory {  { targetSites_count_2_address0 mem_address 1 5 }  { targetSites_count_2_ce0 mem_ce 1 1 }  { targetSites_count_2_q0 mem_dout 0 16 }  { targetSites_count_2_address1 MemPortADDR2 1 5 }  { targetSites_count_2_ce1 MemPortCE2 1 1 }  { targetSites_count_2_we1 MemPortWE2 1 1 }  { targetSites_count_2_d1 MemPortDIN2 1 16 } } }
	targetSites_count_3 { ap_memory {  { targetSites_count_3_address0 mem_address 1 5 }  { targetSites_count_3_ce0 mem_ce 1 1 }  { targetSites_count_3_q0 mem_dout 0 16 }  { targetSites_count_3_address1 MemPortADDR2 1 5 }  { targetSites_count_3_ce1 MemPortCE2 1 1 }  { targetSites_count_3_we1 MemPortWE2 1 1 }  { targetSites_count_3_d1 MemPortDIN2 1 16 } } }
	targetSites_count_4 { ap_memory {  { targetSites_count_4_address0 mem_address 1 5 }  { targetSites_count_4_ce0 mem_ce 1 1 }  { targetSites_count_4_q0 mem_dout 0 16 }  { targetSites_count_4_address1 MemPortADDR2 1 5 }  { targetSites_count_4_ce1 MemPortCE2 1 1 }  { targetSites_count_4_we1 MemPortWE2 1 1 }  { targetSites_count_4_d1 MemPortDIN2 1 16 } } }
	targetSites_count_5 { ap_memory {  { targetSites_count_5_address0 mem_address 1 5 }  { targetSites_count_5_ce0 mem_ce 1 1 }  { targetSites_count_5_q0 mem_dout 0 16 }  { targetSites_count_5_address1 MemPortADDR2 1 5 }  { targetSites_count_5_ce1 MemPortCE2 1 1 }  { targetSites_count_5_we1 MemPortWE2 1 1 }  { targetSites_count_5_d1 MemPortDIN2 1 16 } } }
	targetSites_count_6 { ap_memory {  { targetSites_count_6_address0 mem_address 1 5 }  { targetSites_count_6_ce0 mem_ce 1 1 }  { targetSites_count_6_q0 mem_dout 0 16 }  { targetSites_count_6_address1 MemPortADDR2 1 5 }  { targetSites_count_6_ce1 MemPortCE2 1 1 }  { targetSites_count_6_we1 MemPortWE2 1 1 }  { targetSites_count_6_d1 MemPortDIN2 1 16 } } }
	targetSites_count_7 { ap_memory {  { targetSites_count_7_address0 mem_address 1 5 }  { targetSites_count_7_ce0 mem_ce 1 1 }  { targetSites_count_7_q0 mem_dout 0 16 }  { targetSites_count_7_address1 MemPortADDR2 1 5 }  { targetSites_count_7_ce1 MemPortCE2 1 1 }  { targetSites_count_7_we1 MemPortWE2 1 1 }  { targetSites_count_7_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_0 { ap_memory {  { usableAtoms_count_0_address0 mem_address 1 5 }  { usableAtoms_count_0_ce0 mem_ce 1 1 }  { usableAtoms_count_0_q0 mem_dout 0 16 }  { usableAtoms_count_0_address1 MemPortADDR2 1 5 }  { usableAtoms_count_0_ce1 MemPortCE2 1 1 }  { usableAtoms_count_0_we1 MemPortWE2 1 1 }  { usableAtoms_count_0_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_1 { ap_memory {  { usableAtoms_count_1_address0 mem_address 1 5 }  { usableAtoms_count_1_ce0 mem_ce 1 1 }  { usableAtoms_count_1_q0 mem_dout 0 16 }  { usableAtoms_count_1_address1 MemPortADDR2 1 5 }  { usableAtoms_count_1_ce1 MemPortCE2 1 1 }  { usableAtoms_count_1_we1 MemPortWE2 1 1 }  { usableAtoms_count_1_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_2 { ap_memory {  { usableAtoms_count_2_address0 mem_address 1 5 }  { usableAtoms_count_2_ce0 mem_ce 1 1 }  { usableAtoms_count_2_q0 mem_dout 0 16 }  { usableAtoms_count_2_address1 MemPortADDR2 1 5 }  { usableAtoms_count_2_ce1 MemPortCE2 1 1 }  { usableAtoms_count_2_we1 MemPortWE2 1 1 }  { usableAtoms_count_2_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_3 { ap_memory {  { usableAtoms_count_3_address0 mem_address 1 5 }  { usableAtoms_count_3_ce0 mem_ce 1 1 }  { usableAtoms_count_3_q0 mem_dout 0 16 }  { usableAtoms_count_3_address1 MemPortADDR2 1 5 }  { usableAtoms_count_3_ce1 MemPortCE2 1 1 }  { usableAtoms_count_3_we1 MemPortWE2 1 1 }  { usableAtoms_count_3_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_4 { ap_memory {  { usableAtoms_count_4_address0 mem_address 1 5 }  { usableAtoms_count_4_ce0 mem_ce 1 1 }  { usableAtoms_count_4_q0 mem_dout 0 16 }  { usableAtoms_count_4_address1 MemPortADDR2 1 5 }  { usableAtoms_count_4_ce1 MemPortCE2 1 1 }  { usableAtoms_count_4_we1 MemPortWE2 1 1 }  { usableAtoms_count_4_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_5 { ap_memory {  { usableAtoms_count_5_address0 mem_address 1 5 }  { usableAtoms_count_5_ce0 mem_ce 1 1 }  { usableAtoms_count_5_q0 mem_dout 0 16 }  { usableAtoms_count_5_address1 MemPortADDR2 1 5 }  { usableAtoms_count_5_ce1 MemPortCE2 1 1 }  { usableAtoms_count_5_we1 MemPortWE2 1 1 }  { usableAtoms_count_5_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_6 { ap_memory {  { usableAtoms_count_6_address0 mem_address 1 5 }  { usableAtoms_count_6_ce0 mem_ce 1 1 }  { usableAtoms_count_6_q0 mem_dout 0 16 }  { usableAtoms_count_6_address1 MemPortADDR2 1 5 }  { usableAtoms_count_6_ce1 MemPortCE2 1 1 }  { usableAtoms_count_6_we1 MemPortWE2 1 1 }  { usableAtoms_count_6_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_7 { ap_memory {  { usableAtoms_count_7_address0 mem_address 1 5 }  { usableAtoms_count_7_ce0 mem_ce 1 1 }  { usableAtoms_count_7_q0 mem_dout 0 16 }  { usableAtoms_count_7_address1 MemPortADDR2 1 5 }  { usableAtoms_count_7_ce1 MemPortCE2 1 1 }  { usableAtoms_count_7_we1 MemPortWE2 1 1 }  { usableAtoms_count_7_d1 MemPortDIN2 1 16 } } }
	compZoneColStart { ap_none {  { compZoneColStart in_data 0 32 } } }
	compZoneColEnd { ap_none {  { compZoneColEnd in_data 0 32 } } }
	cmp22 { ap_none {  { cmp22 in_data 0 1 } } }
	rev { ap_none {  { rev in_data 0 1 } } }
	mul_i { ap_none {  { mul_i in_data 0 15 } } }
	empty { ap_none {  { empty in_data 0 15 } } }
	targetGeometry_data_s { ap_memory {  { targetGeometry_data_s_address0 mem_address 1 15 }  { targetGeometry_data_s_ce0 mem_ce 1 1 }  { targetGeometry_data_s_q0 mem_dout 0 1 } } }
	zext_ln135_4 { ap_none {  { zext_ln135_4 in_data 0 16 } } }
	targetSites_data { ap_memory {  { targetSites_data_address1 MemPortADDR2 1 16 }  { targetSites_data_ce1 MemPortCE2 1 1 }  { targetSites_data_we1 MemPortWE2 1 1 }  { targetSites_data_d1 MemPortDIN2 1 8 } } }
	usableAtoms_data { ap_memory {  { usableAtoms_data_address1 MemPortADDR2 1 16 }  { usableAtoms_data_ce1 MemPortCE2 1 1 }  { usableAtoms_data_we1 MemPortWE2 1 1 }  { usableAtoms_data_d1 MemPortDIN2 1 32 } } }
	indexXC { ap_none {  { indexXC in_data 0 3 } } }
}
