set moduleName resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1716_8
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
set C_modelName {resolveSortingDeficiencies<HLSMoveStream>_Pipeline_VITIS_LOOP_1716_8}
set C_modelType { int 1 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict start_colSelection { MEM_WIDTH 16 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict elbow1_colSelection { MEM_WIDTH 16 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ end_colSelectionCount int 5 regular  }
	{ start_colSelection int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ elbow1_colSelection int 16 regular {array 16 { 0 0 } 0 1 }  }
	{ i221_0194_0_phi_out int 5 regular {pointer 1}  }
	{ i_116_out int 4 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "end_colSelectionCount", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "start_colSelection", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "elbow1_colSelection", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "i221_0194_0_phi_out", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "i_116_out", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ end_colSelectionCount sc_in sc_lv 5 signal 0 } 
	{ start_colSelection_address0 sc_out sc_lv 4 signal 1 } 
	{ start_colSelection_ce0 sc_out sc_logic 1 signal 1 } 
	{ start_colSelection_q0 sc_in sc_lv 16 signal 1 } 
	{ start_colSelection_address1 sc_out sc_lv 4 signal 1 } 
	{ start_colSelection_ce1 sc_out sc_logic 1 signal 1 } 
	{ start_colSelection_q1 sc_in sc_lv 16 signal 1 } 
	{ elbow1_colSelection_address0 sc_out sc_lv 4 signal 2 } 
	{ elbow1_colSelection_ce0 sc_out sc_logic 1 signal 2 } 
	{ elbow1_colSelection_we0 sc_out sc_logic 1 signal 2 } 
	{ elbow1_colSelection_d0 sc_out sc_lv 16 signal 2 } 
	{ elbow1_colSelection_address1 sc_out sc_lv 4 signal 2 } 
	{ elbow1_colSelection_ce1 sc_out sc_logic 1 signal 2 } 
	{ elbow1_colSelection_we1 sc_out sc_logic 1 signal 2 } 
	{ elbow1_colSelection_d1 sc_out sc_lv 16 signal 2 } 
	{ i221_0194_0_phi_out sc_out sc_lv 5 signal 3 } 
	{ i221_0194_0_phi_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ i_116_out sc_out sc_lv 4 signal 4 } 
	{ i_116_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "end_colSelectionCount", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "end_colSelectionCount", "role": "default" }} , 
 	{ "name": "start_colSelection_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "start_colSelection", "role": "address0" }} , 
 	{ "name": "start_colSelection_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_colSelection", "role": "ce0" }} , 
 	{ "name": "start_colSelection_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "start_colSelection", "role": "q0" }} , 
 	{ "name": "start_colSelection_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "start_colSelection", "role": "address1" }} , 
 	{ "name": "start_colSelection_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_colSelection", "role": "ce1" }} , 
 	{ "name": "start_colSelection_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "start_colSelection", "role": "q1" }} , 
 	{ "name": "elbow1_colSelection_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "elbow1_colSelection", "role": "address0" }} , 
 	{ "name": "elbow1_colSelection_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "elbow1_colSelection", "role": "ce0" }} , 
 	{ "name": "elbow1_colSelection_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "elbow1_colSelection", "role": "we0" }} , 
 	{ "name": "elbow1_colSelection_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "elbow1_colSelection", "role": "d0" }} , 
 	{ "name": "elbow1_colSelection_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "elbow1_colSelection", "role": "address1" }} , 
 	{ "name": "elbow1_colSelection_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "elbow1_colSelection", "role": "ce1" }} , 
 	{ "name": "elbow1_colSelection_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "elbow1_colSelection", "role": "we1" }} , 
 	{ "name": "elbow1_colSelection_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "elbow1_colSelection", "role": "d1" }} , 
 	{ "name": "i221_0194_0_phi_out", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "i221_0194_0_phi_out", "role": "default" }} , 
 	{ "name": "i221_0194_0_phi_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "i221_0194_0_phi_out", "role": "ap_vld" }} , 
 	{ "name": "i_116_out", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "i_116_out", "role": "default" }} , 
 	{ "name": "i_116_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "i_116_out", "role": "ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state4", "ap_ST_fsm_state5"]}}]}]}


set ArgLastReadFirstWriteLatency {
	resolveSortingDeficiencies_HLSMoveStream_Pipeline_VITIS_LOOP_1716_8 {
		end_colSelectionCount {Type I LastRead 0 FirstWrite -1}
		start_colSelection {Type I LastRead 2 FirstWrite -1}
		elbow1_colSelection {Type O LastRead -1 FirstWrite 2}
		i221_0194_0_phi_out {Type O LastRead -1 FirstWrite 2}
		i_116_out {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "12"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "12"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	end_colSelectionCount { ap_none {  { end_colSelectionCount in_data 0 5 } } }
	start_colSelection { ap_memory {  { start_colSelection_address0 mem_address 1 4 }  { start_colSelection_ce0 mem_ce 1 1 }  { start_colSelection_q0 mem_dout 0 16 }  { start_colSelection_address1 MemPortADDR2 1 4 }  { start_colSelection_ce1 MemPortCE2 1 1 }  { start_colSelection_q1 MemPortDOUT2 0 16 } } }
	elbow1_colSelection { ap_memory {  { elbow1_colSelection_address0 mem_address 1 4 }  { elbow1_colSelection_ce0 mem_ce 1 1 }  { elbow1_colSelection_we0 mem_we 1 1 }  { elbow1_colSelection_d0 mem_din 1 16 }  { elbow1_colSelection_address1 MemPortADDR2 1 4 }  { elbow1_colSelection_ce1 MemPortCE2 1 1 }  { elbow1_colSelection_we1 MemPortWE2 1 1 }  { elbow1_colSelection_d1 MemPortDIN2 1 16 } } }
	i221_0194_0_phi_out { ap_vld {  { i221_0194_0_phi_out out_data 1 5 }  { i221_0194_0_phi_out_ap_vld out_vld 1 1 } } }
	i_116_out { ap_vld {  { i_116_out out_data 1 4 }  { i_116_out_ap_vld out_vld 1 1 } } }
}
