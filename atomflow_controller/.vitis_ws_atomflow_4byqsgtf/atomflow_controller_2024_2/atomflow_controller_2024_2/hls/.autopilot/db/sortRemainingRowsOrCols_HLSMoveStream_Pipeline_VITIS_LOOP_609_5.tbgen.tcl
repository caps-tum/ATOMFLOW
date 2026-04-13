set moduleName sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_609_5
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
set C_modelName {sortRemainingRowsOrCols<HLSMoveStream>_Pipeline_VITIS_LOOP_609_5}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict unusableInfo_usableAtoms_data { MEM_WIDTH 32 MEM_SIZE 262144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableAtoms_data { MEM_WIDTH 32 MEM_SIZE 262144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ unusableWriteIdx int 16 regular  }
	{ currentSize int 16 regular  }
	{ backIdx int 16 regular  }
	{ zext_ln620_1 int 16 regular  }
	{ unusableInfo_usableAtoms_data int 32 regular {array 65536 { 1 1 } 1 1 }  }
	{ conv7 int 32 regular  }
	{ unusableAtoms_data int 32 regular {array 65536 { 3 0 } 0 1 }  }
	{ threshold int 16 regular  }
	{ unusableWriteIdx_1_out int 16 regular {pointer 1}  }
	{ frontIdx_out int 16 regular {pointer 1}  }
	{ backIdx_1_out int 16 regular {pointer 1}  }
	{ discardCount_01099_i_ce_out int 9 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "unusableWriteIdx", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "currentSize", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "backIdx", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln620_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "unusableInfo_usableAtoms_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unusableAtoms_data", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "threshold", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "unusableWriteIdx_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "frontIdx_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "backIdx_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "discardCount_01099_i_ce_out", "interface" : "wire", "bitwidth" : 9, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ unusableWriteIdx sc_in sc_lv 16 signal 0 } 
	{ currentSize sc_in sc_lv 16 signal 1 } 
	{ backIdx sc_in sc_lv 16 signal 2 } 
	{ zext_ln620_1 sc_in sc_lv 16 signal 3 } 
	{ unusableInfo_usableAtoms_data_address0 sc_out sc_lv 16 signal 4 } 
	{ unusableInfo_usableAtoms_data_ce0 sc_out sc_logic 1 signal 4 } 
	{ unusableInfo_usableAtoms_data_q0 sc_in sc_lv 32 signal 4 } 
	{ unusableInfo_usableAtoms_data_address1 sc_out sc_lv 16 signal 4 } 
	{ unusableInfo_usableAtoms_data_ce1 sc_out sc_logic 1 signal 4 } 
	{ unusableInfo_usableAtoms_data_q1 sc_in sc_lv 32 signal 4 } 
	{ conv7 sc_in sc_lv 32 signal 5 } 
	{ unusableAtoms_data_address1 sc_out sc_lv 16 signal 6 } 
	{ unusableAtoms_data_ce1 sc_out sc_logic 1 signal 6 } 
	{ unusableAtoms_data_we1 sc_out sc_logic 1 signal 6 } 
	{ unusableAtoms_data_d1 sc_out sc_lv 32 signal 6 } 
	{ threshold sc_in sc_lv 16 signal 7 } 
	{ unusableWriteIdx_1_out sc_out sc_lv 16 signal 8 } 
	{ unusableWriteIdx_1_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ frontIdx_out sc_out sc_lv 16 signal 9 } 
	{ frontIdx_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ backIdx_1_out sc_out sc_lv 16 signal 10 } 
	{ backIdx_1_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ discardCount_01099_i_ce_out sc_out sc_lv 9 signal 11 } 
	{ discardCount_01099_i_ce_out_ap_vld sc_out sc_logic 1 outvld 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "unusableWriteIdx", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableWriteIdx", "role": "default" }} , 
 	{ "name": "currentSize", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "currentSize", "role": "default" }} , 
 	{ "name": "backIdx", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "backIdx", "role": "default" }} , 
 	{ "name": "zext_ln620_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln620_1", "role": "default" }} , 
 	{ "name": "unusableInfo_usableAtoms_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_data", "role": "address0" }} , 
 	{ "name": "unusableInfo_usableAtoms_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_data", "role": "ce0" }} , 
 	{ "name": "unusableInfo_usableAtoms_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_data", "role": "q0" }} , 
 	{ "name": "unusableInfo_usableAtoms_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_data", "role": "address1" }} , 
 	{ "name": "unusableInfo_usableAtoms_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_data", "role": "ce1" }} , 
 	{ "name": "unusableInfo_usableAtoms_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_data", "role": "q1" }} , 
 	{ "name": "conv7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv7", "role": "default" }} , 
 	{ "name": "unusableAtoms_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableAtoms_data", "role": "address1" }} , 
 	{ "name": "unusableAtoms_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableAtoms_data", "role": "ce1" }} , 
 	{ "name": "unusableAtoms_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableAtoms_data", "role": "we1" }} , 
 	{ "name": "unusableAtoms_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unusableAtoms_data", "role": "d1" }} , 
 	{ "name": "threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "threshold", "role": "default" }} , 
 	{ "name": "unusableWriteIdx_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableWriteIdx_1_out", "role": "default" }} , 
 	{ "name": "unusableWriteIdx_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "unusableWriteIdx_1_out", "role": "ap_vld" }} , 
 	{ "name": "frontIdx_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "frontIdx_out", "role": "default" }} , 
 	{ "name": "frontIdx_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "frontIdx_out", "role": "ap_vld" }} , 
 	{ "name": "backIdx_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "backIdx_1_out", "role": "default" }} , 
 	{ "name": "backIdx_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "backIdx_1_out", "role": "ap_vld" }} , 
 	{ "name": "discardCount_01099_i_ce_out", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "discardCount_01099_i_ce_out", "role": "default" }} , 
 	{ "name": "discardCount_01099_i_ce_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "discardCount_01099_i_ce_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		discardCount_01099_i_ce_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	unusableWriteIdx { ap_none {  { unusableWriteIdx in_data 0 16 } } }
	currentSize { ap_none {  { currentSize in_data 0 16 } } }
	backIdx { ap_none {  { backIdx in_data 0 16 } } }
	zext_ln620_1 { ap_none {  { zext_ln620_1 in_data 0 16 } } }
	unusableInfo_usableAtoms_data { ap_memory {  { unusableInfo_usableAtoms_data_address0 mem_address 1 16 }  { unusableInfo_usableAtoms_data_ce0 mem_ce 1 1 }  { unusableInfo_usableAtoms_data_q0 mem_dout 0 32 }  { unusableInfo_usableAtoms_data_address1 MemPortADDR2 1 16 }  { unusableInfo_usableAtoms_data_ce1 MemPortCE2 1 1 }  { unusableInfo_usableAtoms_data_q1 MemPortDOUT2 0 32 } } }
	conv7 { ap_none {  { conv7 in_data 0 32 } } }
	unusableAtoms_data { ap_memory {  { unusableAtoms_data_address1 MemPortADDR2 1 16 }  { unusableAtoms_data_ce1 MemPortCE2 1 1 }  { unusableAtoms_data_we1 MemPortWE2 1 1 }  { unusableAtoms_data_d1 MemPortDIN2 1 32 } } }
	threshold { ap_none {  { threshold in_data 0 16 } } }
	unusableWriteIdx_1_out { ap_vld {  { unusableWriteIdx_1_out out_data 1 16 }  { unusableWriteIdx_1_out_ap_vld out_vld 1 1 } } }
	frontIdx_out { ap_vld {  { frontIdx_out out_data 1 16 }  { frontIdx_out_ap_vld out_vld 1 1 } } }
	backIdx_1_out { ap_vld {  { backIdx_1_out out_data 1 16 }  { backIdx_1_out_ap_vld out_vld 1 1 } } }
	discardCount_01099_i_ce_out { ap_vld {  { discardCount_01099_i_ce_out out_data 1 9 }  { discardCount_01099_i_ce_out_ap_vld out_vld 1 1 } } }
}
