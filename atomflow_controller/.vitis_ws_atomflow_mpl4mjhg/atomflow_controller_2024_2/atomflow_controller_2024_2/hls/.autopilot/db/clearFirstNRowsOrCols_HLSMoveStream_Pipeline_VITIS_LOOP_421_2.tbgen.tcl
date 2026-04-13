set moduleName clearFirstNRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_421_2
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
set C_modelName {clearFirstNRowsOrCols<HLSMoveStream>_Pipeline_VITIS_LOOP_421_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict occupiedIndices_1 { MEM_WIDTH 16 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict occupiedIndices { MEM_WIDTH 16 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict stateArray_data_s { MEM_WIDTH 1 MEM_SIZE 25000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ arraySizeAC int 32 regular  }
	{ occupiedIndices_1 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ occupiedIndices int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ mul_i int 15 regular  }
	{ stateArray_data_s int 1 regular {array 25000 { 1 3 } 1 1 }  }
	{ occupiedCount_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "arraySizeAC", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "occupiedIndices_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "occupiedIndices", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mul_i", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_data_s", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "occupiedCount_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ arraySizeAC sc_in sc_lv 32 signal 0 } 
	{ occupiedIndices_1_address0 sc_out sc_lv 7 signal 1 } 
	{ occupiedIndices_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ occupiedIndices_1_we0 sc_out sc_logic 1 signal 1 } 
	{ occupiedIndices_1_d0 sc_out sc_lv 16 signal 1 } 
	{ occupiedIndices_address0 sc_out sc_lv 7 signal 2 } 
	{ occupiedIndices_ce0 sc_out sc_logic 1 signal 2 } 
	{ occupiedIndices_we0 sc_out sc_logic 1 signal 2 } 
	{ occupiedIndices_d0 sc_out sc_lv 16 signal 2 } 
	{ mul_i sc_in sc_lv 15 signal 3 } 
	{ stateArray_data_s_address0 sc_out sc_lv 15 signal 4 } 
	{ stateArray_data_s_ce0 sc_out sc_logic 1 signal 4 } 
	{ stateArray_data_s_q0 sc_in sc_lv 1 signal 4 } 
	{ occupiedCount_out sc_out sc_lv 32 signal 5 } 
	{ occupiedCount_out_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "arraySizeAC", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arraySizeAC", "role": "default" }} , 
 	{ "name": "occupiedIndices_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "occupiedIndices_1", "role": "address0" }} , 
 	{ "name": "occupiedIndices_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "occupiedIndices_1", "role": "ce0" }} , 
 	{ "name": "occupiedIndices_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "occupiedIndices_1", "role": "we0" }} , 
 	{ "name": "occupiedIndices_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "occupiedIndices_1", "role": "d0" }} , 
 	{ "name": "occupiedIndices_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "occupiedIndices", "role": "address0" }} , 
 	{ "name": "occupiedIndices_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "occupiedIndices", "role": "ce0" }} , 
 	{ "name": "occupiedIndices_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "occupiedIndices", "role": "we0" }} , 
 	{ "name": "occupiedIndices_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "occupiedIndices", "role": "d0" }} , 
 	{ "name": "mul_i", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "mul_i", "role": "default" }} , 
 	{ "name": "stateArray_data_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "address0" }} , 
 	{ "name": "stateArray_data_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "ce0" }} , 
 	{ "name": "stateArray_data_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "q0" }} , 
 	{ "name": "occupiedCount_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "occupiedCount_out", "role": "default" }} , 
 	{ "name": "occupiedCount_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "occupiedCount_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	clearFirstNRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_421_2 {
		arraySizeAC {Type I LastRead 0 FirstWrite -1}
		occupiedIndices_1 {Type O LastRead -1 FirstWrite 1}
		occupiedIndices {Type O LastRead -1 FirstWrite 1}
		mul_i {Type I LastRead 0 FirstWrite -1}
		stateArray_data_s {Type I LastRead 0 FirstWrite -1}
		occupiedCount_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "259"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "259"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	arraySizeAC { ap_none {  { arraySizeAC in_data 0 32 } } }
	occupiedIndices_1 { ap_memory {  { occupiedIndices_1_address0 mem_address 1 7 }  { occupiedIndices_1_ce0 mem_ce 1 1 }  { occupiedIndices_1_we0 mem_we 1 1 }  { occupiedIndices_1_d0 mem_din 1 16 } } }
	occupiedIndices { ap_memory {  { occupiedIndices_address0 mem_address 1 7 }  { occupiedIndices_ce0 mem_ce 1 1 }  { occupiedIndices_we0 mem_we 1 1 }  { occupiedIndices_d0 mem_din 1 16 } } }
	mul_i { ap_none {  { mul_i in_data 0 15 } } }
	stateArray_data_s { ap_memory {  { stateArray_data_s_address0 mem_address 1 15 }  { stateArray_data_s_ce0 mem_ce 1 1 }  { stateArray_data_s_q0 mem_dout 0 1 } } }
	occupiedCount_out { ap_vld {  { occupiedCount_out out_data 1 32 }  { occupiedCount_out_ap_vld out_vld 1 1 } } }
}
