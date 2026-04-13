set moduleName sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_549_3
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
set C_modelName {sortRemainingRowsOrCols<HLSMoveStream>_Pipeline_VITIS_LOOP_549_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict unusableInfo_targetSites_count_0 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_targetSites_count_1 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_targetSites_count_2 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_targetSites_count_3 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_targetSites_count_4 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_targetSites_count_5 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_targetSites_count_6 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict unusableInfo_targetSites_count_7 { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ conv6 int 32 regular  }
	{ unusableInfo_targetSites_count_0 int 16 regular {array 32 { 1 3 } 1 1 }  }
	{ unusableInfo_targetSites_count_1 int 16 regular {array 32 { 1 3 } 1 1 }  }
	{ unusableInfo_targetSites_count_2 int 16 regular {array 32 { 1 3 } 1 1 }  }
	{ unusableInfo_targetSites_count_3 int 16 regular {array 32 { 1 3 } 1 1 }  }
	{ unusableInfo_targetSites_count_4 int 16 regular {array 32 { 1 3 } 1 1 }  }
	{ unusableInfo_targetSites_count_5 int 16 regular {array 32 { 1 3 } 1 1 }  }
	{ unusableInfo_targetSites_count_6 int 16 regular {array 32 { 1 3 } 1 1 }  }
	{ unusableInfo_targetSites_count_7 int 16 regular {array 32 { 1 3 } 1 1 }  }
	{ totalRequiredAtoms_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "conv6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unusableInfo_targetSites_count_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "unusableInfo_targetSites_count_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "unusableInfo_targetSites_count_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "unusableInfo_targetSites_count_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "unusableInfo_targetSites_count_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "unusableInfo_targetSites_count_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "unusableInfo_targetSites_count_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "unusableInfo_targetSites_count_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "totalRequiredAtoms_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ conv6 sc_in sc_lv 32 signal 0 } 
	{ unusableInfo_targetSites_count_0_address0 sc_out sc_lv 5 signal 1 } 
	{ unusableInfo_targetSites_count_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ unusableInfo_targetSites_count_0_q0 sc_in sc_lv 16 signal 1 } 
	{ unusableInfo_targetSites_count_1_address0 sc_out sc_lv 5 signal 2 } 
	{ unusableInfo_targetSites_count_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ unusableInfo_targetSites_count_1_q0 sc_in sc_lv 16 signal 2 } 
	{ unusableInfo_targetSites_count_2_address0 sc_out sc_lv 5 signal 3 } 
	{ unusableInfo_targetSites_count_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ unusableInfo_targetSites_count_2_q0 sc_in sc_lv 16 signal 3 } 
	{ unusableInfo_targetSites_count_3_address0 sc_out sc_lv 5 signal 4 } 
	{ unusableInfo_targetSites_count_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ unusableInfo_targetSites_count_3_q0 sc_in sc_lv 16 signal 4 } 
	{ unusableInfo_targetSites_count_4_address0 sc_out sc_lv 5 signal 5 } 
	{ unusableInfo_targetSites_count_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ unusableInfo_targetSites_count_4_q0 sc_in sc_lv 16 signal 5 } 
	{ unusableInfo_targetSites_count_5_address0 sc_out sc_lv 5 signal 6 } 
	{ unusableInfo_targetSites_count_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ unusableInfo_targetSites_count_5_q0 sc_in sc_lv 16 signal 6 } 
	{ unusableInfo_targetSites_count_6_address0 sc_out sc_lv 5 signal 7 } 
	{ unusableInfo_targetSites_count_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ unusableInfo_targetSites_count_6_q0 sc_in sc_lv 16 signal 7 } 
	{ unusableInfo_targetSites_count_7_address0 sc_out sc_lv 5 signal 8 } 
	{ unusableInfo_targetSites_count_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ unusableInfo_targetSites_count_7_q0 sc_in sc_lv 16 signal 8 } 
	{ totalRequiredAtoms_out sc_out sc_lv 32 signal 9 } 
	{ totalRequiredAtoms_out_ap_vld sc_out sc_logic 1 outvld 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv6", "role": "default" }} , 
 	{ "name": "unusableInfo_targetSites_count_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_0", "role": "address0" }} , 
 	{ "name": "unusableInfo_targetSites_count_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_0", "role": "ce0" }} , 
 	{ "name": "unusableInfo_targetSites_count_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_0", "role": "q0" }} , 
 	{ "name": "unusableInfo_targetSites_count_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_1", "role": "address0" }} , 
 	{ "name": "unusableInfo_targetSites_count_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_1", "role": "ce0" }} , 
 	{ "name": "unusableInfo_targetSites_count_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_1", "role": "q0" }} , 
 	{ "name": "unusableInfo_targetSites_count_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_2", "role": "address0" }} , 
 	{ "name": "unusableInfo_targetSites_count_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_2", "role": "ce0" }} , 
 	{ "name": "unusableInfo_targetSites_count_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_2", "role": "q0" }} , 
 	{ "name": "unusableInfo_targetSites_count_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_3", "role": "address0" }} , 
 	{ "name": "unusableInfo_targetSites_count_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_3", "role": "ce0" }} , 
 	{ "name": "unusableInfo_targetSites_count_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_3", "role": "q0" }} , 
 	{ "name": "unusableInfo_targetSites_count_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_4", "role": "address0" }} , 
 	{ "name": "unusableInfo_targetSites_count_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_4", "role": "ce0" }} , 
 	{ "name": "unusableInfo_targetSites_count_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_4", "role": "q0" }} , 
 	{ "name": "unusableInfo_targetSites_count_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_5", "role": "address0" }} , 
 	{ "name": "unusableInfo_targetSites_count_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_5", "role": "ce0" }} , 
 	{ "name": "unusableInfo_targetSites_count_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_5", "role": "q0" }} , 
 	{ "name": "unusableInfo_targetSites_count_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_6", "role": "address0" }} , 
 	{ "name": "unusableInfo_targetSites_count_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_6", "role": "ce0" }} , 
 	{ "name": "unusableInfo_targetSites_count_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_6", "role": "q0" }} , 
 	{ "name": "unusableInfo_targetSites_count_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_7", "role": "address0" }} , 
 	{ "name": "unusableInfo_targetSites_count_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_7", "role": "ce0" }} , 
 	{ "name": "unusableInfo_targetSites_count_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unusableInfo_targetSites_count_7", "role": "q0" }} , 
 	{ "name": "totalRequiredAtoms_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "totalRequiredAtoms_out", "role": "default" }} , 
 	{ "name": "totalRequiredAtoms_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "totalRequiredAtoms_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_16_1_1_U676", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		totalRequiredAtoms_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	conv6 { ap_none {  { conv6 in_data 0 32 } } }
	unusableInfo_targetSites_count_0 { ap_memory {  { unusableInfo_targetSites_count_0_address0 mem_address 1 5 }  { unusableInfo_targetSites_count_0_ce0 mem_ce 1 1 }  { unusableInfo_targetSites_count_0_q0 mem_dout 0 16 } } }
	unusableInfo_targetSites_count_1 { ap_memory {  { unusableInfo_targetSites_count_1_address0 mem_address 1 5 }  { unusableInfo_targetSites_count_1_ce0 mem_ce 1 1 }  { unusableInfo_targetSites_count_1_q0 mem_dout 0 16 } } }
	unusableInfo_targetSites_count_2 { ap_memory {  { unusableInfo_targetSites_count_2_address0 mem_address 1 5 }  { unusableInfo_targetSites_count_2_ce0 mem_ce 1 1 }  { unusableInfo_targetSites_count_2_q0 mem_dout 0 16 } } }
	unusableInfo_targetSites_count_3 { ap_memory {  { unusableInfo_targetSites_count_3_address0 mem_address 1 5 }  { unusableInfo_targetSites_count_3_ce0 mem_ce 1 1 }  { unusableInfo_targetSites_count_3_q0 mem_dout 0 16 } } }
	unusableInfo_targetSites_count_4 { ap_memory {  { unusableInfo_targetSites_count_4_address0 mem_address 1 5 }  { unusableInfo_targetSites_count_4_ce0 mem_ce 1 1 }  { unusableInfo_targetSites_count_4_q0 mem_dout 0 16 } } }
	unusableInfo_targetSites_count_5 { ap_memory {  { unusableInfo_targetSites_count_5_address0 mem_address 1 5 }  { unusableInfo_targetSites_count_5_ce0 mem_ce 1 1 }  { unusableInfo_targetSites_count_5_q0 mem_dout 0 16 } } }
	unusableInfo_targetSites_count_6 { ap_memory {  { unusableInfo_targetSites_count_6_address0 mem_address 1 5 }  { unusableInfo_targetSites_count_6_ce0 mem_ce 1 1 }  { unusableInfo_targetSites_count_6_q0 mem_dout 0 16 } } }
	unusableInfo_targetSites_count_7 { ap_memory {  { unusableInfo_targetSites_count_7_address0 mem_address 1 5 }  { unusableInfo_targetSites_count_7_ce0 mem_ce 1 1 }  { unusableInfo_targetSites_count_7_q0 mem_dout 0 16 } } }
	totalRequiredAtoms_out { ap_vld {  { totalRequiredAtoms_out out_data 1 32 }  { totalRequiredAtoms_out_ap_vld out_vld 1 1 } } }
}
