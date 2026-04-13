set moduleName resolveSortingDeficiencies_HLSMoveStream_s
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
set C_modelName {resolveSortingDeficiencies<HLSMoveStream>}
set C_modelType { int 32 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict stateArray_data_s { MEM_WIDTH 1 MEM_SIZE 25000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict usableAtoms_data { MEM_WIDTH 32 MEM_SIZE 262144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict usableAtoms_count_0 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict usableAtoms_count_1 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict usableAtoms_count_2 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict usableAtoms_count_3 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict usableAtoms_count_4 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict usableAtoms_count_5 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict usableAtoms_count_6 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict usableAtoms_count_7 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict targetSites_data { MEM_WIDTH 8 MEM_SIZE 65536 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict targetSites_count_0 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict targetSites_count_1 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict targetSites_count_2 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict targetSites_count_3 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict targetSites_count_4 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict targetSites_count_5 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict targetSites_count_6 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict targetSites_count_7 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ stateArray_data_s int 1 regular {array 25000 { 3 0 } 0 1 }  }
	{ stateArray_rows_val1 int 16 regular  }
	{ stateArray_cols_val2 int 16 regular  }
	{ moveStream int 512 regular {axi_s 1 volatile  { moveStream Data } }  }
	{ moveList_count_read int 32 regular  }
	{ arraySizeXC int 32 regular  }
	{ usableAtoms_data int 32 regular {array 65536 { 1 3 } 1 1 }  }
	{ usableAtoms_count_0 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_1 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_2 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_3 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_4 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_5 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_6 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ usableAtoms_count_7 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ targetSites_data int 8 regular {array 65536 { 1 3 } 1 1 }  }
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
	{ "Name" : "stateArray_data_s", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stateArray_rows_val1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_cols_val2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "moveStream", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "moveList_count_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arraySizeXC", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "usableAtoms_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "usableAtoms_count_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "usableAtoms_count_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "targetSites_data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "targetSites_count_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "targetSites_count_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "targetSites_count_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "targetSites_count_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "targetSites_count_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "targetSites_count_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "targetSites_count_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "targetSites_count_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 136
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stateArray_data_s_address1 sc_out sc_lv 15 signal 0 } 
	{ stateArray_data_s_ce1 sc_out sc_logic 1 signal 0 } 
	{ stateArray_data_s_we1 sc_out sc_logic 1 signal 0 } 
	{ stateArray_data_s_d1 sc_out sc_lv 1 signal 0 } 
	{ stateArray_rows_val1 sc_in sc_lv 16 signal 1 } 
	{ stateArray_cols_val2 sc_in sc_lv 16 signal 2 } 
	{ moveStream_TDATA sc_out sc_lv 512 signal 3 } 
	{ moveStream_TVALID sc_out sc_logic 1 outvld 3 } 
	{ moveStream_TREADY sc_in sc_logic 1 outacc 3 } 
	{ moveList_count_read sc_in sc_lv 32 signal 4 } 
	{ arraySizeXC sc_in sc_lv 32 signal 5 } 
	{ usableAtoms_data_address0 sc_out sc_lv 16 signal 6 } 
	{ usableAtoms_data_ce0 sc_out sc_logic 1 signal 6 } 
	{ usableAtoms_data_q0 sc_in sc_lv 32 signal 6 } 
	{ usableAtoms_count_0_address0 sc_out sc_lv 5 signal 7 } 
	{ usableAtoms_count_0_ce0 sc_out sc_logic 1 signal 7 } 
	{ usableAtoms_count_0_q0 sc_in sc_lv 16 signal 7 } 
	{ usableAtoms_count_0_address1 sc_out sc_lv 5 signal 7 } 
	{ usableAtoms_count_0_ce1 sc_out sc_logic 1 signal 7 } 
	{ usableAtoms_count_0_we1 sc_out sc_logic 1 signal 7 } 
	{ usableAtoms_count_0_d1 sc_out sc_lv 16 signal 7 } 
	{ usableAtoms_count_1_address0 sc_out sc_lv 5 signal 8 } 
	{ usableAtoms_count_1_ce0 sc_out sc_logic 1 signal 8 } 
	{ usableAtoms_count_1_q0 sc_in sc_lv 16 signal 8 } 
	{ usableAtoms_count_1_address1 sc_out sc_lv 5 signal 8 } 
	{ usableAtoms_count_1_ce1 sc_out sc_logic 1 signal 8 } 
	{ usableAtoms_count_1_we1 sc_out sc_logic 1 signal 8 } 
	{ usableAtoms_count_1_d1 sc_out sc_lv 16 signal 8 } 
	{ usableAtoms_count_2_address0 sc_out sc_lv 5 signal 9 } 
	{ usableAtoms_count_2_ce0 sc_out sc_logic 1 signal 9 } 
	{ usableAtoms_count_2_q0 sc_in sc_lv 16 signal 9 } 
	{ usableAtoms_count_2_address1 sc_out sc_lv 5 signal 9 } 
	{ usableAtoms_count_2_ce1 sc_out sc_logic 1 signal 9 } 
	{ usableAtoms_count_2_we1 sc_out sc_logic 1 signal 9 } 
	{ usableAtoms_count_2_d1 sc_out sc_lv 16 signal 9 } 
	{ usableAtoms_count_3_address0 sc_out sc_lv 5 signal 10 } 
	{ usableAtoms_count_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ usableAtoms_count_3_q0 sc_in sc_lv 16 signal 10 } 
	{ usableAtoms_count_3_address1 sc_out sc_lv 5 signal 10 } 
	{ usableAtoms_count_3_ce1 sc_out sc_logic 1 signal 10 } 
	{ usableAtoms_count_3_we1 sc_out sc_logic 1 signal 10 } 
	{ usableAtoms_count_3_d1 sc_out sc_lv 16 signal 10 } 
	{ usableAtoms_count_4_address0 sc_out sc_lv 5 signal 11 } 
	{ usableAtoms_count_4_ce0 sc_out sc_logic 1 signal 11 } 
	{ usableAtoms_count_4_q0 sc_in sc_lv 16 signal 11 } 
	{ usableAtoms_count_4_address1 sc_out sc_lv 5 signal 11 } 
	{ usableAtoms_count_4_ce1 sc_out sc_logic 1 signal 11 } 
	{ usableAtoms_count_4_we1 sc_out sc_logic 1 signal 11 } 
	{ usableAtoms_count_4_d1 sc_out sc_lv 16 signal 11 } 
	{ usableAtoms_count_5_address0 sc_out sc_lv 5 signal 12 } 
	{ usableAtoms_count_5_ce0 sc_out sc_logic 1 signal 12 } 
	{ usableAtoms_count_5_q0 sc_in sc_lv 16 signal 12 } 
	{ usableAtoms_count_5_address1 sc_out sc_lv 5 signal 12 } 
	{ usableAtoms_count_5_ce1 sc_out sc_logic 1 signal 12 } 
	{ usableAtoms_count_5_we1 sc_out sc_logic 1 signal 12 } 
	{ usableAtoms_count_5_d1 sc_out sc_lv 16 signal 12 } 
	{ usableAtoms_count_6_address0 sc_out sc_lv 5 signal 13 } 
	{ usableAtoms_count_6_ce0 sc_out sc_logic 1 signal 13 } 
	{ usableAtoms_count_6_q0 sc_in sc_lv 16 signal 13 } 
	{ usableAtoms_count_6_address1 sc_out sc_lv 5 signal 13 } 
	{ usableAtoms_count_6_ce1 sc_out sc_logic 1 signal 13 } 
	{ usableAtoms_count_6_we1 sc_out sc_logic 1 signal 13 } 
	{ usableAtoms_count_6_d1 sc_out sc_lv 16 signal 13 } 
	{ usableAtoms_count_7_address0 sc_out sc_lv 5 signal 14 } 
	{ usableAtoms_count_7_ce0 sc_out sc_logic 1 signal 14 } 
	{ usableAtoms_count_7_q0 sc_in sc_lv 16 signal 14 } 
	{ usableAtoms_count_7_address1 sc_out sc_lv 5 signal 14 } 
	{ usableAtoms_count_7_ce1 sc_out sc_logic 1 signal 14 } 
	{ usableAtoms_count_7_we1 sc_out sc_logic 1 signal 14 } 
	{ usableAtoms_count_7_d1 sc_out sc_lv 16 signal 14 } 
	{ targetSites_data_address0 sc_out sc_lv 16 signal 15 } 
	{ targetSites_data_ce0 sc_out sc_logic 1 signal 15 } 
	{ targetSites_data_q0 sc_in sc_lv 8 signal 15 } 
	{ targetSites_count_0_address0 sc_out sc_lv 5 signal 16 } 
	{ targetSites_count_0_ce0 sc_out sc_logic 1 signal 16 } 
	{ targetSites_count_0_q0 sc_in sc_lv 16 signal 16 } 
	{ targetSites_count_0_address1 sc_out sc_lv 5 signal 16 } 
	{ targetSites_count_0_ce1 sc_out sc_logic 1 signal 16 } 
	{ targetSites_count_0_we1 sc_out sc_logic 1 signal 16 } 
	{ targetSites_count_0_d1 sc_out sc_lv 16 signal 16 } 
	{ targetSites_count_1_address0 sc_out sc_lv 5 signal 17 } 
	{ targetSites_count_1_ce0 sc_out sc_logic 1 signal 17 } 
	{ targetSites_count_1_q0 sc_in sc_lv 16 signal 17 } 
	{ targetSites_count_1_address1 sc_out sc_lv 5 signal 17 } 
	{ targetSites_count_1_ce1 sc_out sc_logic 1 signal 17 } 
	{ targetSites_count_1_we1 sc_out sc_logic 1 signal 17 } 
	{ targetSites_count_1_d1 sc_out sc_lv 16 signal 17 } 
	{ targetSites_count_2_address0 sc_out sc_lv 5 signal 18 } 
	{ targetSites_count_2_ce0 sc_out sc_logic 1 signal 18 } 
	{ targetSites_count_2_q0 sc_in sc_lv 16 signal 18 } 
	{ targetSites_count_2_address1 sc_out sc_lv 5 signal 18 } 
	{ targetSites_count_2_ce1 sc_out sc_logic 1 signal 18 } 
	{ targetSites_count_2_we1 sc_out sc_logic 1 signal 18 } 
	{ targetSites_count_2_d1 sc_out sc_lv 16 signal 18 } 
	{ targetSites_count_3_address0 sc_out sc_lv 5 signal 19 } 
	{ targetSites_count_3_ce0 sc_out sc_logic 1 signal 19 } 
	{ targetSites_count_3_q0 sc_in sc_lv 16 signal 19 } 
	{ targetSites_count_3_address1 sc_out sc_lv 5 signal 19 } 
	{ targetSites_count_3_ce1 sc_out sc_logic 1 signal 19 } 
	{ targetSites_count_3_we1 sc_out sc_logic 1 signal 19 } 
	{ targetSites_count_3_d1 sc_out sc_lv 16 signal 19 } 
	{ targetSites_count_4_address0 sc_out sc_lv 5 signal 20 } 
	{ targetSites_count_4_ce0 sc_out sc_logic 1 signal 20 } 
	{ targetSites_count_4_q0 sc_in sc_lv 16 signal 20 } 
	{ targetSites_count_4_address1 sc_out sc_lv 5 signal 20 } 
	{ targetSites_count_4_ce1 sc_out sc_logic 1 signal 20 } 
	{ targetSites_count_4_we1 sc_out sc_logic 1 signal 20 } 
	{ targetSites_count_4_d1 sc_out sc_lv 16 signal 20 } 
	{ targetSites_count_5_address0 sc_out sc_lv 5 signal 21 } 
	{ targetSites_count_5_ce0 sc_out sc_logic 1 signal 21 } 
	{ targetSites_count_5_q0 sc_in sc_lv 16 signal 21 } 
	{ targetSites_count_5_address1 sc_out sc_lv 5 signal 21 } 
	{ targetSites_count_5_ce1 sc_out sc_logic 1 signal 21 } 
	{ targetSites_count_5_we1 sc_out sc_logic 1 signal 21 } 
	{ targetSites_count_5_d1 sc_out sc_lv 16 signal 21 } 
	{ targetSites_count_6_address0 sc_out sc_lv 5 signal 22 } 
	{ targetSites_count_6_ce0 sc_out sc_logic 1 signal 22 } 
	{ targetSites_count_6_q0 sc_in sc_lv 16 signal 22 } 
	{ targetSites_count_6_address1 sc_out sc_lv 5 signal 22 } 
	{ targetSites_count_6_ce1 sc_out sc_logic 1 signal 22 } 
	{ targetSites_count_6_we1 sc_out sc_logic 1 signal 22 } 
	{ targetSites_count_6_d1 sc_out sc_lv 16 signal 22 } 
	{ targetSites_count_7_address0 sc_out sc_lv 5 signal 23 } 
	{ targetSites_count_7_ce0 sc_out sc_logic 1 signal 23 } 
	{ targetSites_count_7_q0 sc_in sc_lv 16 signal 23 } 
	{ targetSites_count_7_address1 sc_out sc_lv 5 signal 23 } 
	{ targetSites_count_7_ce1 sc_out sc_logic 1 signal 23 } 
	{ targetSites_count_7_we1 sc_out sc_logic 1 signal 23 } 
	{ targetSites_count_7_d1 sc_out sc_lv 16 signal 23 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stateArray_data_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "address1" }} , 
 	{ "name": "stateArray_data_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "ce1" }} , 
 	{ "name": "stateArray_data_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "we1" }} , 
 	{ "name": "stateArray_data_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "d1" }} , 
 	{ "name": "stateArray_rows_val1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "stateArray_rows_val1", "role": "default" }} , 
 	{ "name": "stateArray_cols_val2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "stateArray_cols_val2", "role": "default" }} , 
 	{ "name": "moveStream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "moveStream", "role": "TDATA" }} , 
 	{ "name": "moveStream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "moveStream", "role": "TVALID" }} , 
 	{ "name": "moveStream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "moveStream", "role": "TREADY" }} , 
 	{ "name": "moveList_count_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "moveList_count_read", "role": "default" }} , 
 	{ "name": "arraySizeXC", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arraySizeXC", "role": "default" }} , 
 	{ "name": "usableAtoms_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usableAtoms_data", "role": "address0" }} , 
 	{ "name": "usableAtoms_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_data", "role": "ce0" }} , 
 	{ "name": "usableAtoms_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "usableAtoms_data", "role": "q0" }} , 
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
 	{ "name": "targetSites_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_data", "role": "address0" }} , 
 	{ "name": "targetSites_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_data", "role": "ce0" }} , 
 	{ "name": "targetSites_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "targetSites_data", "role": "q0" }} , 
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
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "14", "15", "16", "24", "27", "28"],
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
					{"ID" : "16", "SubInstance" : "grp_execute_fu_3951", "Port" : "stateArray_data_s", "Inst_start_state" : "113", "Inst_end_state" : "114"}]},
			{"Name" : "stateArray_rows_val1", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_cols_val2", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveStream", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_push_back_fu_3960", "Port" : "moveStream", "Inst_start_state" : "115", "Inst_end_state" : "116"}]},
			{"Name" : "moveList_count_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "arraySizeXC", "Type" : "None", "Direction" : "I"},
			{"Name" : "usableAtoms_data", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1695_7_fu_3918", "Port" : "usableAtoms_data", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
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
					{"ID" : "12", "SubInstance" : "grp_resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1695_7_fu_3918", "Port" : "targetSites_data", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.move_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ref_tmp_i_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ref_tmp_i_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_colSelection_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_rowSelection_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.elbow1_colSelection_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.elbow1_rowSelection_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.elbow2_colSelection_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.elbow2_rowSelection_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.end_colSelection_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.end_rowSelection_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1695_7_fu_3918", "Parent" : "0", "Child" : ["13"],
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
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1695_7_fu_3918.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1716_8_fu_3933", "Parent" : "0",
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
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1723_9_fu_3942", "Parent" : "0",
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
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_3951", "Parent" : "0", "Child" : ["17", "19", "21", "22", "23"],
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
					{"ID" : "17", "SubInstance" : "grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296", "Port" : "move", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "19", "SubInstance" : "grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304", "Port" : "move", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
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
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_3951.grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296", "Parent" : "16", "Child" : ["18"],
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
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_3951.grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_3951.grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304", "Parent" : "16", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_3951.grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_3951.mul_8ns_8ns_16_1_1_U642", "Parent" : "16"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_3951.mac_muladd_15s_15s_15ns_15_4_1_U643", "Parent" : "16"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_3951.mac_muladd_15s_15s_15ns_15_4_1_U644", "Parent" : "16"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_push_back_fu_3960", "Parent" : "0", "Child" : ["25"],
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
					{"ID" : "25", "SubInstance" : "grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Port" : "moveStream", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "this_count_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "move", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Port" : "move", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_push_back_fu_3960.grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Parent" : "24", "Child" : ["26"],
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
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_push_back_fu_3960.grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_16_1_1_U909", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_16_1_1_U910", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "1", "Max" : "249866"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "249866"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stateArray_data_s { ap_memory {  { stateArray_data_s_address1 MemPortADDR2 1 15 }  { stateArray_data_s_ce1 MemPortCE2 1 1 }  { stateArray_data_s_we1 MemPortWE2 1 1 }  { stateArray_data_s_d1 MemPortDIN2 1 1 } } }
	stateArray_rows_val1 { ap_none {  { stateArray_rows_val1 in_data 0 16 } } }
	stateArray_cols_val2 { ap_none {  { stateArray_cols_val2 in_data 0 16 } } }
	moveStream { axis {  { moveStream_TDATA out_data 1 512 }  { moveStream_TVALID out_vld 1 1 }  { moveStream_TREADY out_acc 0 1 } } }
	moveList_count_read { ap_none {  { moveList_count_read in_data 0 32 } } }
	arraySizeXC { ap_none {  { arraySizeXC in_data 0 32 } } }
	usableAtoms_data { ap_memory {  { usableAtoms_data_address0 mem_address 1 16 }  { usableAtoms_data_ce0 mem_ce 1 1 }  { usableAtoms_data_q0 mem_dout 0 32 } } }
	usableAtoms_count_0 { ap_memory {  { usableAtoms_count_0_address0 mem_address 1 5 }  { usableAtoms_count_0_ce0 mem_ce 1 1 }  { usableAtoms_count_0_q0 mem_dout 0 16 }  { usableAtoms_count_0_address1 MemPortADDR2 1 5 }  { usableAtoms_count_0_ce1 MemPortCE2 1 1 }  { usableAtoms_count_0_we1 MemPortWE2 1 1 }  { usableAtoms_count_0_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_1 { ap_memory {  { usableAtoms_count_1_address0 mem_address 1 5 }  { usableAtoms_count_1_ce0 mem_ce 1 1 }  { usableAtoms_count_1_q0 mem_dout 0 16 }  { usableAtoms_count_1_address1 MemPortADDR2 1 5 }  { usableAtoms_count_1_ce1 MemPortCE2 1 1 }  { usableAtoms_count_1_we1 MemPortWE2 1 1 }  { usableAtoms_count_1_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_2 { ap_memory {  { usableAtoms_count_2_address0 mem_address 1 5 }  { usableAtoms_count_2_ce0 mem_ce 1 1 }  { usableAtoms_count_2_q0 mem_dout 0 16 }  { usableAtoms_count_2_address1 MemPortADDR2 1 5 }  { usableAtoms_count_2_ce1 MemPortCE2 1 1 }  { usableAtoms_count_2_we1 MemPortWE2 1 1 }  { usableAtoms_count_2_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_3 { ap_memory {  { usableAtoms_count_3_address0 mem_address 1 5 }  { usableAtoms_count_3_ce0 mem_ce 1 1 }  { usableAtoms_count_3_q0 mem_dout 0 16 }  { usableAtoms_count_3_address1 MemPortADDR2 1 5 }  { usableAtoms_count_3_ce1 MemPortCE2 1 1 }  { usableAtoms_count_3_we1 MemPortWE2 1 1 }  { usableAtoms_count_3_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_4 { ap_memory {  { usableAtoms_count_4_address0 mem_address 1 5 }  { usableAtoms_count_4_ce0 mem_ce 1 1 }  { usableAtoms_count_4_q0 mem_dout 0 16 }  { usableAtoms_count_4_address1 MemPortADDR2 1 5 }  { usableAtoms_count_4_ce1 MemPortCE2 1 1 }  { usableAtoms_count_4_we1 MemPortWE2 1 1 }  { usableAtoms_count_4_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_5 { ap_memory {  { usableAtoms_count_5_address0 mem_address 1 5 }  { usableAtoms_count_5_ce0 mem_ce 1 1 }  { usableAtoms_count_5_q0 mem_dout 0 16 }  { usableAtoms_count_5_address1 MemPortADDR2 1 5 }  { usableAtoms_count_5_ce1 MemPortCE2 1 1 }  { usableAtoms_count_5_we1 MemPortWE2 1 1 }  { usableAtoms_count_5_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_6 { ap_memory {  { usableAtoms_count_6_address0 mem_address 1 5 }  { usableAtoms_count_6_ce0 mem_ce 1 1 }  { usableAtoms_count_6_q0 mem_dout 0 16 }  { usableAtoms_count_6_address1 MemPortADDR2 1 5 }  { usableAtoms_count_6_ce1 MemPortCE2 1 1 }  { usableAtoms_count_6_we1 MemPortWE2 1 1 }  { usableAtoms_count_6_d1 MemPortDIN2 1 16 } } }
	usableAtoms_count_7 { ap_memory {  { usableAtoms_count_7_address0 mem_address 1 5 }  { usableAtoms_count_7_ce0 mem_ce 1 1 }  { usableAtoms_count_7_q0 mem_dout 0 16 }  { usableAtoms_count_7_address1 MemPortADDR2 1 5 }  { usableAtoms_count_7_ce1 MemPortCE2 1 1 }  { usableAtoms_count_7_we1 MemPortWE2 1 1 }  { usableAtoms_count_7_d1 MemPortDIN2 1 16 } } }
	targetSites_data { ap_memory {  { targetSites_data_address0 mem_address 1 16 }  { targetSites_data_ce0 mem_ce 1 1 }  { targetSites_data_q0 mem_dout 0 8 } } }
	targetSites_count_0 { ap_memory {  { targetSites_count_0_address0 mem_address 1 5 }  { targetSites_count_0_ce0 mem_ce 1 1 }  { targetSites_count_0_q0 mem_dout 0 16 }  { targetSites_count_0_address1 MemPortADDR2 1 5 }  { targetSites_count_0_ce1 MemPortCE2 1 1 }  { targetSites_count_0_we1 MemPortWE2 1 1 }  { targetSites_count_0_d1 MemPortDIN2 1 16 } } }
	targetSites_count_1 { ap_memory {  { targetSites_count_1_address0 mem_address 1 5 }  { targetSites_count_1_ce0 mem_ce 1 1 }  { targetSites_count_1_q0 mem_dout 0 16 }  { targetSites_count_1_address1 MemPortADDR2 1 5 }  { targetSites_count_1_ce1 MemPortCE2 1 1 }  { targetSites_count_1_we1 MemPortWE2 1 1 }  { targetSites_count_1_d1 MemPortDIN2 1 16 } } }
	targetSites_count_2 { ap_memory {  { targetSites_count_2_address0 mem_address 1 5 }  { targetSites_count_2_ce0 mem_ce 1 1 }  { targetSites_count_2_q0 mem_dout 0 16 }  { targetSites_count_2_address1 MemPortADDR2 1 5 }  { targetSites_count_2_ce1 MemPortCE2 1 1 }  { targetSites_count_2_we1 MemPortWE2 1 1 }  { targetSites_count_2_d1 MemPortDIN2 1 16 } } }
	targetSites_count_3 { ap_memory {  { targetSites_count_3_address0 mem_address 1 5 }  { targetSites_count_3_ce0 mem_ce 1 1 }  { targetSites_count_3_q0 mem_dout 0 16 }  { targetSites_count_3_address1 MemPortADDR2 1 5 }  { targetSites_count_3_ce1 MemPortCE2 1 1 }  { targetSites_count_3_we1 MemPortWE2 1 1 }  { targetSites_count_3_d1 MemPortDIN2 1 16 } } }
	targetSites_count_4 { ap_memory {  { targetSites_count_4_address0 mem_address 1 5 }  { targetSites_count_4_ce0 mem_ce 1 1 }  { targetSites_count_4_q0 mem_dout 0 16 }  { targetSites_count_4_address1 MemPortADDR2 1 5 }  { targetSites_count_4_ce1 MemPortCE2 1 1 }  { targetSites_count_4_we1 MemPortWE2 1 1 }  { targetSites_count_4_d1 MemPortDIN2 1 16 } } }
	targetSites_count_5 { ap_memory {  { targetSites_count_5_address0 mem_address 1 5 }  { targetSites_count_5_ce0 mem_ce 1 1 }  { targetSites_count_5_q0 mem_dout 0 16 }  { targetSites_count_5_address1 MemPortADDR2 1 5 }  { targetSites_count_5_ce1 MemPortCE2 1 1 }  { targetSites_count_5_we1 MemPortWE2 1 1 }  { targetSites_count_5_d1 MemPortDIN2 1 16 } } }
	targetSites_count_6 { ap_memory {  { targetSites_count_6_address0 mem_address 1 5 }  { targetSites_count_6_ce0 mem_ce 1 1 }  { targetSites_count_6_q0 mem_dout 0 16 }  { targetSites_count_6_address1 MemPortADDR2 1 5 }  { targetSites_count_6_ce1 MemPortCE2 1 1 }  { targetSites_count_6_we1 MemPortWE2 1 1 }  { targetSites_count_6_d1 MemPortDIN2 1 16 } } }
	targetSites_count_7 { ap_memory {  { targetSites_count_7_address0 mem_address 1 5 }  { targetSites_count_7_ce0 mem_ce 1 1 }  { targetSites_count_7_q0 mem_dout 0 16 }  { targetSites_count_7_address1 MemPortADDR2 1 5 }  { targetSites_count_7_ce1 MemPortCE2 1 1 }  { targetSites_count_7_we1 MemPortWE2 1 1 }  { targetSites_count_7_d1 MemPortDIN2 1 16 } } }
}
