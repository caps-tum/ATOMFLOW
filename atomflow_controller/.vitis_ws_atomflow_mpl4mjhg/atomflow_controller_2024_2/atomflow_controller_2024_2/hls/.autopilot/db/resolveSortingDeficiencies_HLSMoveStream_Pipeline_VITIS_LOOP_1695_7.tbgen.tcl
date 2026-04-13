set moduleName resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1695_7
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
set C_modelName {resolveSortingDeficiencies<HLSMoveStream>_Pipeline_VITIS_LOOP_1695_7}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict usableAtoms_data { MEM_WIDTH 32 MEM_SIZE 262144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict start_colSelection { MEM_WIDTH 16 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict targetSites_data { MEM_WIDTH 8 MEM_SIZE 65536 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict end_colSelection { MEM_WIDTH 8 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ end_colSelectionCount int 5 regular  }
	{ sub175 int 16 regular  }
	{ empty int 16 regular  }
	{ usableAtoms_data int 32 regular {array 65536 { 1 3 } 1 1 }  }
	{ start_colSelection int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ sub186 int 16 regular  }
	{ zext_ln1706_1 int 16 regular  }
	{ targetSites_data int 8 regular {array 65536 { 1 3 } 1 1 }  }
	{ end_colSelection int 8 regular {array 16 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "end_colSelectionCount", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "sub175", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "usableAtoms_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "start_colSelection", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sub186", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1706_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "targetSites_data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "end_colSelection", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ end_colSelectionCount sc_in sc_lv 5 signal 0 } 
	{ sub175 sc_in sc_lv 16 signal 1 } 
	{ empty sc_in sc_lv 16 signal 2 } 
	{ usableAtoms_data_address0 sc_out sc_lv 16 signal 3 } 
	{ usableAtoms_data_ce0 sc_out sc_logic 1 signal 3 } 
	{ usableAtoms_data_q0 sc_in sc_lv 32 signal 3 } 
	{ start_colSelection_address0 sc_out sc_lv 4 signal 4 } 
	{ start_colSelection_ce0 sc_out sc_logic 1 signal 4 } 
	{ start_colSelection_we0 sc_out sc_logic 1 signal 4 } 
	{ start_colSelection_d0 sc_out sc_lv 16 signal 4 } 
	{ sub186 sc_in sc_lv 16 signal 5 } 
	{ zext_ln1706_1 sc_in sc_lv 16 signal 6 } 
	{ targetSites_data_address0 sc_out sc_lv 16 signal 7 } 
	{ targetSites_data_ce0 sc_out sc_logic 1 signal 7 } 
	{ targetSites_data_q0 sc_in sc_lv 8 signal 7 } 
	{ end_colSelection_address0 sc_out sc_lv 4 signal 8 } 
	{ end_colSelection_ce0 sc_out sc_logic 1 signal 8 } 
	{ end_colSelection_we0 sc_out sc_logic 1 signal 8 } 
	{ end_colSelection_d0 sc_out sc_lv 8 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "end_colSelectionCount", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "end_colSelectionCount", "role": "default" }} , 
 	{ "name": "sub175", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sub175", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "usableAtoms_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "usableAtoms_data", "role": "address0" }} , 
 	{ "name": "usableAtoms_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableAtoms_data", "role": "ce0" }} , 
 	{ "name": "usableAtoms_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "usableAtoms_data", "role": "q0" }} , 
 	{ "name": "start_colSelection_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "start_colSelection", "role": "address0" }} , 
 	{ "name": "start_colSelection_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_colSelection", "role": "ce0" }} , 
 	{ "name": "start_colSelection_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_colSelection", "role": "we0" }} , 
 	{ "name": "start_colSelection_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "start_colSelection", "role": "d0" }} , 
 	{ "name": "sub186", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sub186", "role": "default" }} , 
 	{ "name": "zext_ln1706_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln1706_1", "role": "default" }} , 
 	{ "name": "targetSites_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "targetSites_data", "role": "address0" }} , 
 	{ "name": "targetSites_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetSites_data", "role": "ce0" }} , 
 	{ "name": "targetSites_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "targetSites_data", "role": "q0" }} , 
 	{ "name": "end_colSelection_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "end_colSelection", "role": "address0" }} , 
 	{ "name": "end_colSelection_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_colSelection", "role": "ce0" }} , 
 	{ "name": "end_colSelection_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_colSelection", "role": "we0" }} , 
 	{ "name": "end_colSelection_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "end_colSelection", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1695_7 {
		end_colSelectionCount {Type I LastRead 0 FirstWrite -1}
		sub175 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		usableAtoms_data {Type I LastRead 0 FirstWrite -1}
		start_colSelection {Type O LastRead -1 FirstWrite 1}
		sub186 {Type I LastRead 0 FirstWrite -1}
		zext_ln1706_1 {Type I LastRead 0 FirstWrite -1}
		targetSites_data {Type I LastRead 0 FirstWrite -1}
		end_colSelection {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	end_colSelectionCount { ap_none {  { end_colSelectionCount in_data 0 5 } } }
	sub175 { ap_none {  { sub175 in_data 0 16 } } }
	empty { ap_none {  { empty in_data 0 16 } } }
	usableAtoms_data { ap_memory {  { usableAtoms_data_address0 mem_address 1 16 }  { usableAtoms_data_ce0 mem_ce 1 1 }  { usableAtoms_data_q0 mem_dout 0 32 } } }
	start_colSelection { ap_memory {  { start_colSelection_address0 mem_address 1 4 }  { start_colSelection_ce0 mem_ce 1 1 }  { start_colSelection_we0 mem_we 1 1 }  { start_colSelection_d0 mem_din 1 16 } } }
	sub186 { ap_none {  { sub186 in_data 0 16 } } }
	zext_ln1706_1 { ap_none {  { zext_ln1706_1 in_data 0 16 } } }
	targetSites_data { ap_memory {  { targetSites_data_address0 mem_address 1 16 }  { targetSites_data_ce0 mem_ce 1 1 }  { targetSites_data_q0 mem_dout 0 8 } } }
	end_colSelection { ap_memory {  { end_colSelection_address0 mem_address 1 4 }  { end_colSelection_ce0 mem_ce 1 1 }  { end_colSelection_we0 mem_we 1 1 }  { end_colSelection_d0 mem_din 1 8 } } }
}
