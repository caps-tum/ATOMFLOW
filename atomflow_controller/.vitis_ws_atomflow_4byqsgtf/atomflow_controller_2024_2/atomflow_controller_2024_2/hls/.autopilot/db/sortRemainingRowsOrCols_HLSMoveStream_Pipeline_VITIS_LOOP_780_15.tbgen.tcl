set moduleName sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_780_15
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
set C_modelName {sortRemainingRowsOrCols<HLSMoveStream>_Pipeline_VITIS_LOOP_780_15}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict end_colSelection { MEM_WIDTH 16 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ end_colSelectionCount_6_ph int 8 regular  }
	{ empty_103 int 32 regular  }
	{ empty int 16 regular  }
	{ end_colSelection int 16 regular {array 16 { 0 0 } 0 1 }  }
	{ indicesHigherMiddle_reload int 32 regular  }
	{ end_colSelectionCount_1_lcssa_i_ph_ce_out int 8 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "end_colSelectionCount_6_ph", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_103", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "end_colSelection", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "indicesHigherMiddle_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "end_colSelectionCount_1_lcssa_i_ph_ce_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ end_colSelectionCount_6_ph sc_in sc_lv 8 signal 0 } 
	{ empty_103 sc_in sc_lv 32 signal 1 } 
	{ empty sc_in sc_lv 16 signal 2 } 
	{ end_colSelection_address0 sc_out sc_lv 4 signal 3 } 
	{ end_colSelection_ce0 sc_out sc_logic 1 signal 3 } 
	{ end_colSelection_we0 sc_out sc_logic 1 signal 3 } 
	{ end_colSelection_d0 sc_out sc_lv 16 signal 3 } 
	{ end_colSelection_address1 sc_out sc_lv 4 signal 3 } 
	{ end_colSelection_ce1 sc_out sc_logic 1 signal 3 } 
	{ end_colSelection_we1 sc_out sc_logic 1 signal 3 } 
	{ end_colSelection_d1 sc_out sc_lv 16 signal 3 } 
	{ indicesHigherMiddle_reload sc_in sc_lv 32 signal 4 } 
	{ end_colSelectionCount_1_lcssa_i_ph_ce_out sc_out sc_lv 8 signal 5 } 
	{ end_colSelectionCount_1_lcssa_i_ph_ce_out_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "end_colSelectionCount_6_ph", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "end_colSelectionCount_6_ph", "role": "default" }} , 
 	{ "name": "empty_103", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_103", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "end_colSelection_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "end_colSelection", "role": "address0" }} , 
 	{ "name": "end_colSelection_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_colSelection", "role": "ce0" }} , 
 	{ "name": "end_colSelection_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_colSelection", "role": "we0" }} , 
 	{ "name": "end_colSelection_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "end_colSelection", "role": "d0" }} , 
 	{ "name": "end_colSelection_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "end_colSelection", "role": "address1" }} , 
 	{ "name": "end_colSelection_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_colSelection", "role": "ce1" }} , 
 	{ "name": "end_colSelection_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_colSelection", "role": "we1" }} , 
 	{ "name": "end_colSelection_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "end_colSelection", "role": "d1" }} , 
 	{ "name": "indicesHigherMiddle_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "indicesHigherMiddle_reload", "role": "default" }} , 
 	{ "name": "end_colSelectionCount_1_lcssa_i_ph_ce_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "end_colSelectionCount_1_lcssa_i_ph_ce_out", "role": "default" }} , 
 	{ "name": "end_colSelectionCount_1_lcssa_i_ph_ce_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "end_colSelectionCount_1_lcssa_i_ph_ce_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_780_15 {
		end_colSelectionCount_6_ph {Type I LastRead 0 FirstWrite -1}
		empty_103 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		end_colSelection {Type O LastRead -1 FirstWrite 1}
		indicesHigherMiddle_reload {Type I LastRead 0 FirstWrite -1}
		end_colSelectionCount_1_lcssa_i_ph_ce_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	end_colSelectionCount_6_ph { ap_none {  { end_colSelectionCount_6_ph in_data 0 8 } } }
	empty_103 { ap_none {  { empty_103 in_data 0 32 } } }
	empty { ap_none {  { empty in_data 0 16 } } }
	end_colSelection { ap_memory {  { end_colSelection_address0 mem_address 1 4 }  { end_colSelection_ce0 mem_ce 1 1 }  { end_colSelection_we0 mem_we 1 1 }  { end_colSelection_d0 mem_din 1 16 }  { end_colSelection_address1 MemPortADDR2 1 4 }  { end_colSelection_ce1 MemPortCE2 1 1 }  { end_colSelection_we1 MemPortWE2 1 1 }  { end_colSelection_d1 MemPortDIN2 1 16 } } }
	indicesHigherMiddle_reload { ap_none {  { indicesHigherMiddle_reload in_data 0 32 } } }
	end_colSelectionCount_1_lcssa_i_ph_ce_out { ap_vld {  { end_colSelectionCount_1_lcssa_i_ph_ce_out out_data 1 8 }  { end_colSelectionCount_1_lcssa_i_ph_ce_out_ap_vld out_vld 1 1 } } }
}
