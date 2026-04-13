set moduleName sortRemainingRowsOrCols_HLSMoveStream_s
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
set C_modelName {sortRemainingRowsOrCols<HLSMoveStream>}
set C_modelType { int 33 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict stateArray_data_s { MEM_WIDTH 1 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_usableAtoms_data { MEM_WIDTH 32 MEM_SIZE 262144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_usableAtoms_count_0 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict unusableInfo_usableAtoms_count_1 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict unusableInfo_usableAtoms_count_2 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict unusableInfo_usableAtoms_count_3 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict unusableInfo_usableAtoms_count_4 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict unusableInfo_usableAtoms_count_5 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict unusableInfo_usableAtoms_count_6 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict unusableInfo_usableAtoms_count_7 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict unusableInfo_unusableAtoms_count_0 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_unusableAtoms_count_1 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_unusableAtoms_count_2 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_unusableAtoms_count_3 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_unusableAtoms_count_4 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_unusableAtoms_count_5 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_unusableAtoms_count_6 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_unusableAtoms_count_7 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_targetSites_data { MEM_WIDTH 8 MEM_SIZE 65536 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_targetSites_count_0 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_targetSites_count_1 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_targetSites_count_2 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_targetSites_count_3 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_targetSites_count_4 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_targetSites_count_5 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_targetSites_count_6 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_targetSites_count_7 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ stateArray_data_s int 1 regular {array 1024 { 3 0 } 0 1 }  }
	{ stateArray_rows_val4 int 16 regular  }
	{ stateArray_cols_val9 int 16 regular  }
	{ moveStream int 512 regular {axi_s 1 volatile  { moveStream Data } }  }
	{ moveList_count_read int 32 regular  }
	{ conv7 int 32 regular  }
	{ conv6 int 32 regular  }
	{ unusableInfo_usableAtoms_data int 32 regular {array 65536 { 1 2 } 1 1 }  }
	{ unusableInfo_usableAtoms_count_0 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_usableAtoms_count_1 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_usableAtoms_count_2 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_usableAtoms_count_3 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_usableAtoms_count_4 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_usableAtoms_count_5 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_usableAtoms_count_6 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_usableAtoms_count_7 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_unusableAtoms_count_0 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_unusableAtoms_count_1 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_unusableAtoms_count_2 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_unusableAtoms_count_3 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_unusableAtoms_count_4 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_unusableAtoms_count_5 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_unusableAtoms_count_6 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_unusableAtoms_count_7 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_targetSites_data int 8 regular {array 65536 { 1 0 } 1 1 }  }
	{ unusableInfo_targetSites_count_0 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_targetSites_count_1 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_targetSites_count_2 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_targetSites_count_3 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_targetSites_count_4 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_targetSites_count_5 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_targetSites_count_6 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ unusableInfo_targetSites_count_7 int 16 regular {array 32 { 1 0 } 1 1 }  }
	{ compZoneRowStart int 32 regular  }
	{ compZoneRowEnd int 32 regular  }
	{ compZoneColStart int 32 regular  }
	{ compZoneColEnd int 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "stateArray_data_s", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stateArray_rows_val4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_cols_val9", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "moveStream", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "moveList_count_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unusableInfo_usableAtoms_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_usableAtoms_count_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_usableAtoms_count_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_usableAtoms_count_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_usableAtoms_count_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_usableAtoms_count_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_usableAtoms_count_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_usableAtoms_count_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_usableAtoms_count_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_unusableAtoms_count_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_unusableAtoms_count_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_unusableAtoms_count_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_unusableAtoms_count_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_unusableAtoms_count_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_unusableAtoms_count_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_unusableAtoms_count_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_unusableAtoms_count_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_targetSites_data", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_targetSites_count_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_targetSites_count_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_targetSites_count_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_targetSites_count_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_targetSites_count_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_targetSites_count_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_targetSites_count_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "unusableInfo_targetSites_count_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "compZoneRowStart", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "compZoneRowEnd", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "compZoneColStart", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "compZoneColEnd", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 33} ]}
# RTL Port declarations: 
set portNum 207
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stateArray_data_s_address1 sc_out sc_lv 10 signal 0 } 
	{ stateArray_data_s_ce1 sc_out sc_logic 1 signal 0 } 
	{ stateArray_data_s_we1 sc_out sc_logic 1 signal 0 } 
	{ stateArray_data_s_d1 sc_out sc_lv 1 signal 0 } 
	{ stateArray_rows_val4 sc_in sc_lv 16 signal 1 } 
	{ stateArray_cols_val9 sc_in sc_lv 16 signal 2 } 
	{ moveStream_TDATA sc_out sc_lv 512 signal 3 } 
	{ moveStream_TVALID sc_out sc_logic 1 outvld 3 } 
	{ moveStream_TREADY sc_in sc_logic 1 outacc 3 } 
	{ moveList_count_read sc_in sc_lv 32 signal 4 } 
	{ conv7 sc_in sc_lv 32 signal 5 } 
	{ conv6 sc_in sc_lv 32 signal 6 } 
	{ unusableInfo_usableAtoms_data_address0 sc_out sc_lv 16 signal 7 } 
	{ unusableInfo_usableAtoms_data_ce0 sc_out sc_logic 1 signal 7 } 
	{ unusableInfo_usableAtoms_data_q0 sc_in sc_lv 32 signal 7 } 
	{ unusableInfo_usableAtoms_data_address1 sc_out sc_lv 16 signal 7 } 
	{ unusableInfo_usableAtoms_data_ce1 sc_out sc_logic 1 signal 7 } 
	{ unusableInfo_usableAtoms_data_we1 sc_out sc_logic 1 signal 7 } 
	{ unusableInfo_usableAtoms_data_d1 sc_out sc_lv 32 signal 7 } 
	{ unusableInfo_usableAtoms_data_q1 sc_in sc_lv 32 signal 7 } 
	{ unusableInfo_usableAtoms_count_0_address0 sc_out sc_lv 5 signal 8 } 
	{ unusableInfo_usableAtoms_count_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ unusableInfo_usableAtoms_count_0_q0 sc_in sc_lv 16 signal 8 } 
	{ unusableInfo_usableAtoms_count_0_address1 sc_out sc_lv 5 signal 8 } 
	{ unusableInfo_usableAtoms_count_0_ce1 sc_out sc_logic 1 signal 8 } 
	{ unusableInfo_usableAtoms_count_0_we1 sc_out sc_logic 1 signal 8 } 
	{ unusableInfo_usableAtoms_count_0_d1 sc_out sc_lv 16 signal 8 } 
	{ unusableInfo_usableAtoms_count_1_address0 sc_out sc_lv 5 signal 9 } 
	{ unusableInfo_usableAtoms_count_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ unusableInfo_usableAtoms_count_1_q0 sc_in sc_lv 16 signal 9 } 
	{ unusableInfo_usableAtoms_count_1_address1 sc_out sc_lv 5 signal 9 } 
	{ unusableInfo_usableAtoms_count_1_ce1 sc_out sc_logic 1 signal 9 } 
	{ unusableInfo_usableAtoms_count_1_we1 sc_out sc_logic 1 signal 9 } 
	{ unusableInfo_usableAtoms_count_1_d1 sc_out sc_lv 16 signal 9 } 
	{ unusableInfo_usableAtoms_count_2_address0 sc_out sc_lv 5 signal 10 } 
	{ unusableInfo_usableAtoms_count_2_ce0 sc_out sc_logic 1 signal 10 } 
	{ unusableInfo_usableAtoms_count_2_q0 sc_in sc_lv 16 signal 10 } 
	{ unusableInfo_usableAtoms_count_2_address1 sc_out sc_lv 5 signal 10 } 
	{ unusableInfo_usableAtoms_count_2_ce1 sc_out sc_logic 1 signal 10 } 
	{ unusableInfo_usableAtoms_count_2_we1 sc_out sc_logic 1 signal 10 } 
	{ unusableInfo_usableAtoms_count_2_d1 sc_out sc_lv 16 signal 10 } 
	{ unusableInfo_usableAtoms_count_3_address0 sc_out sc_lv 5 signal 11 } 
	{ unusableInfo_usableAtoms_count_3_ce0 sc_out sc_logic 1 signal 11 } 
	{ unusableInfo_usableAtoms_count_3_q0 sc_in sc_lv 16 signal 11 } 
	{ unusableInfo_usableAtoms_count_3_address1 sc_out sc_lv 5 signal 11 } 
	{ unusableInfo_usableAtoms_count_3_ce1 sc_out sc_logic 1 signal 11 } 
	{ unusableInfo_usableAtoms_count_3_we1 sc_out sc_logic 1 signal 11 } 
	{ unusableInfo_usableAtoms_count_3_d1 sc_out sc_lv 16 signal 11 } 
	{ unusableInfo_usableAtoms_count_4_address0 sc_out sc_lv 5 signal 12 } 
	{ unusableInfo_usableAtoms_count_4_ce0 sc_out sc_logic 1 signal 12 } 
	{ unusableInfo_usableAtoms_count_4_q0 sc_in sc_lv 16 signal 12 } 
	{ unusableInfo_usableAtoms_count_4_address1 sc_out sc_lv 5 signal 12 } 
	{ unusableInfo_usableAtoms_count_4_ce1 sc_out sc_logic 1 signal 12 } 
	{ unusableInfo_usableAtoms_count_4_we1 sc_out sc_logic 1 signal 12 } 
	{ unusableInfo_usableAtoms_count_4_d1 sc_out sc_lv 16 signal 12 } 
	{ unusableInfo_usableAtoms_count_5_address0 sc_out sc_lv 5 signal 13 } 
	{ unusableInfo_usableAtoms_count_5_ce0 sc_out sc_logic 1 signal 13 } 
	{ unusableInfo_usableAtoms_count_5_q0 sc_in sc_lv 16 signal 13 } 
	{ unusableInfo_usableAtoms_count_5_address1 sc_out sc_lv 5 signal 13 } 
	{ unusableInfo_usableAtoms_count_5_ce1 sc_out sc_logic 1 signal 13 } 
	{ unusableInfo_usableAtoms_count_5_we1 sc_out sc_logic 1 signal 13 } 
	{ unusableInfo_usableAtoms_count_5_d1 sc_out sc_lv 16 signal 13 } 
	{ unusableInfo_usableAtoms_count_6_address0 sc_out sc_lv 5 signal 14 } 
	{ unusableInfo_usableAtoms_count_6_ce0 sc_out sc_logic 1 signal 14 } 
	{ unusableInfo_usableAtoms_count_6_q0 sc_in sc_lv 16 signal 14 } 
	{ unusableInfo_usableAtoms_count_6_address1 sc_out sc_lv 5 signal 14 } 
	{ unusableInfo_usableAtoms_count_6_ce1 sc_out sc_logic 1 signal 14 } 
	{ unusableInfo_usableAtoms_count_6_we1 sc_out sc_logic 1 signal 14 } 
	{ unusableInfo_usableAtoms_count_6_d1 sc_out sc_lv 16 signal 14 } 
	{ unusableInfo_usableAtoms_count_7_address0 sc_out sc_lv 5 signal 15 } 
	{ unusableInfo_usableAtoms_count_7_ce0 sc_out sc_logic 1 signal 15 } 
	{ unusableInfo_usableAtoms_count_7_q0 sc_in sc_lv 16 signal 15 } 
	{ unusableInfo_usableAtoms_count_7_address1 sc_out sc_lv 5 signal 15 } 
	{ unusableInfo_usableAtoms_count_7_ce1 sc_out sc_logic 1 signal 15 } 
	{ unusableInfo_usableAtoms_count_7_we1 sc_out sc_logic 1 signal 15 } 
	{ unusableInfo_usableAtoms_count_7_d1 sc_out sc_lv 16 signal 15 } 
	{ unusableInfo_unusableAtoms_count_0_address0 sc_out sc_lv 5 signal 16 } 
	{ unusableInfo_unusableAtoms_count_0_ce0 sc_out sc_logic 1 signal 16 } 
	{ unusableInfo_unusableAtoms_count_0_q0 sc_in sc_lv 16 signal 16 } 
	{ unusableInfo_unusableAtoms_count_0_address1 sc_out sc_lv 5 signal 16 } 
	{ unusableInfo_unusableAtoms_count_0_ce1 sc_out sc_logic 1 signal 16 } 
	{ unusableInfo_unusableAtoms_count_0_we1 sc_out sc_logic 1 signal 16 } 
	{ unusableInfo_unusableAtoms_count_0_d1 sc_out sc_lv 16 signal 16 } 
	{ unusableInfo_unusableAtoms_count_1_address0 sc_out sc_lv 5 signal 17 } 
	{ unusableInfo_unusableAtoms_count_1_ce0 sc_out sc_logic 1 signal 17 } 
	{ unusableInfo_unusableAtoms_count_1_q0 sc_in sc_lv 16 signal 17 } 
	{ unusableInfo_unusableAtoms_count_1_address1 sc_out sc_lv 5 signal 17 } 
	{ unusableInfo_unusableAtoms_count_1_ce1 sc_out sc_logic 1 signal 17 } 
	{ unusableInfo_unusableAtoms_count_1_we1 sc_out sc_logic 1 signal 17 } 
	{ unusableInfo_unusableAtoms_count_1_d1 sc_out sc_lv 16 signal 17 } 
	{ unusableInfo_unusableAtoms_count_2_address0 sc_out sc_lv 5 signal 18 } 
	{ unusableInfo_unusableAtoms_count_2_ce0 sc_out sc_logic 1 signal 18 } 
	{ unusableInfo_unusableAtoms_count_2_q0 sc_in sc_lv 16 signal 18 } 
	{ unusableInfo_unusableAtoms_count_2_address1 sc_out sc_lv 5 signal 18 } 
	{ unusableInfo_unusableAtoms_count_2_ce1 sc_out sc_logic 1 signal 18 } 
	{ unusableInfo_unusableAtoms_count_2_we1 sc_out sc_logic 1 signal 18 } 
	{ unusableInfo_unusableAtoms_count_2_d1 sc_out sc_lv 16 signal 18 } 
	{ unusableInfo_unusableAtoms_count_3_address0 sc_out sc_lv 5 signal 19 } 
	{ unusableInfo_unusableAtoms_count_3_ce0 sc_out sc_logic 1 signal 19 } 
	{ unusableInfo_unusableAtoms_count_3_q0 sc_in sc_lv 16 signal 19 } 
	{ unusableInfo_unusableAtoms_count_3_address1 sc_out sc_lv 5 signal 19 } 
	{ unusableInfo_unusableAtoms_count_3_ce1 sc_out sc_logic 1 signal 19 } 
	{ unusableInfo_unusableAtoms_count_3_we1 sc_out sc_logic 1 signal 19 } 
	{ unusableInfo_unusableAtoms_count_3_d1 sc_out sc_lv 16 signal 19 } 
	{ unusableInfo_unusableAtoms_count_4_address0 sc_out sc_lv 5 signal 20 } 
	{ unusableInfo_unusableAtoms_count_4_ce0 sc_out sc_logic 1 signal 20 } 
	{ unusableInfo_unusableAtoms_count_4_q0 sc_in sc_lv 16 signal 20 } 
	{ unusableInfo_unusableAtoms_count_4_address1 sc_out sc_lv 5 signal 20 } 
	{ unusableInfo_unusableAtoms_count_4_ce1 sc_out sc_logic 1 signal 20 } 
	{ unusableInfo_unusableAtoms_count_4_we1 sc_out sc_logic 1 signal 20 } 
	{ unusableInfo_unusableAtoms_count_4_d1 sc_out sc_lv 16 signal 20 } 
	{ unusableInfo_unusableAtoms_count_5_address0 sc_out sc_lv 5 signal 21 } 
	{ unusableInfo_unusableAtoms_count_5_ce0 sc_out sc_logic 1 signal 21 } 
	{ unusableInfo_unusableAtoms_count_5_q0 sc_in sc_lv 16 signal 21 } 
	{ unusableInfo_unusableAtoms_count_5_address1 sc_out sc_lv 5 signal 21 } 
	{ unusableInfo_unusableAtoms_count_5_ce1 sc_out sc_logic 1 signal 21 } 
	{ unusableInfo_unusableAtoms_count_5_we1 sc_out sc_logic 1 signal 21 } 
	{ unusableInfo_unusableAtoms_count_5_d1 sc_out sc_lv 16 signal 21 } 
	{ unusableInfo_unusableAtoms_count_6_address0 sc_out sc_lv 5 signal 22 } 
	{ unusableInfo_unusableAtoms_count_6_ce0 sc_out sc_logic 1 signal 22 } 
	{ unusableInfo_unusableAtoms_count_6_q0 sc_in sc_lv 16 signal 22 } 
	{ unusableInfo_unusableAtoms_count_6_address1 sc_out sc_lv 5 signal 22 } 
	{ unusableInfo_unusableAtoms_count_6_ce1 sc_out sc_logic 1 signal 22 } 
	{ unusableInfo_unusableAtoms_count_6_we1 sc_out sc_logic 1 signal 22 } 
	{ unusableInfo_unusableAtoms_count_6_d1 sc_out sc_lv 16 signal 22 } 
	{ unusableInfo_unusableAtoms_count_7_address0 sc_out sc_lv 5 signal 23 } 
	{ unusableInfo_unusableAtoms_count_7_ce0 sc_out sc_logic 1 signal 23 } 
	{ unusableInfo_unusableAtoms_count_7_q0 sc_in sc_lv 16 signal 23 } 
	{ unusableInfo_unusableAtoms_count_7_address1 sc_out sc_lv 5 signal 23 } 
	{ unusableInfo_unusableAtoms_count_7_ce1 sc_out sc_logic 1 signal 23 } 
	{ unusableInfo_unusableAtoms_count_7_we1 sc_out sc_logic 1 signal 23 } 
	{ unusableInfo_unusableAtoms_count_7_d1 sc_out sc_lv 16 signal 23 } 
	{ unusableInfo_targetSites_data_address0 sc_out sc_lv 16 signal 24 } 
	{ unusableInfo_targetSites_data_ce0 sc_out sc_logic 1 signal 24 } 
	{ unusableInfo_targetSites_data_q0 sc_in sc_lv 8 signal 24 } 
	{ unusableInfo_targetSites_data_address1 sc_out sc_lv 16 signal 24 } 
	{ unusableInfo_targetSites_data_ce1 sc_out sc_logic 1 signal 24 } 
	{ unusableInfo_targetSites_data_we1 sc_out sc_logic 1 signal 24 } 
	{ unusableInfo_targetSites_data_d1 sc_out sc_lv 8 signal 24 } 
	{ unusableInfo_targetSites_count_0_address0 sc_out sc_lv 5 signal 25 } 
	{ unusableInfo_targetSites_count_0_ce0 sc_out sc_logic 1 signal 25 } 
	{ unusableInfo_targetSites_count_0_q0 sc_in sc_lv 16 signal 25 } 
	{ unusableInfo_targetSites_count_0_address1 sc_out sc_lv 5 signal 25 } 
	{ unusableInfo_targetSites_count_0_ce1 sc_out sc_logic 1 signal 25 } 
	{ unusableInfo_targetSites_count_0_we1 sc_out sc_logic 1 signal 25 } 
	{ unusableInfo_targetSites_count_0_d1 sc_out sc_lv 16 signal 25 } 
	{ unusableInfo_targetSites_count_1_address0 sc_out sc_lv 5 signal 26 } 
	{ unusableInfo_targetSites_count_1_ce0 sc_out sc_logic 1 signal 26 } 
	{ unusableInfo_targetSites_count_1_q0 sc_in sc_lv 16 signal 26 } 
	{ unusableInfo_targetSites_count_1_address1 sc_out sc_lv 5 signal 26 } 
	{ unusableInfo_targetSites_count_1_ce1 sc_out sc_logic 1 signal 26 } 
	{ unusableInfo_targetSites_count_1_we1 sc_out sc_logic 1 signal 26 } 
	{ unusableInfo_targetSites_count_1_d1 sc_out sc_lv 16 signal 26 } 
	{ unusableInfo_targetSites_count_2_address0 sc_out sc_lv 5 signal 27 } 
	{ unusableInfo_targetSites_count_2_ce0 sc_out sc_logic 1 signal 27 } 
	{ unusableInfo_targetSites_count_2_q0 sc_in sc_lv 16 signal 27 } 
	{ unusableInfo_targetSites_count_2_address1 sc_out sc_lv 5 signal 27 } 
	{ unusableInfo_targetSites_count_2_ce1 sc_out sc_logic 1 signal 27 } 
	{ unusableInfo_targetSites_count_2_we1 sc_out sc_logic 1 signal 27 } 
	{ unusableInfo_targetSites_count_2_d1 sc_out sc_lv 16 signal 27 } 
	{ unusableInfo_targetSites_count_3_address0 sc_out sc_lv 5 signal 28 } 
	{ unusableInfo_targetSites_count_3_ce0 sc_out sc_logic 1 signal 28 } 
	{ unusableInfo_targetSites_count_3_q0 sc_in sc_lv 16 signal 28 } 
	{ unusableInfo_targetSites_count_3_address1 sc_out sc_lv 5 signal 28 } 
	{ unusableInfo_targetSites_count_3_ce1 sc_out sc_logic 1 signal 28 } 
	{ unusableInfo_targetSites_count_3_we1 sc_out sc_logic 1 signal 28 } 
	{ unusableInfo_targetSites_count_3_d1 sc_out sc_lv 16 signal 28 } 
	{ unusableInfo_targetSites_count_4_address0 sc_out sc_lv 5 signal 29 } 
	{ unusableInfo_targetSites_count_4_ce0 sc_out sc_logic 1 signal 29 } 
	{ unusableInfo_targetSites_count_4_q0 sc_in sc_lv 16 signal 29 } 
	{ unusableInfo_targetSites_count_4_address1 sc_out sc_lv 5 signal 29 } 
	{ unusableInfo_targetSites_count_4_ce1 sc_out sc_logic 1 signal 29 } 
	{ unusableInfo_targetSites_count_4_we1 sc_out sc_logic 1 signal 29 } 
	{ unusableInfo_targetSites_count_4_d1 sc_out sc_lv 16 signal 29 } 
	{ unusableInfo_targetSites_count_5_address0 sc_out sc_lv 5 signal 30 } 
	{ unusableInfo_targetSites_count_5_ce0 sc_out sc_logic 1 signal 30 } 
	{ unusableInfo_targetSites_count_5_q0 sc_in sc_lv 16 signal 30 } 
	{ unusableInfo_targetSites_count_5_address1 sc_out sc_lv 5 signal 30 } 
	{ unusableInfo_targetSites_count_5_ce1 sc_out sc_logic 1 signal 30 } 
	{ unusableInfo_targetSites_count_5_we1 sc_out sc_logic 1 signal 30 } 
	{ unusableInfo_targetSites_count_5_d1 sc_out sc_lv 16 signal 30 } 
	{ unusableInfo_targetSites_count_6_address0 sc_out sc_lv 5 signal 31 } 
	{ unusableInfo_targetSites_count_6_ce0 sc_out sc_logic 1 signal 31 } 
	{ unusableInfo_targetSites_count_6_q0 sc_in sc_lv 16 signal 31 } 
	{ unusableInfo_targetSites_count_6_address1 sc_out sc_lv 5 signal 31 } 
	{ unusableInfo_targetSites_count_6_ce1 sc_out sc_logic 1 signal 31 } 
	{ unusableInfo_targetSites_count_6_we1 sc_out sc_logic 1 signal 31 } 
	{ unusableInfo_targetSites_count_6_d1 sc_out sc_lv 16 signal 31 } 
	{ unusableInfo_targetSites_count_7_address0 sc_out sc_lv 5 signal 32 } 
	{ unusableInfo_targetSites_count_7_ce0 sc_out sc_logic 1 signal 32 } 
	{ unusableInfo_targetSites_count_7_q0 sc_in sc_lv 16 signal 32 } 
	{ unusableInfo_targetSites_count_7_address1 sc_out sc_lv 5 signal 32 } 
	{ unusableInfo_targetSites_count_7_ce1 sc_out sc_logic 1 signal 32 } 
	{ unusableInfo_targetSites_count_7_we1 sc_out sc_logic 1 signal 32 } 
	{ unusableInfo_targetSites_count_7_d1 sc_out sc_lv 16 signal 32 } 
	{ compZoneRowStart sc_in sc_lv 32 signal 33 } 
	{ compZoneRowEnd sc_in sc_lv 32 signal 34 } 
	{ compZoneColStart sc_in sc_lv 32 signal 35 } 
	{ compZoneColEnd sc_in sc_lv 32 signal 36 } 
	{ ap_return_0 sc_out sc_lv 1 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stateArray_data_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "address1" }} , 
 	{ "name": "stateArray_data_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "ce1" }} , 
 	{ "name": "stateArray_data_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "we1" }} , 
 	{ "name": "stateArray_data_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "d1" }} , 
 	{ "name": "stateArray_rows_val4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "stateArray_rows_val4", "role": "default" }} , 
 	{ "name": "stateArray_cols_val9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "stateArray_cols_val9", "role": "default" }} , 
 	{ "name": "moveStream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "moveStream", "role": "TDATA" }} , 
 	{ "name": "moveStream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "moveStream", "role": "TVALID" }} , 
 	{ "name": "moveStream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "moveStream", "role": "TREADY" }} , 
 	{ "name": "moveList_count_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "moveList_count_read", "role": "default" }} , 
 	{ "name": "conv7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv7", "role": "default" }} , 
 	{ "name": "conv6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv6", "role": "default" }} , 
 	{ "name": "unusableInfo_usableAtoms_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_data", "role": "address0" }} , 
 	{ "name": "unusableInfo_usableAtoms_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_data", "role": "ce0" }} , 
 	{ "name": "unusableInfo_usableAtoms_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_data", "role": "q0" }} , 
 	{ "name": "unusableInfo_usableAtoms_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_data", "role": "address1" }} , 
 	{ "name": "unusableInfo_usableAtoms_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_data", "role": "ce1" }} , 
 	{ "name": "unusableInfo_usableAtoms_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_data", "role": "we1" }} , 
 	{ "name": "unusableInfo_usableAtoms_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_data", "role": "d1" }} , 
 	{ "name": "unusableInfo_usableAtoms_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_data", "role": "q1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_0", "role": "address0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_0", "role": "ce0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_0", "role": "q0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_0", "role": "address1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_0", "role": "ce1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_0", "role": "we1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_0", "role": "d1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_1", "role": "address0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_1", "role": "ce0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_1", "role": "q0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_1", "role": "address1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_1", "role": "ce1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_1", "role": "we1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_1", "role": "d1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_2", "role": "address0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_2", "role": "ce0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_2", "role": "q0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_2", "role": "address1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_2", "role": "ce1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_2", "role": "we1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_2", "role": "d1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_3", "role": "address0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_3", "role": "ce0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_3", "role": "q0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_3", "role": "address1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_3", "role": "ce1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_3", "role": "we1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_3", "role": "d1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_4", "role": "address0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_4", "role": "ce0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_4", "role": "q0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_4", "role": "address1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_4", "role": "ce1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_4", "role": "we1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_4", "role": "d1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_5", "role": "address0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_5", "role": "ce0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_5", "role": "q0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_5", "role": "address1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_5", "role": "ce1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_5", "role": "we1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_5", "role": "d1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_6", "role": "address0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_6", "role": "ce0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_6", "role": "q0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_6", "role": "address1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_6", "role": "ce1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_6", "role": "we1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_6", "role": "d1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_7", "role": "address0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_7", "role": "ce0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_7", "role": "q0" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_7", "role": "address1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_7", "role": "ce1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_7", "role": "we1" }} , 
 	{ "name": "unusableInfo_usableAtoms_count_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_count_7", "role": "d1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_0", "role": "address0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_0", "role": "ce0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_0", "role": "q0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_0", "role": "address1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_0", "role": "ce1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_0", "role": "we1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_0", "role": "d1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_1", "role": "address0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_1", "role": "ce0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_1", "role": "q0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_1", "role": "address1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_1", "role": "ce1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_1", "role": "we1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_1", "role": "d1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_2", "role": "address0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_2", "role": "ce0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_2", "role": "q0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_2", "role": "address1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_2", "role": "ce1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_2", "role": "we1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_2", "role": "d1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_3", "role": "address0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_3", "role": "ce0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_3", "role": "q0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_3", "role": "address1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_3", "role": "ce1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_3", "role": "we1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_3", "role": "d1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_4", "role": "address0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_4", "role": "ce0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_4", "role": "q0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_4", "role": "address1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_4", "role": "ce1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_4", "role": "we1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_4", "role": "d1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_5", "role": "address0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_5", "role": "ce0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_5", "role": "q0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_5", "role": "address1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_5", "role": "ce1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_5", "role": "we1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_5", "role": "d1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_6", "role": "address0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_6", "role": "ce0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_6", "role": "q0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_6", "role": "address1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_6", "role": "ce1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_6", "role": "we1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_6", "role": "d1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_7", "role": "address0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_7", "role": "ce0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_7", "role": "q0" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_7", "role": "address1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_7", "role": "ce1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_7", "role": "we1" }} , 
 	{ "name": "unusableInfo_unusableAtoms_count_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_unusableAtoms_count_7", "role": "d1" }} , 
 	{ "name": "unusableInfo_targetSites_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_data", "role": "address0" }} , 
 	{ "name": "unusableInfo_targetSites_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_data", "role": "ce0" }} , 
 	{ "name": "unusableInfo_targetSites_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_data", "role": "q0" }} , 
 	{ "name": "unusableInfo_targetSites_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_data", "role": "address1" }} , 
 	{ "name": "unusableInfo_targetSites_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_data", "role": "ce1" }} , 
 	{ "name": "unusableInfo_targetSites_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_data", "role": "we1" }} , 
 	{ "name": "unusableInfo_targetSites_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_data", "role": "d1" }} , 
 	{ "name": "unusableInfo_targetSites_count_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_0", "role": "address0" }} , 
 	{ "name": "unusableInfo_targetSites_count_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_0", "role": "ce0" }} , 
 	{ "name": "unusableInfo_targetSites_count_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_0", "role": "q0" }} , 
 	{ "name": "unusableInfo_targetSites_count_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_0", "role": "address1" }} , 
 	{ "name": "unusableInfo_targetSites_count_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_0", "role": "ce1" }} , 
 	{ "name": "unusableInfo_targetSites_count_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_0", "role": "we1" }} , 
 	{ "name": "unusableInfo_targetSites_count_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_0", "role": "d1" }} , 
 	{ "name": "unusableInfo_targetSites_count_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_1", "role": "address0" }} , 
 	{ "name": "unusableInfo_targetSites_count_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_1", "role": "ce0" }} , 
 	{ "name": "unusableInfo_targetSites_count_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_1", "role": "q0" }} , 
 	{ "name": "unusableInfo_targetSites_count_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_1", "role": "address1" }} , 
 	{ "name": "unusableInfo_targetSites_count_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_1", "role": "ce1" }} , 
 	{ "name": "unusableInfo_targetSites_count_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_1", "role": "we1" }} , 
 	{ "name": "unusableInfo_targetSites_count_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_1", "role": "d1" }} , 
 	{ "name": "unusableInfo_targetSites_count_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_2", "role": "address0" }} , 
 	{ "name": "unusableInfo_targetSites_count_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_2", "role": "ce0" }} , 
 	{ "name": "unusableInfo_targetSites_count_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_2", "role": "q0" }} , 
 	{ "name": "unusableInfo_targetSites_count_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_2", "role": "address1" }} , 
 	{ "name": "unusableInfo_targetSites_count_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_2", "role": "ce1" }} , 
 	{ "name": "unusableInfo_targetSites_count_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_2", "role": "we1" }} , 
 	{ "name": "unusableInfo_targetSites_count_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_2", "role": "d1" }} , 
 	{ "name": "unusableInfo_targetSites_count_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_3", "role": "address0" }} , 
 	{ "name": "unusableInfo_targetSites_count_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_3", "role": "ce0" }} , 
 	{ "name": "unusableInfo_targetSites_count_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_3", "role": "q0" }} , 
 	{ "name": "unusableInfo_targetSites_count_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_3", "role": "address1" }} , 
 	{ "name": "unusableInfo_targetSites_count_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_3", "role": "ce1" }} , 
 	{ "name": "unusableInfo_targetSites_count_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_3", "role": "we1" }} , 
 	{ "name": "unusableInfo_targetSites_count_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_3", "role": "d1" }} , 
 	{ "name": "unusableInfo_targetSites_count_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_4", "role": "address0" }} , 
 	{ "name": "unusableInfo_targetSites_count_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_4", "role": "ce0" }} , 
 	{ "name": "unusableInfo_targetSites_count_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_4", "role": "q0" }} , 
 	{ "name": "unusableInfo_targetSites_count_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_4", "role": "address1" }} , 
 	{ "name": "unusableInfo_targetSites_count_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_4", "role": "ce1" }} , 
 	{ "name": "unusableInfo_targetSites_count_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_4", "role": "we1" }} , 
 	{ "name": "unusableInfo_targetSites_count_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_4", "role": "d1" }} , 
 	{ "name": "unusableInfo_targetSites_count_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_5", "role": "address0" }} , 
 	{ "name": "unusableInfo_targetSites_count_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_5", "role": "ce0" }} , 
 	{ "name": "unusableInfo_targetSites_count_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_5", "role": "q0" }} , 
 	{ "name": "unusableInfo_targetSites_count_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_5", "role": "address1" }} , 
 	{ "name": "unusableInfo_targetSites_count_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_5", "role": "ce1" }} , 
 	{ "name": "unusableInfo_targetSites_count_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_5", "role": "we1" }} , 
 	{ "name": "unusableInfo_targetSites_count_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_5", "role": "d1" }} , 
 	{ "name": "unusableInfo_targetSites_count_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_6", "role": "address0" }} , 
 	{ "name": "unusableInfo_targetSites_count_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_6", "role": "ce0" }} , 
 	{ "name": "unusableInfo_targetSites_count_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_6", "role": "q0" }} , 
 	{ "name": "unusableInfo_targetSites_count_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_6", "role": "address1" }} , 
 	{ "name": "unusableInfo_targetSites_count_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_6", "role": "ce1" }} , 
 	{ "name": "unusableInfo_targetSites_count_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_6", "role": "we1" }} , 
 	{ "name": "unusableInfo_targetSites_count_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_6", "role": "d1" }} , 
 	{ "name": "unusableInfo_targetSites_count_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_7", "role": "address0" }} , 
 	{ "name": "unusableInfo_targetSites_count_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_7", "role": "ce0" }} , 
 	{ "name": "unusableInfo_targetSites_count_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_7", "role": "q0" }} , 
 	{ "name": "unusableInfo_targetSites_count_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_7", "role": "address1" }} , 
 	{ "name": "unusableInfo_targetSites_count_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_7", "role": "ce1" }} , 
 	{ "name": "unusableInfo_targetSites_count_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_7", "role": "we1" }} , 
 	{ "name": "unusableInfo_targetSites_count_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_7", "role": "d1" }} , 
 	{ "name": "compZoneRowStart", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compZoneRowStart", "role": "default" }} , 
 	{ "name": "compZoneRowEnd", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compZoneRowEnd", "role": "default" }} , 
 	{ "name": "compZoneColStart", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compZoneColStart", "role": "default" }} , 
 	{ "name": "compZoneColEnd", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compZoneColEnd", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "52", "55", "57", "59", "61", "63", "65", "67", "69", "77", "80", "82", "84", "86", "88", "92", "94", "96", "98", "100", "102", "103", "105", "107", "109", "111", "113", "115", "117", "119", "121", "123", "125", "126", "127", "128", "129", "130"],
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
					{"ID" : "69", "SubInstance" : "grp_execute_fu_18706", "Port" : "stateArray_data_s", "Inst_start_state" : "548", "Inst_end_state" : "549"}]},
			{"Name" : "stateArray_rows_val4", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_cols_val9", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveStream", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_push_back_fu_18715", "Port" : "moveStream", "Inst_start_state" : "550", "Inst_end_state" : "551"}]},
			{"Name" : "moveList_count_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv7", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv6", "Type" : "None", "Direction" : "I"},
			{"Name" : "unusableInfo_usableAtoms_data", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_609_5_fu_18636", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "59", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_643_6_fu_18653", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "80", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1085_33_fu_18726", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "127", "Inst_end_state" : "128"},
					{"ID" : "84", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1092_34_fu_18742", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "129", "Inst_end_state" : "130"},
					{"ID" : "92", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1161_38_fu_18781", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "133", "Inst_end_state" : "134"},
					{"ID" : "94", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1168_39_fu_18791", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "135", "Inst_end_state" : "136"},
					{"ID" : "100", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1198_42_fu_18817", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "139", "Inst_end_state" : "140"},
					{"ID" : "107", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_1_fu_18848", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "215", "Inst_end_state" : "216"},
					{"ID" : "109", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_1_fu_18858", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "218", "Inst_end_state" : "219"},
					{"ID" : "123", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_841_18_fu_18918", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "514", "Inst_end_state" : "515"}]},
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
					{"ID" : "111", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_14_fu_18868", "Port" : "unusableInfo_targetSites_data", "Inst_start_state" : "220", "Inst_end_state" : "221"},
					{"ID" : "113", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_15_fu_18878", "Port" : "unusableInfo_targetSites_data", "Inst_start_state" : "223", "Inst_end_state" : "224"}]},
			{"Name" : "unusableInfo_targetSites_count_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableInfo_targetSites_count_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableInfo_targetSites_count_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableInfo_targetSites_count_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableInfo_targetSites_count_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableInfo_targetSites_count_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableInfo_targetSites_count_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableInfo_targetSites_count_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.move_i_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.move442_i_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.move559_i_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.move1392_i_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ref_tmp_i603_0_i_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ref_tmp_i603_1_i_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ref_tmp_i527_0_i_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ref_tmp_i527_1_i_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ref_tmp_i381_0_i_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ref_tmp_i381_1_i_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ref_tmp_i_0_i_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ref_tmp_i_1_i_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.parkingSpotsPerSuitableIndexXC_data_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.parkingSpotsRemainingAtCurrentIndexXC_data_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_colSelection_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_rowSelection_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.elbow_colSelection_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.elbow_rowSelection_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.end_colSelection_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.end_rowSelection_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_colSelection_1_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_rowSelection_1_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.end_colSelection_1_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.end_rowSelection_1_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_colSelection_2_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_rowSelection_2_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.elbow1_colSelection_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.elbow1_rowSelection_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.elbow2_colSelection_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.elbow2_rowSelection_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.end_colSelection_2_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.end_rowSelection_2_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.usableFrontBuf_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.usableBackBuf_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.parkFrontBuf_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.parkBackBuf_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tempUsableH_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tempParkingH_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.usedSourceIndices_data_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.usedTargetIndices_data_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_colSelection_3_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_rowSelection_3_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.elbow1_colSelection_1_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.elbow1_rowSelection_1_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.elbow2_colSelection_1_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.elbow2_rowSelection_1_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.end_colSelection_3_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.end_rowSelection_3_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableAtoms_data_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_525_1_fu_18593", "Parent" : "0", "Child" : ["51"],
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
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_525_1_fu_18593.flow_control_loop_pipe_sequential_init_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Parent" : "0", "Child" : ["53", "54"],
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
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602.sparsemux_17_3_16_1_1_U676", "Parent" : "52"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_533_2_fu_18625", "Parent" : "0", "Child" : ["56"],
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
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_533_2_fu_18625.flow_control_loop_pipe_sequential_init_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_609_5_fu_18636", "Parent" : "0", "Child" : ["58"],
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
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_609_5_fu_18636.flow_control_loop_pipe_sequential_init_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_643_6_fu_18653", "Parent" : "0", "Child" : ["60"],
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
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_643_6_fu_18653.flow_control_loop_pipe_sequential_init_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_666_8_fu_18663", "Parent" : "0", "Child" : ["62"],
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
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_666_8_fu_18663.flow_control_loop_pipe_sequential_init_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_752_13_fu_18674", "Parent" : "0", "Child" : ["64"],
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
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_752_13_fu_18674.flow_control_loop_pipe_sequential_init_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_772_14_fu_18687", "Parent" : "0", "Child" : ["66"],
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
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_772_14_fu_18687.flow_control_loop_pipe_sequential_init_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_780_15_fu_18696", "Parent" : "0", "Child" : ["68"],
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
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_780_15_fu_18696.flow_control_loop_pipe_sequential_init_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_18706", "Parent" : "0", "Child" : ["70", "72", "74", "75", "76"],
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
					{"ID" : "70", "SubInstance" : "grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296", "Port" : "move", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "72", "SubInstance" : "grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304", "Port" : "move", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
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
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_18706.grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296", "Parent" : "69", "Child" : ["71"],
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
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_18706.grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_18706.grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304", "Parent" : "69", "Child" : ["73"],
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
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_18706.grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_18706.mul_8ns_8ns_16_1_1_U642", "Parent" : "69"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_18706.mac_muladd_10s_10s_10ns_10_4_1_U643", "Parent" : "69"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_18706.mac_muladd_10s_10s_10ns_10_4_1_U644", "Parent" : "69"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_push_back_fu_18715", "Parent" : "0", "Child" : ["78"],
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
					{"ID" : "78", "SubInstance" : "grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Port" : "moveStream", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "this_count_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "move", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Port" : "move", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_push_back_fu_18715.grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Parent" : "77", "Child" : ["79"],
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
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_push_back_fu_18715.grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1085_33_fu_18726", "Parent" : "0", "Child" : ["81"],
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
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1085_33_fu_18726.flow_control_loop_pipe_sequential_init_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1099_35_fu_18735", "Parent" : "0", "Child" : ["83"],
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
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1099_35_fu_18735.flow_control_loop_pipe_sequential_init_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1092_34_fu_18742", "Parent" : "0", "Child" : ["85"],
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
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1092_34_fu_18742.flow_control_loop_pipe_sequential_init_U", "Parent" : "84"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1106_36_fu_18752", "Parent" : "0", "Child" : ["87"],
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
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1106_36_fu_18752.flow_control_loop_pipe_sequential_init_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1114_37_fu_18760", "Parent" : "0", "Child" : ["89", "90", "91"],
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
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1114_37_fu_18760.uitodp_64ns_64_4_no_dsp_1_U746", "Parent" : "88"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1114_37_fu_18760.sitodp_32ns_64_4_no_dsp_1_U747", "Parent" : "88"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1114_37_fu_18760.flow_control_loop_pipe_sequential_init_U", "Parent" : "88"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1161_38_fu_18781", "Parent" : "0", "Child" : ["93"],
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
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1161_38_fu_18781.flow_control_loop_pipe_sequential_init_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1168_39_fu_18791", "Parent" : "0", "Child" : ["95"],
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
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1168_39_fu_18791.flow_control_loop_pipe_sequential_init_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1179_40_fu_18801", "Parent" : "0", "Child" : ["97"],
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
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1179_40_fu_18801.flow_control_loop_pipe_sequential_init_U", "Parent" : "96"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1186_41_fu_18809", "Parent" : "0", "Child" : ["99"],
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
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1186_41_fu_18809.flow_control_loop_pipe_sequential_init_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1198_42_fu_18817", "Parent" : "0", "Child" : ["101"],
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
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1198_42_fu_18817.flow_control_loop_pipe_sequential_init_U", "Parent" : "100"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hlsSort_fu_18828", "Parent" : "0",
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
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1220_44_fu_18834", "Parent" : "0", "Child" : ["104"],
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
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1220_44_fu_18834.flow_control_loop_pipe_sequential_init_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1213_43_fu_18841", "Parent" : "0", "Child" : ["106"],
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
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1213_43_fu_18841.flow_control_loop_pipe_sequential_init_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_1_fu_18848", "Parent" : "0", "Child" : ["108"],
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
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_1_fu_18848.flow_control_loop_pipe_sequential_init_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_1_fu_18858", "Parent" : "0", "Child" : ["110"],
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
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_1_fu_18858.flow_control_loop_pipe_sequential_init_U", "Parent" : "109"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_14_fu_18868", "Parent" : "0", "Child" : ["112"],
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
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_14_fu_18868.flow_control_loop_pipe_sequential_init_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_15_fu_18878", "Parent" : "0", "Child" : ["114"],
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
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_15_fu_18878.flow_control_loop_pipe_sequential_init_U", "Parent" : "113"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1331_49_fu_18888", "Parent" : "0", "Child" : ["116"],
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
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1331_49_fu_18888.flow_control_loop_pipe_sequential_init_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1339_50_fu_18896", "Parent" : "0", "Child" : ["118"],
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
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1339_50_fu_18896.flow_control_loop_pipe_sequential_init_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1349_51_fu_18904", "Parent" : "0", "Child" : ["120"],
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
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1349_51_fu_18904.flow_control_loop_pipe_sequential_init_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1356_52_fu_18911", "Parent" : "0", "Child" : ["122"],
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
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1356_52_fu_18911.flow_control_loop_pipe_sequential_init_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_841_18_fu_18918", "Parent" : "0", "Child" : ["124"],
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
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_841_18_fu_18918.flow_control_loop_pipe_sequential_init_U", "Parent" : "123"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_16_1_1_U834", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_16_1_1_U835", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_16_1_1_x_U836", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_16_1_1_U837", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_16_1_1_U838", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_16ns_1ns_16s_16ns_16_4_1_U839", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		end_colSelection_1 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12", "Max" : "9594273"}
	, {"Name" : "Interval", "Min" : "12", "Max" : "9594273"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stateArray_data_s { ap_memory {  { stateArray_data_s_address1 MemPortADDR2 1 10 }  { stateArray_data_s_ce1 MemPortCE2 1 1 }  { stateArray_data_s_we1 MemPortWE2 1 1 }  { stateArray_data_s_d1 MemPortDIN2 1 1 } } }
	stateArray_rows_val4 { ap_none {  { stateArray_rows_val4 in_data 0 16 } } }
	stateArray_cols_val9 { ap_none {  { stateArray_cols_val9 in_data 0 16 } } }
	moveStream { axis {  { moveStream_TDATA out_data 1 512 }  { moveStream_TVALID out_vld 1 1 }  { moveStream_TREADY out_acc 0 1 } } }
	moveList_count_read { ap_none {  { moveList_count_read in_data 0 32 } } }
	conv7 { ap_none {  { conv7 in_data 0 32 } } }
	conv6 { ap_none {  { conv6 in_data 0 32 } } }
	unusableInfo_usableAtoms_data { ap_memory {  { unusableInfo_usableAtoms_data_address0 mem_address 1 16 }  { unusableInfo_usableAtoms_data_ce0 mem_ce 1 1 }  { unusableInfo_usableAtoms_data_q0 mem_dout 0 32 }  { unusableInfo_usableAtoms_data_address1 MemPortADDR2 1 16 }  { unusableInfo_usableAtoms_data_ce1 MemPortCE2 1 1 }  { unusableInfo_usableAtoms_data_we1 MemPortWE2 1 1 }  { unusableInfo_usableAtoms_data_d1 MemPortDIN2 1 32 }  { unusableInfo_usableAtoms_data_q1 MemPortDOUT2 0 32 } } }
	unusableInfo_usableAtoms_count_0 { ap_memory {  { unusableInfo_usableAtoms_count_0_address0 mem_address 1 5 }  { unusableInfo_usableAtoms_count_0_ce0 mem_ce 1 1 }  { unusableInfo_usableAtoms_count_0_q0 mem_dout 0 16 }  { unusableInfo_usableAtoms_count_0_address1 MemPortADDR2 1 5 }  { unusableInfo_usableAtoms_count_0_ce1 MemPortCE2 1 1 }  { unusableInfo_usableAtoms_count_0_we1 MemPortWE2 1 1 }  { unusableInfo_usableAtoms_count_0_d1 MemPortDIN2 1 16 } } }
	unusableInfo_usableAtoms_count_1 { ap_memory {  { unusableInfo_usableAtoms_count_1_address0 mem_address 1 5 }  { unusableInfo_usableAtoms_count_1_ce0 mem_ce 1 1 }  { unusableInfo_usableAtoms_count_1_q0 mem_dout 0 16 }  { unusableInfo_usableAtoms_count_1_address1 MemPortADDR2 1 5 }  { unusableInfo_usableAtoms_count_1_ce1 MemPortCE2 1 1 }  { unusableInfo_usableAtoms_count_1_we1 MemPortWE2 1 1 }  { unusableInfo_usableAtoms_count_1_d1 MemPortDIN2 1 16 } } }
	unusableInfo_usableAtoms_count_2 { ap_memory {  { unusableInfo_usableAtoms_count_2_address0 mem_address 1 5 }  { unusableInfo_usableAtoms_count_2_ce0 mem_ce 1 1 }  { unusableInfo_usableAtoms_count_2_q0 mem_dout 0 16 }  { unusableInfo_usableAtoms_count_2_address1 MemPortADDR2 1 5 }  { unusableInfo_usableAtoms_count_2_ce1 MemPortCE2 1 1 }  { unusableInfo_usableAtoms_count_2_we1 MemPortWE2 1 1 }  { unusableInfo_usableAtoms_count_2_d1 MemPortDIN2 1 16 } } }
	unusableInfo_usableAtoms_count_3 { ap_memory {  { unusableInfo_usableAtoms_count_3_address0 mem_address 1 5 }  { unusableInfo_usableAtoms_count_3_ce0 mem_ce 1 1 }  { unusableInfo_usableAtoms_count_3_q0 mem_dout 0 16 }  { unusableInfo_usableAtoms_count_3_address1 MemPortADDR2 1 5 }  { unusableInfo_usableAtoms_count_3_ce1 MemPortCE2 1 1 }  { unusableInfo_usableAtoms_count_3_we1 MemPortWE2 1 1 }  { unusableInfo_usableAtoms_count_3_d1 MemPortDIN2 1 16 } } }
	unusableInfo_usableAtoms_count_4 { ap_memory {  { unusableInfo_usableAtoms_count_4_address0 mem_address 1 5 }  { unusableInfo_usableAtoms_count_4_ce0 mem_ce 1 1 }  { unusableInfo_usableAtoms_count_4_q0 mem_dout 0 16 }  { unusableInfo_usableAtoms_count_4_address1 MemPortADDR2 1 5 }  { unusableInfo_usableAtoms_count_4_ce1 MemPortCE2 1 1 }  { unusableInfo_usableAtoms_count_4_we1 MemPortWE2 1 1 }  { unusableInfo_usableAtoms_count_4_d1 MemPortDIN2 1 16 } } }
	unusableInfo_usableAtoms_count_5 { ap_memory {  { unusableInfo_usableAtoms_count_5_address0 mem_address 1 5 }  { unusableInfo_usableAtoms_count_5_ce0 mem_ce 1 1 }  { unusableInfo_usableAtoms_count_5_q0 mem_dout 0 16 }  { unusableInfo_usableAtoms_count_5_address1 MemPortADDR2 1 5 }  { unusableInfo_usableAtoms_count_5_ce1 MemPortCE2 1 1 }  { unusableInfo_usableAtoms_count_5_we1 MemPortWE2 1 1 }  { unusableInfo_usableAtoms_count_5_d1 MemPortDIN2 1 16 } } }
	unusableInfo_usableAtoms_count_6 { ap_memory {  { unusableInfo_usableAtoms_count_6_address0 mem_address 1 5 }  { unusableInfo_usableAtoms_count_6_ce0 mem_ce 1 1 }  { unusableInfo_usableAtoms_count_6_q0 mem_dout 0 16 }  { unusableInfo_usableAtoms_count_6_address1 MemPortADDR2 1 5 }  { unusableInfo_usableAtoms_count_6_ce1 MemPortCE2 1 1 }  { unusableInfo_usableAtoms_count_6_we1 MemPortWE2 1 1 }  { unusableInfo_usableAtoms_count_6_d1 MemPortDIN2 1 16 } } }
	unusableInfo_usableAtoms_count_7 { ap_memory {  { unusableInfo_usableAtoms_count_7_address0 mem_address 1 5 }  { unusableInfo_usableAtoms_count_7_ce0 mem_ce 1 1 }  { unusableInfo_usableAtoms_count_7_q0 mem_dout 0 16 }  { unusableInfo_usableAtoms_count_7_address1 MemPortADDR2 1 5 }  { unusableInfo_usableAtoms_count_7_ce1 MemPortCE2 1 1 }  { unusableInfo_usableAtoms_count_7_we1 MemPortWE2 1 1 }  { unusableInfo_usableAtoms_count_7_d1 MemPortDIN2 1 16 } } }
	unusableInfo_unusableAtoms_count_0 { ap_memory {  { unusableInfo_unusableAtoms_count_0_address0 mem_address 1 5 }  { unusableInfo_unusableAtoms_count_0_ce0 mem_ce 1 1 }  { unusableInfo_unusableAtoms_count_0_q0 mem_dout 0 16 }  { unusableInfo_unusableAtoms_count_0_address1 MemPortADDR2 1 5 }  { unusableInfo_unusableAtoms_count_0_ce1 MemPortCE2 1 1 }  { unusableInfo_unusableAtoms_count_0_we1 MemPortWE2 1 1 }  { unusableInfo_unusableAtoms_count_0_d1 MemPortDIN2 1 16 } } }
	unusableInfo_unusableAtoms_count_1 { ap_memory {  { unusableInfo_unusableAtoms_count_1_address0 mem_address 1 5 }  { unusableInfo_unusableAtoms_count_1_ce0 mem_ce 1 1 }  { unusableInfo_unusableAtoms_count_1_q0 mem_dout 0 16 }  { unusableInfo_unusableAtoms_count_1_address1 MemPortADDR2 1 5 }  { unusableInfo_unusableAtoms_count_1_ce1 MemPortCE2 1 1 }  { unusableInfo_unusableAtoms_count_1_we1 MemPortWE2 1 1 }  { unusableInfo_unusableAtoms_count_1_d1 MemPortDIN2 1 16 } } }
	unusableInfo_unusableAtoms_count_2 { ap_memory {  { unusableInfo_unusableAtoms_count_2_address0 mem_address 1 5 }  { unusableInfo_unusableAtoms_count_2_ce0 mem_ce 1 1 }  { unusableInfo_unusableAtoms_count_2_q0 mem_dout 0 16 }  { unusableInfo_unusableAtoms_count_2_address1 MemPortADDR2 1 5 }  { unusableInfo_unusableAtoms_count_2_ce1 MemPortCE2 1 1 }  { unusableInfo_unusableAtoms_count_2_we1 MemPortWE2 1 1 }  { unusableInfo_unusableAtoms_count_2_d1 MemPortDIN2 1 16 } } }
	unusableInfo_unusableAtoms_count_3 { ap_memory {  { unusableInfo_unusableAtoms_count_3_address0 mem_address 1 5 }  { unusableInfo_unusableAtoms_count_3_ce0 mem_ce 1 1 }  { unusableInfo_unusableAtoms_count_3_q0 mem_dout 0 16 }  { unusableInfo_unusableAtoms_count_3_address1 MemPortADDR2 1 5 }  { unusableInfo_unusableAtoms_count_3_ce1 MemPortCE2 1 1 }  { unusableInfo_unusableAtoms_count_3_we1 MemPortWE2 1 1 }  { unusableInfo_unusableAtoms_count_3_d1 MemPortDIN2 1 16 } } }
	unusableInfo_unusableAtoms_count_4 { ap_memory {  { unusableInfo_unusableAtoms_count_4_address0 mem_address 1 5 }  { unusableInfo_unusableAtoms_count_4_ce0 mem_ce 1 1 }  { unusableInfo_unusableAtoms_count_4_q0 mem_dout 0 16 }  { unusableInfo_unusableAtoms_count_4_address1 MemPortADDR2 1 5 }  { unusableInfo_unusableAtoms_count_4_ce1 MemPortCE2 1 1 }  { unusableInfo_unusableAtoms_count_4_we1 MemPortWE2 1 1 }  { unusableInfo_unusableAtoms_count_4_d1 MemPortDIN2 1 16 } } }
	unusableInfo_unusableAtoms_count_5 { ap_memory {  { unusableInfo_unusableAtoms_count_5_address0 mem_address 1 5 }  { unusableInfo_unusableAtoms_count_5_ce0 mem_ce 1 1 }  { unusableInfo_unusableAtoms_count_5_q0 mem_dout 0 16 }  { unusableInfo_unusableAtoms_count_5_address1 MemPortADDR2 1 5 }  { unusableInfo_unusableAtoms_count_5_ce1 MemPortCE2 1 1 }  { unusableInfo_unusableAtoms_count_5_we1 MemPortWE2 1 1 }  { unusableInfo_unusableAtoms_count_5_d1 MemPortDIN2 1 16 } } }
	unusableInfo_unusableAtoms_count_6 { ap_memory {  { unusableInfo_unusableAtoms_count_6_address0 mem_address 1 5 }  { unusableInfo_unusableAtoms_count_6_ce0 mem_ce 1 1 }  { unusableInfo_unusableAtoms_count_6_q0 mem_dout 0 16 }  { unusableInfo_unusableAtoms_count_6_address1 MemPortADDR2 1 5 }  { unusableInfo_unusableAtoms_count_6_ce1 MemPortCE2 1 1 }  { unusableInfo_unusableAtoms_count_6_we1 MemPortWE2 1 1 }  { unusableInfo_unusableAtoms_count_6_d1 MemPortDIN2 1 16 } } }
	unusableInfo_unusableAtoms_count_7 { ap_memory {  { unusableInfo_unusableAtoms_count_7_address0 mem_address 1 5 }  { unusableInfo_unusableAtoms_count_7_ce0 mem_ce 1 1 }  { unusableInfo_unusableAtoms_count_7_q0 mem_dout 0 16 }  { unusableInfo_unusableAtoms_count_7_address1 MemPortADDR2 1 5 }  { unusableInfo_unusableAtoms_count_7_ce1 MemPortCE2 1 1 }  { unusableInfo_unusableAtoms_count_7_we1 MemPortWE2 1 1 }  { unusableInfo_unusableAtoms_count_7_d1 MemPortDIN2 1 16 } } }
	unusableInfo_targetSites_data { ap_memory {  { unusableInfo_targetSites_data_address0 mem_address 1 16 }  { unusableInfo_targetSites_data_ce0 mem_ce 1 1 }  { unusableInfo_targetSites_data_q0 mem_dout 0 8 }  { unusableInfo_targetSites_data_address1 MemPortADDR2 1 16 }  { unusableInfo_targetSites_data_ce1 MemPortCE2 1 1 }  { unusableInfo_targetSites_data_we1 MemPortWE2 1 1 }  { unusableInfo_targetSites_data_d1 MemPortDIN2 1 8 } } }
	unusableInfo_targetSites_count_0 { ap_memory {  { unusableInfo_targetSites_count_0_address0 mem_address 1 5 }  { unusableInfo_targetSites_count_0_ce0 mem_ce 1 1 }  { unusableInfo_targetSites_count_0_q0 mem_dout 0 16 }  { unusableInfo_targetSites_count_0_address1 MemPortADDR2 1 5 }  { unusableInfo_targetSites_count_0_ce1 MemPortCE2 1 1 }  { unusableInfo_targetSites_count_0_we1 MemPortWE2 1 1 }  { unusableInfo_targetSites_count_0_d1 MemPortDIN2 1 16 } } }
	unusableInfo_targetSites_count_1 { ap_memory {  { unusableInfo_targetSites_count_1_address0 mem_address 1 5 }  { unusableInfo_targetSites_count_1_ce0 mem_ce 1 1 }  { unusableInfo_targetSites_count_1_q0 mem_dout 0 16 }  { unusableInfo_targetSites_count_1_address1 MemPortADDR2 1 5 }  { unusableInfo_targetSites_count_1_ce1 MemPortCE2 1 1 }  { unusableInfo_targetSites_count_1_we1 MemPortWE2 1 1 }  { unusableInfo_targetSites_count_1_d1 MemPortDIN2 1 16 } } }
	unusableInfo_targetSites_count_2 { ap_memory {  { unusableInfo_targetSites_count_2_address0 mem_address 1 5 }  { unusableInfo_targetSites_count_2_ce0 mem_ce 1 1 }  { unusableInfo_targetSites_count_2_q0 mem_dout 0 16 }  { unusableInfo_targetSites_count_2_address1 MemPortADDR2 1 5 }  { unusableInfo_targetSites_count_2_ce1 MemPortCE2 1 1 }  { unusableInfo_targetSites_count_2_we1 MemPortWE2 1 1 }  { unusableInfo_targetSites_count_2_d1 MemPortDIN2 1 16 } } }
	unusableInfo_targetSites_count_3 { ap_memory {  { unusableInfo_targetSites_count_3_address0 mem_address 1 5 }  { unusableInfo_targetSites_count_3_ce0 mem_ce 1 1 }  { unusableInfo_targetSites_count_3_q0 mem_dout 0 16 }  { unusableInfo_targetSites_count_3_address1 MemPortADDR2 1 5 }  { unusableInfo_targetSites_count_3_ce1 MemPortCE2 1 1 }  { unusableInfo_targetSites_count_3_we1 MemPortWE2 1 1 }  { unusableInfo_targetSites_count_3_d1 MemPortDIN2 1 16 } } }
	unusableInfo_targetSites_count_4 { ap_memory {  { unusableInfo_targetSites_count_4_address0 mem_address 1 5 }  { unusableInfo_targetSites_count_4_ce0 mem_ce 1 1 }  { unusableInfo_targetSites_count_4_q0 mem_dout 0 16 }  { unusableInfo_targetSites_count_4_address1 MemPortADDR2 1 5 }  { unusableInfo_targetSites_count_4_ce1 MemPortCE2 1 1 }  { unusableInfo_targetSites_count_4_we1 MemPortWE2 1 1 }  { unusableInfo_targetSites_count_4_d1 MemPortDIN2 1 16 } } }
	unusableInfo_targetSites_count_5 { ap_memory {  { unusableInfo_targetSites_count_5_address0 mem_address 1 5 }  { unusableInfo_targetSites_count_5_ce0 mem_ce 1 1 }  { unusableInfo_targetSites_count_5_q0 mem_dout 0 16 }  { unusableInfo_targetSites_count_5_address1 MemPortADDR2 1 5 }  { unusableInfo_targetSites_count_5_ce1 MemPortCE2 1 1 }  { unusableInfo_targetSites_count_5_we1 MemPortWE2 1 1 }  { unusableInfo_targetSites_count_5_d1 MemPortDIN2 1 16 } } }
	unusableInfo_targetSites_count_6 { ap_memory {  { unusableInfo_targetSites_count_6_address0 mem_address 1 5 }  { unusableInfo_targetSites_count_6_ce0 mem_ce 1 1 }  { unusableInfo_targetSites_count_6_q0 mem_dout 0 16 }  { unusableInfo_targetSites_count_6_address1 MemPortADDR2 1 5 }  { unusableInfo_targetSites_count_6_ce1 MemPortCE2 1 1 }  { unusableInfo_targetSites_count_6_we1 MemPortWE2 1 1 }  { unusableInfo_targetSites_count_6_d1 MemPortDIN2 1 16 } } }
	unusableInfo_targetSites_count_7 { ap_memory {  { unusableInfo_targetSites_count_7_address0 mem_address 1 5 }  { unusableInfo_targetSites_count_7_ce0 mem_ce 1 1 }  { unusableInfo_targetSites_count_7_q0 mem_dout 0 16 }  { unusableInfo_targetSites_count_7_address1 MemPortADDR2 1 5 }  { unusableInfo_targetSites_count_7_ce1 MemPortCE2 1 1 }  { unusableInfo_targetSites_count_7_we1 MemPortWE2 1 1 }  { unusableInfo_targetSites_count_7_d1 MemPortDIN2 1 16 } } }
	compZoneRowStart { ap_none {  { compZoneRowStart in_data 0 32 } } }
	compZoneRowEnd { ap_none {  { compZoneRowEnd in_data 0 32 } } }
	compZoneColStart { ap_none {  { compZoneColStart in_data 0 32 } } }
	compZoneColEnd { ap_none {  { compZoneColEnd in_data 0 32 } } }
}
