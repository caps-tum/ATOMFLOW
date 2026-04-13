set moduleName sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_752_13
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
set C_modelName {sortRemainingRowsOrCols<HLSMoveStream>_Pipeline_VITIS_LOOP_752_13}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict unusableAtoms_data { MEM_WIDTH 32 MEM_SIZE 262144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict start_colSelection { MEM_WIDTH 16 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict elbow_colSelection { MEM_WIDTH 16 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ indexAC_idx int 16 regular  }
	{ indexAC_idx_1 int 17 regular  }
	{ zext_ln620_1 int 16 regular  }
	{ unusableAtoms_data int 32 regular {array 65536 { 1 3 } 1 1 }  }
	{ start_colSelection int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ elbow_colSelection int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ div373_i int 31 regular  }
	{ indicesHigherMiddle_out int 32 regular {pointer 1}  }
	{ indicesLowerOrEqualMiddle_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "indexAC_idx", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "indexAC_idx_1", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln620_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "unusableAtoms_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "start_colSelection", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "elbow_colSelection", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "div373_i", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "indicesHigherMiddle_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "indicesLowerOrEqualMiddle_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ indexAC_idx sc_in sc_lv 16 signal 0 } 
	{ indexAC_idx_1 sc_in sc_lv 17 signal 1 } 
	{ zext_ln620_1 sc_in sc_lv 16 signal 2 } 
	{ unusableAtoms_data_address0 sc_out sc_lv 16 signal 3 } 
	{ unusableAtoms_data_ce0 sc_out sc_logic 1 signal 3 } 
	{ unusableAtoms_data_q0 sc_in sc_lv 32 signal 3 } 
	{ start_colSelection_address0 sc_out sc_lv 4 signal 4 } 
	{ start_colSelection_ce0 sc_out sc_logic 1 signal 4 } 
	{ start_colSelection_we0 sc_out sc_logic 1 signal 4 } 
	{ start_colSelection_d0 sc_out sc_lv 16 signal 4 } 
	{ elbow_colSelection_address0 sc_out sc_lv 4 signal 5 } 
	{ elbow_colSelection_ce0 sc_out sc_logic 1 signal 5 } 
	{ elbow_colSelection_we0 sc_out sc_logic 1 signal 5 } 
	{ elbow_colSelection_d0 sc_out sc_lv 16 signal 5 } 
	{ div373_i sc_in sc_lv 31 signal 6 } 
	{ indicesHigherMiddle_out sc_out sc_lv 32 signal 7 } 
	{ indicesHigherMiddle_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ indicesLowerOrEqualMiddle_out sc_out sc_lv 32 signal 8 } 
	{ indicesLowerOrEqualMiddle_out_ap_vld sc_out sc_logic 1 outvld 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "indexAC_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "indexAC_idx", "role": "default" }} , 
 	{ "name": "indexAC_idx_1", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "indexAC_idx_1", "role": "default" }} , 
 	{ "name": "zext_ln620_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln620_1", "role": "default" }} , 
 	{ "name": "unusableAtoms_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableAtoms_data", "role": "address0" }} , 
 	{ "name": "unusableAtoms_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableAtoms_data", "role": "ce0" }} , 
 	{ "name": "unusableAtoms_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unusableAtoms_data", "role": "q0" }} , 
 	{ "name": "start_colSelection_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "start_colSelection", "role": "address0" }} , 
 	{ "name": "start_colSelection_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_colSelection", "role": "ce0" }} , 
 	{ "name": "start_colSelection_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_colSelection", "role": "we0" }} , 
 	{ "name": "start_colSelection_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "start_colSelection", "role": "d0" }} , 
 	{ "name": "elbow_colSelection_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "elbow_colSelection", "role": "address0" }} , 
 	{ "name": "elbow_colSelection_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "elbow_colSelection", "role": "ce0" }} , 
 	{ "name": "elbow_colSelection_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "elbow_colSelection", "role": "we0" }} , 
 	{ "name": "elbow_colSelection_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "elbow_colSelection", "role": "d0" }} , 
 	{ "name": "div373_i", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "div373_i", "role": "default" }} , 
 	{ "name": "indicesHigherMiddle_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "indicesHigherMiddle_out", "role": "default" }} , 
 	{ "name": "indicesHigherMiddle_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "indicesHigherMiddle_out", "role": "ap_vld" }} , 
 	{ "name": "indicesLowerOrEqualMiddle_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "indicesLowerOrEqualMiddle_out", "role": "default" }} , 
 	{ "name": "indicesLowerOrEqualMiddle_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "indicesLowerOrEqualMiddle_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_752_13 {
		indexAC_idx {Type I LastRead 0 FirstWrite -1}
		indexAC_idx_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln620_1 {Type I LastRead 0 FirstWrite -1}
		unusableAtoms_data {Type I LastRead 0 FirstWrite -1}
		start_colSelection {Type O LastRead -1 FirstWrite 1}
		elbow_colSelection {Type O LastRead -1 FirstWrite 1}
		div373_i {Type I LastRead 0 FirstWrite -1}
		indicesHigherMiddle_out {Type O LastRead -1 FirstWrite 0}
		indicesLowerOrEqualMiddle_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	indexAC_idx { ap_none {  { indexAC_idx in_data 0 16 } } }
	indexAC_idx_1 { ap_none {  { indexAC_idx_1 in_data 0 17 } } }
	zext_ln620_1 { ap_none {  { zext_ln620_1 in_data 0 16 } } }
	unusableAtoms_data { ap_memory {  { unusableAtoms_data_address0 mem_address 1 16 }  { unusableAtoms_data_ce0 mem_ce 1 1 }  { unusableAtoms_data_q0 mem_dout 0 32 } } }
	start_colSelection { ap_memory {  { start_colSelection_address0 mem_address 1 4 }  { start_colSelection_ce0 mem_ce 1 1 }  { start_colSelection_we0 mem_we 1 1 }  { start_colSelection_d0 mem_din 1 16 } } }
	elbow_colSelection { ap_memory {  { elbow_colSelection_address0 mem_address 1 4 }  { elbow_colSelection_ce0 mem_ce 1 1 }  { elbow_colSelection_we0 mem_we 1 1 }  { elbow_colSelection_d0 mem_din 1 16 } } }
	div373_i { ap_none {  { div373_i in_data 0 31 } } }
	indicesHigherMiddle_out { ap_vld {  { indicesHigherMiddle_out out_data 1 32 }  { indicesHigherMiddle_out_ap_vld out_vld 1 1 } } }
	indicesLowerOrEqualMiddle_out { ap_vld {  { indicesLowerOrEqualMiddle_out out_data 1 32 }  { indicesLowerOrEqualMiddle_out_ap_vld out_vld 1 1 } } }
}
