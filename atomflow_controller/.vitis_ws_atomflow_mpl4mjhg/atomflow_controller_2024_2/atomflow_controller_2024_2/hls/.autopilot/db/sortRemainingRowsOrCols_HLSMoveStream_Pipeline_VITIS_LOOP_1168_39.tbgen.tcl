set moduleName sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1168_39
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
set C_modelName {sortRemainingRowsOrCols<HLSMoveStream>_Pipeline_VITIS_LOOP_1168_39}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict unusableInfo_usableAtoms_data { MEM_WIDTH 32 MEM_SIZE 262144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict tempUsableH { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ sext_ln1168 int 17 regular  }
	{ zext_ln620_1 int 16 regular  }
	{ unusableInfo_usableAtoms_data int 32 regular {array 65536 { 3 0 } 0 1 }  }
	{ tempUsableH int 32 regular {array 256 { 1 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln1168", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln620_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "unusableInfo_usableAtoms_data", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tempUsableH", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln1168 sc_in sc_lv 17 signal 0 } 
	{ zext_ln620_1 sc_in sc_lv 16 signal 1 } 
	{ unusableInfo_usableAtoms_data_address1 sc_out sc_lv 16 signal 2 } 
	{ unusableInfo_usableAtoms_data_ce1 sc_out sc_logic 1 signal 2 } 
	{ unusableInfo_usableAtoms_data_we1 sc_out sc_logic 1 signal 2 } 
	{ unusableInfo_usableAtoms_data_d1 sc_out sc_lv 32 signal 2 } 
	{ tempUsableH_address0 sc_out sc_lv 8 signal 3 } 
	{ tempUsableH_ce0 sc_out sc_logic 1 signal 3 } 
	{ tempUsableH_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln1168", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "sext_ln1168", "role": "default" }} , 
 	{ "name": "zext_ln620_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln620_1", "role": "default" }} , 
 	{ "name": "unusableInfo_usableAtoms_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_data", "role": "address1" }} , 
 	{ "name": "unusableInfo_usableAtoms_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_data", "role": "ce1" }} , 
 	{ "name": "unusableInfo_usableAtoms_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_data", "role": "we1" }} , 
 	{ "name": "unusableInfo_usableAtoms_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_data", "role": "d1" }} , 
 	{ "name": "tempUsableH_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tempUsableH", "role": "address0" }} , 
 	{ "name": "tempUsableH_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tempUsableH", "role": "ce0" }} , 
 	{ "name": "tempUsableH_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tempUsableH", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1168_39 {
		sext_ln1168 {Type I LastRead 0 FirstWrite -1}
		zext_ln620_1 {Type I LastRead 0 FirstWrite -1}
		unusableInfo_usableAtoms_data {Type O LastRead -1 FirstWrite 1}
		tempUsableH {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln1168 { ap_none {  { sext_ln1168 in_data 0 17 } } }
	zext_ln620_1 { ap_none {  { zext_ln620_1 in_data 0 16 } } }
	unusableInfo_usableAtoms_data { ap_memory {  { unusableInfo_usableAtoms_data_address1 MemPortADDR2 1 16 }  { unusableInfo_usableAtoms_data_ce1 MemPortCE2 1 1 }  { unusableInfo_usableAtoms_data_we1 MemPortWE2 1 1 }  { unusableInfo_usableAtoms_data_d1 MemPortDIN2 1 32 } } }
	tempUsableH { ap_memory {  { tempUsableH_address0 mem_address 1 8 }  { tempUsableH_ce0 mem_ce 1 1 }  { tempUsableH_q0 mem_dout 0 32 } } }
}
