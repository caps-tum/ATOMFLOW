set moduleName sortArray_impl_state_accessor_HLSMoveStream_s
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
set C_modelName {sortArray_impl_state_accessor<HLSMoveStream>}
set C_modelType { int 32 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict stateArray_data_s { MEM_WIDTH 1 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict targetGeometry_data_s { MEM_WIDTH 1 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ stateArray_data_s int 1 regular {array 1024 { 1 0 } 1 1 }  }
	{ stateArray_rows_val4 int 32 regular  }
	{ stateArray_cols_val9 int 32 regular  }
	{ compZoneRowStart int 32 regular  }
	{ compZoneRowEnd int 32 regular  }
	{ compZoneColStart int 32 regular  }
	{ compZoneColEnd int 32 regular  }
	{ targetGeometry_data_s int 1 regular {array 1024 { 1 3 } 1 1 }  }
	{ targetGeometry_cols_val10 int 33 regular  }
	{ moveStream int 512 regular {axi_s 1 volatile  { moveStream Data } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "stateArray_data_s", "interface" : "memory", "bitwidth" : 1, "direction" : "READWRITE"} , 
 	{ "Name" : "stateArray_rows_val4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_cols_val9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "compZoneRowStart", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "compZoneRowEnd", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "compZoneColStart", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "compZoneColEnd", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "targetGeometry_data_s", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "targetGeometry_cols_val10", "interface" : "wire", "bitwidth" : 33, "direction" : "READONLY"} , 
 	{ "Name" : "moveStream", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stateArray_data_s_address0 sc_out sc_lv 10 signal 0 } 
	{ stateArray_data_s_ce0 sc_out sc_logic 1 signal 0 } 
	{ stateArray_data_s_q0 sc_in sc_lv 1 signal 0 } 
	{ stateArray_data_s_address1 sc_out sc_lv 10 signal 0 } 
	{ stateArray_data_s_ce1 sc_out sc_logic 1 signal 0 } 
	{ stateArray_data_s_we1 sc_out sc_logic 1 signal 0 } 
	{ stateArray_data_s_d1 sc_out sc_lv 1 signal 0 } 
	{ stateArray_rows_val4 sc_in sc_lv 32 signal 1 } 
	{ stateArray_cols_val9 sc_in sc_lv 32 signal 2 } 
	{ compZoneRowStart sc_in sc_lv 32 signal 3 } 
	{ compZoneRowEnd sc_in sc_lv 32 signal 4 } 
	{ compZoneColStart sc_in sc_lv 32 signal 5 } 
	{ compZoneColEnd sc_in sc_lv 32 signal 6 } 
	{ targetGeometry_data_s_address0 sc_out sc_lv 10 signal 7 } 
	{ targetGeometry_data_s_ce0 sc_out sc_logic 1 signal 7 } 
	{ targetGeometry_data_s_q0 sc_in sc_lv 1 signal 7 } 
	{ targetGeometry_cols_val10 sc_in sc_lv 33 signal 8 } 
	{ moveStream_TDATA sc_out sc_lv 512 signal 9 } 
	{ moveStream_TVALID sc_out sc_logic 1 outvld 9 } 
	{ moveStream_TREADY sc_in sc_logic 1 outacc 9 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stateArray_data_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "address0" }} , 
 	{ "name": "stateArray_data_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "ce0" }} , 
 	{ "name": "stateArray_data_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "q0" }} , 
 	{ "name": "stateArray_data_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "address1" }} , 
 	{ "name": "stateArray_data_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "ce1" }} , 
 	{ "name": "stateArray_data_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "we1" }} , 
 	{ "name": "stateArray_data_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "d1" }} , 
 	{ "name": "stateArray_rows_val4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stateArray_rows_val4", "role": "default" }} , 
 	{ "name": "stateArray_cols_val9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stateArray_cols_val9", "role": "default" }} , 
 	{ "name": "compZoneRowStart", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compZoneRowStart", "role": "default" }} , 
 	{ "name": "compZoneRowEnd", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compZoneRowEnd", "role": "default" }} , 
 	{ "name": "compZoneColStart", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compZoneColStart", "role": "default" }} , 
 	{ "name": "compZoneColEnd", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compZoneColEnd", "role": "default" }} , 
 	{ "name": "targetGeometry_data_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "targetGeometry_data_s", "role": "address0" }} , 
 	{ "name": "targetGeometry_data_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetGeometry_data_s", "role": "ce0" }} , 
 	{ "name": "targetGeometry_data_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "targetGeometry_data_s", "role": "q0" }} , 
 	{ "name": "targetGeometry_cols_val10", "direction": "in", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "targetGeometry_cols_val10", "role": "default" }} , 
 	{ "name": "moveStream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "moveStream", "role": "TDATA" }} , 
 	{ "name": "moveStream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "moveStream", "role": "TVALID" }} , 
 	{ "name": "moveStream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "moveStream", "role": "TREADY" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "35", "61", "192"],
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
					{"ID" : "27", "SubInstance" : "grp_findUnusableAtoms_fu_213", "Port" : "stateArray_data_s", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "35", "SubInstance" : "grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288", "Port" : "stateArray_data_s", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "61", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299", "Port" : "stateArray_data_s", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "192", "SubInstance" : "grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342", "Port" : "stateArray_data_s", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "stateArray_rows_val4", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_cols_val9", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneRowStart", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneRowEnd", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneColStart", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneColEnd", "Type" : "None", "Direction" : "I"},
			{"Name" : "targetGeometry_data_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_findUnusableAtoms_fu_213", "Port" : "targetGeometry_data_s", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "targetGeometry_cols_val10", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveStream", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288", "Port" : "moveStream", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "61", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299", "Port" : "moveStream", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "192", "SubInstance" : "grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342", "Port" : "moveStream", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_usableAtoms_data_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_usableAtoms_count_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_usableAtoms_count_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_usableAtoms_count_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_usableAtoms_count_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_usableAtoms_count_4_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_usableAtoms_count_5_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_usableAtoms_count_6_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_usableAtoms_count_7_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_unusableAtoms_count_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_unusableAtoms_count_1_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_unusableAtoms_count_2_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_unusableAtoms_count_3_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_unusableAtoms_count_4_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_unusableAtoms_count_5_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_unusableAtoms_count_6_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_unusableAtoms_count_7_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_targetSites_data_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_targetSites_count_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_targetSites_count_1_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_targetSites_count_2_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_targetSites_count_3_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_targetSites_count_4_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_targetSites_count_5_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_targetSites_count_6_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unusableInfo_targetSites_count_7_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_findUnusableAtoms_fu_213", "Parent" : "0", "Child" : ["28", "30", "34"],
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
					{"ID" : "30", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "stateArray_data_s", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "stateArray_cols_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "arraySizeXC", "Type" : "None", "Direction" : "I"},
			{"Name" : "arraySizeAC", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneRowStart", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneRowEnd", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneColStart", "Type" : "None", "Direction" : "I"},
			{"Name" : "compZoneColEnd", "Type" : "None", "Direction" : "I"},
			{"Name" : "targetGeometry_data_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetGeometry_data_s", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetGeometry_cols_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "usableAtoms_data", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_data", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "30", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "30", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "30", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_2", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_3", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "30", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_3", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_4", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "30", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_4", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_5", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "30", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_5", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_6", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "30", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_6", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "usableAtoms_count_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "usableAtoms_count_7", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "30", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "usableAtoms_count_7", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "unusableAtoms_count_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableAtoms_count_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableAtoms_count_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableAtoms_count_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableAtoms_count_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableAtoms_count_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableAtoms_count_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableAtoms_count_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "unusableAtoms_count_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "targetSites_data", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_data", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "30", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "30", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "30", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_2", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_3", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "30", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_3", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_4", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "30", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_4", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_5", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "30", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_5", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_6", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "30", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_6", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "targetSites_count_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Port" : "targetSites_count_7", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "30", "SubInstance" : "grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Port" : "targetSites_count_7", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1446_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_findUnusableAtoms_fu_213.grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201", "Parent" : "27", "Child" : ["29"],
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
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_findUnusableAtoms_fu_213.grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1436_1_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_findUnusableAtoms_fu_213.grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254", "Parent" : "27", "Child" : ["31", "32", "33"],
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
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_findUnusableAtoms_fu_213.grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254.sparsemux_17_3_16_1_1_U551", "Parent" : "30"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_findUnusableAtoms_fu_213.grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254.sparsemux_17_3_16_1_1_U552", "Parent" : "30"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_findUnusableAtoms_fu_213.grp_findUnusableAtoms_Pipeline_VITIS_LOOP_1453_3_fu_254.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_findUnusableAtoms_fu_213.am_submul_9ns_10ns_10s_10_4_1_U585", "Parent" : "27"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288", "Parent" : "0", "Child" : ["36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "47", "49", "57", "60"],
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
					{"ID" : "45", "SubInstance" : "grp_clearFirstNRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_421_2_fu_2082", "Port" : "stateArray_data_s", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "49", "SubInstance" : "grp_execute_fu_2105", "Port" : "stateArray_data_s", "Inst_start_state" : "62", "Inst_end_state" : "63"}]},
			{"Name" : "stateArray_rows_val1", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_cols_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveStream", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_push_back_fu_2114", "Port" : "moveStream", "Inst_start_state" : "64", "Inst_end_state" : "65"}]},
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
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.move_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.ref_tmp_i_0_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.ref_tmp_i_1_U", "Parent" : "35"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.occupiedIndices_U", "Parent" : "35"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.occupiedIndices_1_U", "Parent" : "35"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.start_colSelection_U", "Parent" : "35"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.start_rowSelection_U", "Parent" : "35"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.end_colSelection_U", "Parent" : "35"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.end_rowSelection_U", "Parent" : "35"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_clearFirstNRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_421_2_fu_2082", "Parent" : "35", "Child" : ["46"],
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
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_clearFirstNRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_421_2_fu_2082.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_clearFirstNRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_459_4_fu_2093", "Parent" : "35", "Child" : ["48"],
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
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_clearFirstNRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_459_4_fu_2093.flow_control_loop_pipe_sequential_init_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_execute_fu_2105", "Parent" : "35", "Child" : ["50", "52", "54", "55", "56"],
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
					{"ID" : "50", "SubInstance" : "grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296", "Port" : "move", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "52", "SubInstance" : "grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304", "Port" : "move", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
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
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_execute_fu_2105.grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296", "Parent" : "49", "Child" : ["51"],
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
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_execute_fu_2105.grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296.flow_control_loop_pipe_sequential_init_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_execute_fu_2105.grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304", "Parent" : "49", "Child" : ["53"],
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
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_execute_fu_2105.grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_execute_fu_2105.mul_8ns_8ns_16_1_1_U642", "Parent" : "49"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_execute_fu_2105.mac_muladd_10s_10s_10ns_10_4_1_U643", "Parent" : "49"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_execute_fu_2105.mac_muladd_10s_10s_10ns_10_4_1_U644", "Parent" : "49"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_push_back_fu_2114", "Parent" : "35", "Child" : ["58"],
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
					{"ID" : "58", "SubInstance" : "grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Port" : "moveStream", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "this_count_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "move", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Port" : "move", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_push_back_fu_2114.grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Parent" : "57", "Child" : ["59"],
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
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.grp_push_back_fu_2114.grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32.flow_control_loop_pipe_sequential_init_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_clearFirstNRowsOrCols_HLSMoveStream_s_fu_288.mul_10s_2ns_10_1_1_U655", "Parent" : "35"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299", "Parent" : "0", "Child" : ["62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "113", "116", "118", "120", "122", "124", "126", "128", "130", "138", "141", "143", "145", "147", "149", "153", "155", "157", "159", "161", "163", "164", "166", "168", "170", "172", "174", "176", "178", "180", "182", "184", "186", "187", "188", "189", "190", "191"],
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
					{"ID" : "130", "SubInstance" : "grp_execute_fu_18706", "Port" : "stateArray_data_s", "Inst_start_state" : "548", "Inst_end_state" : "549"}]},
			{"Name" : "stateArray_rows_val4", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_cols_val9", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveStream", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_push_back_fu_18715", "Port" : "moveStream", "Inst_start_state" : "550", "Inst_end_state" : "551"}]},
			{"Name" : "moveList_count_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv7", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv6", "Type" : "None", "Direction" : "I"},
			{"Name" : "unusableInfo_usableAtoms_data", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_609_5_fu_18636", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "120", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_643_6_fu_18653", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "141", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1085_33_fu_18726", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "127", "Inst_end_state" : "128"},
					{"ID" : "145", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1092_34_fu_18742", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "129", "Inst_end_state" : "130"},
					{"ID" : "153", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1161_38_fu_18781", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "133", "Inst_end_state" : "134"},
					{"ID" : "155", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1168_39_fu_18791", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "135", "Inst_end_state" : "136"},
					{"ID" : "161", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1198_42_fu_18817", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "139", "Inst_end_state" : "140"},
					{"ID" : "168", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_1_fu_18848", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "215", "Inst_end_state" : "216"},
					{"ID" : "170", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_1_fu_18858", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "218", "Inst_end_state" : "219"},
					{"ID" : "184", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_841_18_fu_18918", "Port" : "unusableInfo_usableAtoms_data", "Inst_start_state" : "514", "Inst_end_state" : "515"}]},
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
					{"ID" : "172", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_14_fu_18868", "Port" : "unusableInfo_targetSites_data", "Inst_start_state" : "220", "Inst_end_state" : "221"},
					{"ID" : "174", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_15_fu_18878", "Port" : "unusableInfo_targetSites_data", "Inst_start_state" : "223", "Inst_end_state" : "224"}]},
			{"Name" : "unusableInfo_targetSites_count_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableInfo_targetSites_count_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableInfo_targetSites_count_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableInfo_targetSites_count_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableInfo_targetSites_count_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableInfo_targetSites_count_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableInfo_targetSites_count_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "unusableInfo_targetSites_count_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Port" : "unusableInfo_targetSites_count_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
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
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.move_i_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.move442_i_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.move559_i_U", "Parent" : "61"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.move1392_i_U", "Parent" : "61"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.ref_tmp_i603_0_i_U", "Parent" : "61"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.ref_tmp_i603_1_i_U", "Parent" : "61"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.ref_tmp_i527_0_i_U", "Parent" : "61"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.ref_tmp_i527_1_i_U", "Parent" : "61"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.ref_tmp_i381_0_i_U", "Parent" : "61"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.ref_tmp_i381_1_i_U", "Parent" : "61"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.ref_tmp_i_0_i_U", "Parent" : "61"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.ref_tmp_i_1_i_U", "Parent" : "61"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.parkingSpotsPerSuitableIndexXC_data_U", "Parent" : "61"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.parkingSpotsRemainingAtCurrentIndexXC_data_U", "Parent" : "61"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.start_colSelection_U", "Parent" : "61"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.start_rowSelection_U", "Parent" : "61"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.elbow_colSelection_U", "Parent" : "61"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.elbow_rowSelection_U", "Parent" : "61"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.end_colSelection_U", "Parent" : "61"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.end_rowSelection_U", "Parent" : "61"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.start_colSelection_1_U", "Parent" : "61"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.start_rowSelection_1_U", "Parent" : "61"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.end_colSelection_1_U", "Parent" : "61"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.end_rowSelection_1_U", "Parent" : "61"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.start_colSelection_2_U", "Parent" : "61"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.start_rowSelection_2_U", "Parent" : "61"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.elbow1_colSelection_U", "Parent" : "61"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.elbow1_rowSelection_U", "Parent" : "61"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.elbow2_colSelection_U", "Parent" : "61"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.elbow2_rowSelection_U", "Parent" : "61"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.end_colSelection_2_U", "Parent" : "61"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.end_rowSelection_2_U", "Parent" : "61"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.usableFrontBuf_U", "Parent" : "61"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.usableBackBuf_U", "Parent" : "61"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.parkFrontBuf_U", "Parent" : "61"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.parkBackBuf_U", "Parent" : "61"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.tempUsableH_U", "Parent" : "61"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.tempParkingH_U", "Parent" : "61"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.usedSourceIndices_data_U", "Parent" : "61"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.usedTargetIndices_data_U", "Parent" : "61"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.start_colSelection_3_U", "Parent" : "61"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.start_rowSelection_3_U", "Parent" : "61"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.elbow1_colSelection_1_U", "Parent" : "61"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.elbow1_rowSelection_1_U", "Parent" : "61"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.elbow2_colSelection_1_U", "Parent" : "61"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.elbow2_rowSelection_1_U", "Parent" : "61"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.end_colSelection_3_U", "Parent" : "61"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.end_rowSelection_3_U", "Parent" : "61"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.unusableAtoms_data_U", "Parent" : "61"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_525_1_fu_18593", "Parent" : "61", "Child" : ["112"],
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
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_525_1_fu_18593.flow_control_loop_pipe_sequential_init_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602", "Parent" : "61", "Child" : ["114", "115"],
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
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602.sparsemux_17_3_16_1_1_U676", "Parent" : "113"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3_fu_18602.flow_control_loop_pipe_sequential_init_U", "Parent" : "113"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_533_2_fu_18625", "Parent" : "61", "Child" : ["117"],
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
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_533_2_fu_18625.flow_control_loop_pipe_sequential_init_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_609_5_fu_18636", "Parent" : "61", "Child" : ["119"],
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
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_609_5_fu_18636.flow_control_loop_pipe_sequential_init_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_643_6_fu_18653", "Parent" : "61", "Child" : ["121"],
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
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_643_6_fu_18653.flow_control_loop_pipe_sequential_init_U", "Parent" : "120"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_666_8_fu_18663", "Parent" : "61", "Child" : ["123"],
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
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_666_8_fu_18663.flow_control_loop_pipe_sequential_init_U", "Parent" : "122"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_752_13_fu_18674", "Parent" : "61", "Child" : ["125"],
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
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_752_13_fu_18674.flow_control_loop_pipe_sequential_init_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_772_14_fu_18687", "Parent" : "61", "Child" : ["127"],
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
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_772_14_fu_18687.flow_control_loop_pipe_sequential_init_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_780_15_fu_18696", "Parent" : "61", "Child" : ["129"],
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
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_780_15_fu_18696.flow_control_loop_pipe_sequential_init_U", "Parent" : "128"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_execute_fu_18706", "Parent" : "61", "Child" : ["131", "133", "135", "136", "137"],
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
					{"ID" : "131", "SubInstance" : "grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296", "Port" : "move", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "133", "SubInstance" : "grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304", "Port" : "move", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
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
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_execute_fu_18706.grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296", "Parent" : "130", "Child" : ["132"],
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
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_execute_fu_18706.grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296.flow_control_loop_pipe_sequential_init_U", "Parent" : "131"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_execute_fu_18706.grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304", "Parent" : "130", "Child" : ["134"],
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
	{"ID" : "134", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_execute_fu_18706.grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304.flow_control_loop_pipe_sequential_init_U", "Parent" : "133"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_execute_fu_18706.mul_8ns_8ns_16_1_1_U642", "Parent" : "130"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_execute_fu_18706.mac_muladd_10s_10s_10ns_10_4_1_U643", "Parent" : "130"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_execute_fu_18706.mac_muladd_10s_10s_10ns_10_4_1_U644", "Parent" : "130"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_push_back_fu_18715", "Parent" : "61", "Child" : ["139"],
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
					{"ID" : "139", "SubInstance" : "grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Port" : "moveStream", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "this_count_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "move", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Port" : "move", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_push_back_fu_18715.grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Parent" : "138", "Child" : ["140"],
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
	{"ID" : "140", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_push_back_fu_18715.grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32.flow_control_loop_pipe_sequential_init_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1085_33_fu_18726", "Parent" : "61", "Child" : ["142"],
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
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1085_33_fu_18726.flow_control_loop_pipe_sequential_init_U", "Parent" : "141"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1099_35_fu_18735", "Parent" : "61", "Child" : ["144"],
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
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1099_35_fu_18735.flow_control_loop_pipe_sequential_init_U", "Parent" : "143"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1092_34_fu_18742", "Parent" : "61", "Child" : ["146"],
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
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1092_34_fu_18742.flow_control_loop_pipe_sequential_init_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1106_36_fu_18752", "Parent" : "61", "Child" : ["148"],
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
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1106_36_fu_18752.flow_control_loop_pipe_sequential_init_U", "Parent" : "147"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1114_37_fu_18760", "Parent" : "61", "Child" : ["150", "151", "152"],
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
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1114_37_fu_18760.uitodp_64ns_64_4_no_dsp_1_U746", "Parent" : "149"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1114_37_fu_18760.sitodp_32ns_64_4_no_dsp_1_U747", "Parent" : "149"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1114_37_fu_18760.flow_control_loop_pipe_sequential_init_U", "Parent" : "149"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1161_38_fu_18781", "Parent" : "61", "Child" : ["154"],
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
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1161_38_fu_18781.flow_control_loop_pipe_sequential_init_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1168_39_fu_18791", "Parent" : "61", "Child" : ["156"],
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
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1168_39_fu_18791.flow_control_loop_pipe_sequential_init_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1179_40_fu_18801", "Parent" : "61", "Child" : ["158"],
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
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1179_40_fu_18801.flow_control_loop_pipe_sequential_init_U", "Parent" : "157"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1186_41_fu_18809", "Parent" : "61", "Child" : ["160"],
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
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1186_41_fu_18809.flow_control_loop_pipe_sequential_init_U", "Parent" : "159"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1198_42_fu_18817", "Parent" : "61", "Child" : ["162"],
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
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1198_42_fu_18817.flow_control_loop_pipe_sequential_init_U", "Parent" : "161"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_hlsSort_fu_18828", "Parent" : "61",
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
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1220_44_fu_18834", "Parent" : "61", "Child" : ["165"],
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
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1220_44_fu_18834.flow_control_loop_pipe_sequential_init_U", "Parent" : "164"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1213_43_fu_18841", "Parent" : "61", "Child" : ["167"],
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
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1213_43_fu_18841.flow_control_loop_pipe_sequential_init_U", "Parent" : "166"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_1_fu_18848", "Parent" : "61", "Child" : ["169"],
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
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_1_fu_18848.flow_control_loop_pipe_sequential_init_U", "Parent" : "168"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_1_fu_18858", "Parent" : "61", "Child" : ["171"],
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
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_1_fu_18858.flow_control_loop_pipe_sequential_init_U", "Parent" : "170"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_14_fu_18868", "Parent" : "61", "Child" : ["173"],
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
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_260_14_fu_18868.flow_control_loop_pipe_sequential_init_U", "Parent" : "172"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_15_fu_18878", "Parent" : "61", "Child" : ["175"],
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
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_206_15_fu_18878.flow_control_loop_pipe_sequential_init_U", "Parent" : "174"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1331_49_fu_18888", "Parent" : "61", "Child" : ["177"],
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
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1331_49_fu_18888.flow_control_loop_pipe_sequential_init_U", "Parent" : "176"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1339_50_fu_18896", "Parent" : "61", "Child" : ["179"],
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
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1339_50_fu_18896.flow_control_loop_pipe_sequential_init_U", "Parent" : "178"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1349_51_fu_18904", "Parent" : "61", "Child" : ["181"],
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
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1349_51_fu_18904.flow_control_loop_pipe_sequential_init_U", "Parent" : "180"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1356_52_fu_18911", "Parent" : "61", "Child" : ["183"],
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
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1356_52_fu_18911.flow_control_loop_pipe_sequential_init_U", "Parent" : "182"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_841_18_fu_18918", "Parent" : "61", "Child" : ["185"],
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
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.grp_sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_841_18_fu_18918.flow_control_loop_pipe_sequential_init_U", "Parent" : "184"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.sparsemux_17_3_16_1_1_U834", "Parent" : "61"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.sparsemux_17_3_16_1_1_U835", "Parent" : "61"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.sparsemux_17_3_16_1_1_x_U836", "Parent" : "61"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.sparsemux_17_3_16_1_1_U837", "Parent" : "61"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.sparsemux_17_3_16_1_1_U838", "Parent" : "61"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sortRemainingRowsOrCols_HLSMoveStream_s_fu_299.ama_addmuladd_16ns_1ns_16s_16ns_16_4_1_U839", "Parent" : "61"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342", "Parent" : "0", "Child" : ["193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "206", "207", "208", "216", "219", "220"],
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
					{"ID" : "208", "SubInstance" : "grp_execute_fu_3951", "Port" : "stateArray_data_s", "Inst_start_state" : "113", "Inst_end_state" : "114"}]},
			{"Name" : "stateArray_rows_val1", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_cols_val2", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveStream", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "216", "SubInstance" : "grp_push_back_fu_3960", "Port" : "moveStream", "Inst_start_state" : "115", "Inst_end_state" : "116"}]},
			{"Name" : "moveList_count_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "arraySizeXC", "Type" : "None", "Direction" : "I"},
			{"Name" : "usableAtoms_data", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "204", "SubInstance" : "grp_resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1695_7_fu_3918", "Port" : "usableAtoms_data", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
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
					{"ID" : "204", "SubInstance" : "grp_resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1695_7_fu_3918", "Port" : "targetSites_data", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
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
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.move_U", "Parent" : "192"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.ref_tmp_i_0_U", "Parent" : "192"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.ref_tmp_i_1_U", "Parent" : "192"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.start_colSelection_U", "Parent" : "192"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.start_rowSelection_U", "Parent" : "192"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.elbow1_colSelection_U", "Parent" : "192"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.elbow1_rowSelection_U", "Parent" : "192"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.elbow2_colSelection_U", "Parent" : "192"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.elbow2_rowSelection_U", "Parent" : "192"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.end_colSelection_U", "Parent" : "192"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.end_rowSelection_U", "Parent" : "192"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1695_7_fu_3918", "Parent" : "192", "Child" : ["205"],
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
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1695_7_fu_3918.flow_control_loop_pipe_sequential_init_U", "Parent" : "204"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1716_8_fu_3933", "Parent" : "192",
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
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1723_9_fu_3942", "Parent" : "192",
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
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_execute_fu_3951", "Parent" : "192", "Child" : ["209", "211", "213", "214", "215"],
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
					{"ID" : "209", "SubInstance" : "grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296", "Port" : "move", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "211", "SubInstance" : "grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304", "Port" : "move", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
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
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_execute_fu_3951.grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296", "Parent" : "208", "Child" : ["210"],
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
	{"ID" : "210", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_execute_fu_3951.grp_execute_Pipeline_VITIS_LOOP_106_1_fu_296.flow_control_loop_pipe_sequential_init_U", "Parent" : "209"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_execute_fu_3951.grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304", "Parent" : "208", "Child" : ["212"],
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
	{"ID" : "212", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_execute_fu_3951.grp_execute_Pipeline_VITIS_LOOP_106_16_fu_304.flow_control_loop_pipe_sequential_init_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_execute_fu_3951.mul_8ns_8ns_16_1_1_U642", "Parent" : "208"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_execute_fu_3951.mac_muladd_10s_10s_10ns_10_4_1_U643", "Parent" : "208"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_execute_fu_3951.mac_muladd_10s_10s_10ns_10_4_1_U644", "Parent" : "208"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_push_back_fu_3960", "Parent" : "192", "Child" : ["217"],
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
					{"ID" : "217", "SubInstance" : "grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Port" : "moveStream", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "this_count_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "move", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "217", "SubInstance" : "grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Port" : "move", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_push_back_fu_3960.grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32", "Parent" : "216", "Child" : ["218"],
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
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.grp_push_back_fu_3960.grp_push_back_Pipeline_VITIS_LOOP_601_1_fu_32.flow_control_loop_pipe_sequential_init_U", "Parent" : "217"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.sparsemux_17_3_16_1_1_U909", "Parent" : "192"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resolveSortingDeficiencies_HLSMoveStream_s_fu_342.sparsemux_17_3_16_1_1_U910", "Parent" : "192"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "3", "Max" : "10006860"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "10006860"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stateArray_data_s { ap_memory {  { stateArray_data_s_address0 mem_address 1 10 }  { stateArray_data_s_ce0 mem_ce 1 1 }  { stateArray_data_s_q0 mem_dout 0 1 }  { stateArray_data_s_address1 MemPortADDR2 1 10 }  { stateArray_data_s_ce1 MemPortCE2 1 1 }  { stateArray_data_s_we1 MemPortWE2 1 1 }  { stateArray_data_s_d1 MemPortDIN2 1 1 } } }
	stateArray_rows_val4 { ap_none {  { stateArray_rows_val4 in_data 0 32 } } }
	stateArray_cols_val9 { ap_none {  { stateArray_cols_val9 in_data 0 32 } } }
	compZoneRowStart { ap_none {  { compZoneRowStart in_data 0 32 } } }
	compZoneRowEnd { ap_none {  { compZoneRowEnd in_data 0 32 } } }
	compZoneColStart { ap_none {  { compZoneColStart in_data 0 32 } } }
	compZoneColEnd { ap_none {  { compZoneColEnd in_data 0 32 } } }
	targetGeometry_data_s { ap_memory {  { targetGeometry_data_s_address0 mem_address 1 10 }  { targetGeometry_data_s_ce0 mem_ce 1 1 }  { targetGeometry_data_s_q0 mem_dout 0 1 } } }
	targetGeometry_cols_val10 { ap_none {  { targetGeometry_cols_val10 in_data 0 33 } } }
	moveStream { axis {  { moveStream_TDATA out_data 1 512 }  { moveStream_TVALID out_vld 1 1 }  { moveStream_TREADY out_acc 0 1 } } }
}
