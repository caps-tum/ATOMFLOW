set moduleName sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_533_2
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
set C_modelName {sortRemainingRowsOrCols<HLSMoveStream>_Pipeline_VITIS_LOOP_533_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict parkingSpotsPerSuitableIndexXC_data { MEM_WIDTH 64 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ parkingSpotsPerSuitableIndexXC_count_reload int 16 regular  }
	{ zext_ln533 int 32 regular  }
	{ compZoneColEnd_cast46 int 32 regular  }
	{ parkingSpotsPerSuitableIndexXC_data int 64 regular {array 256 { 0 3 } 0 1 }  }
	{ parkingSpotsPerSuitableIndexXC_count_6_out int 16 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "parkingSpotsPerSuitableIndexXC_count_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln533", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "compZoneColEnd_cast46", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "parkingSpotsPerSuitableIndexXC_data", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "parkingSpotsPerSuitableIndexXC_count_6_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ parkingSpotsPerSuitableIndexXC_count_reload sc_in sc_lv 16 signal 0 } 
	{ zext_ln533 sc_in sc_lv 32 signal 1 } 
	{ compZoneColEnd_cast46 sc_in sc_lv 32 signal 2 } 
	{ parkingSpotsPerSuitableIndexXC_data_address0 sc_out sc_lv 8 signal 3 } 
	{ parkingSpotsPerSuitableIndexXC_data_ce0 sc_out sc_logic 1 signal 3 } 
	{ parkingSpotsPerSuitableIndexXC_data_we0 sc_out sc_logic 1 signal 3 } 
	{ parkingSpotsPerSuitableIndexXC_data_d0 sc_out sc_lv 64 signal 3 } 
	{ parkingSpotsPerSuitableIndexXC_count_6_out sc_out sc_lv 16 signal 4 } 
	{ parkingSpotsPerSuitableIndexXC_count_6_out_ap_vld sc_out sc_logic 1 outvld 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "parkingSpotsPerSuitableIndexXC_count_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "parkingSpotsPerSuitableIndexXC_count_reload", "role": "default" }} , 
 	{ "name": "zext_ln533", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln533", "role": "default" }} , 
 	{ "name": "compZoneColEnd_cast46", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compZoneColEnd_cast46", "role": "default" }} , 
 	{ "name": "parkingSpotsPerSuitableIndexXC_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "parkingSpotsPerSuitableIndexXC_data", "role": "address0" }} , 
 	{ "name": "parkingSpotsPerSuitableIndexXC_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parkingSpotsPerSuitableIndexXC_data", "role": "ce0" }} , 
 	{ "name": "parkingSpotsPerSuitableIndexXC_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parkingSpotsPerSuitableIndexXC_data", "role": "we0" }} , 
 	{ "name": "parkingSpotsPerSuitableIndexXC_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "parkingSpotsPerSuitableIndexXC_data", "role": "d0" }} , 
 	{ "name": "parkingSpotsPerSuitableIndexXC_count_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "parkingSpotsPerSuitableIndexXC_count_6_out", "role": "default" }} , 
 	{ "name": "parkingSpotsPerSuitableIndexXC_count_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "parkingSpotsPerSuitableIndexXC_count_6_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_533_2 {
		parkingSpotsPerSuitableIndexXC_count_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln533 {Type I LastRead 0 FirstWrite -1}
		compZoneColEnd_cast46 {Type I LastRead 0 FirstWrite -1}
		parkingSpotsPerSuitableIndexXC_data {Type O LastRead -1 FirstWrite 1}
		parkingSpotsPerSuitableIndexXC_count_6_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	parkingSpotsPerSuitableIndexXC_count_reload { ap_none {  { parkingSpotsPerSuitableIndexXC_count_reload in_data 0 16 } } }
	zext_ln533 { ap_none {  { zext_ln533 in_data 0 32 } } }
	compZoneColEnd_cast46 { ap_none {  { compZoneColEnd_cast46 in_data 0 32 } } }
	parkingSpotsPerSuitableIndexXC_data { ap_memory {  { parkingSpotsPerSuitableIndexXC_data_address0 mem_address 1 8 }  { parkingSpotsPerSuitableIndexXC_data_ce0 mem_ce 1 1 }  { parkingSpotsPerSuitableIndexXC_data_we0 mem_we 1 1 }  { parkingSpotsPerSuitableIndexXC_data_d0 mem_din 1 64 } } }
	parkingSpotsPerSuitableIndexXC_count_6_out { ap_vld {  { parkingSpotsPerSuitableIndexXC_count_6_out out_data 1 16 }  { parkingSpotsPerSuitableIndexXC_count_6_out_ap_vld out_vld 1 1 } } }
}
