set moduleName sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1092_34
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
set C_modelName {sortRemainingRowsOrCols<HLSMoveStream>_Pipeline_VITIS_LOOP_1092_34}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict unusableInfo_usableAtoms_data { MEM_WIDTH 32 MEM_SIZE 262144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict usableBackBuf { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ prefetchCountUsable int 5 regular  }
	{ sub1013_i int 16 regular  }
	{ zext_ln620_1 int 16 regular  }
	{ unusableInfo_usableAtoms_data int 32 regular {array 65536 { 1 3 } 1 1 }  }
	{ usableBackBuf int 32 regular {array 16 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "prefetchCountUsable", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "sub1013_i", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln620_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "unusableInfo_usableAtoms_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "usableBackBuf", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prefetchCountUsable sc_in sc_lv 5 signal 0 } 
	{ sub1013_i sc_in sc_lv 16 signal 1 } 
	{ zext_ln620_1 sc_in sc_lv 16 signal 2 } 
	{ unusableInfo_usableAtoms_data_address0 sc_out sc_lv 16 signal 3 } 
	{ unusableInfo_usableAtoms_data_ce0 sc_out sc_logic 1 signal 3 } 
	{ unusableInfo_usableAtoms_data_q0 sc_in sc_lv 32 signal 3 } 
	{ usableBackBuf_address0 sc_out sc_lv 4 signal 4 } 
	{ usableBackBuf_ce0 sc_out sc_logic 1 signal 4 } 
	{ usableBackBuf_we0 sc_out sc_logic 1 signal 4 } 
	{ usableBackBuf_d0 sc_out sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prefetchCountUsable", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "prefetchCountUsable", "role": "default" }} , 
 	{ "name": "sub1013_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sub1013_i", "role": "default" }} , 
 	{ "name": "zext_ln620_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln620_1", "role": "default" }} , 
 	{ "name": "unusableInfo_usableAtoms_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_data", "role": "address0" }} , 
 	{ "name": "unusableInfo_usableAtoms_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_data", "role": "ce0" }} , 
 	{ "name": "unusableInfo_usableAtoms_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unusableInfo_usableAtoms_data", "role": "q0" }} , 
 	{ "name": "usableBackBuf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "usableBackBuf", "role": "address0" }} , 
 	{ "name": "usableBackBuf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableBackBuf", "role": "ce0" }} , 
 	{ "name": "usableBackBuf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableBackBuf", "role": "we0" }} , 
 	{ "name": "usableBackBuf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "usableBackBuf", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1092_34 {
		prefetchCountUsable {Type I LastRead 0 FirstWrite -1}
		sub1013_i {Type I LastRead 0 FirstWrite -1}
		zext_ln620_1 {Type I LastRead 0 FirstWrite -1}
		unusableInfo_usableAtoms_data {Type I LastRead 0 FirstWrite -1}
		usableBackBuf {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	prefetchCountUsable { ap_none {  { prefetchCountUsable in_data 0 5 } } }
	sub1013_i { ap_none {  { sub1013_i in_data 0 16 } } }
	zext_ln620_1 { ap_none {  { zext_ln620_1 in_data 0 16 } } }
	unusableInfo_usableAtoms_data { ap_memory {  { unusableInfo_usableAtoms_data_address0 mem_address 1 16 }  { unusableInfo_usableAtoms_data_ce0 mem_ce 1 1 }  { unusableInfo_usableAtoms_data_q0 mem_dout 0 32 } } }
	usableBackBuf { ap_memory {  { usableBackBuf_address0 mem_address 1 4 }  { usableBackBuf_ce0 mem_ce 1 1 }  { usableBackBuf_we0 mem_we 1 1 }  { usableBackBuf_d0 mem_din 1 32 } } }
}
