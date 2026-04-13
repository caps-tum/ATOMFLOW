set moduleName clearFirstNRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_459_4
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
set C_modelName {clearFirstNRowsOrCols<HLSMoveStream>_Pipeline_VITIS_LOOP_459_4}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict occupiedIndices { MEM_WIDTH 16 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict occupiedIndices_1 { MEM_WIDTH 16 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict start_colSelection { MEM_WIDTH 16 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict end_colSelection { MEM_WIDTH 16 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ processedCount int 32 regular  }
	{ occupiedCount_reload int 32 regular  }
	{ occupiedIndices int 16 regular {array 128 { 1 3 } 1 1 }  }
	{ occupiedIndices_1 int 16 regular {array 128 { 1 3 } 1 1 }  }
	{ start_colSelection int 16 regular {array 16 { 0 0 } 0 1 }  }
	{ end_colSelection int 16 regular {array 16 { 0 0 } 0 1 }  }
	{ start_colSelectionCount_0_lcssa_ce_out int 5 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "processedCount", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "occupiedCount_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "occupiedIndices", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "occupiedIndices_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "start_colSelection", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "end_colSelection", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "start_colSelectionCount_0_lcssa_ce_out", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ processedCount sc_in sc_lv 32 signal 0 } 
	{ occupiedCount_reload sc_in sc_lv 32 signal 1 } 
	{ occupiedIndices_address0 sc_out sc_lv 7 signal 2 } 
	{ occupiedIndices_ce0 sc_out sc_logic 1 signal 2 } 
	{ occupiedIndices_q0 sc_in sc_lv 16 signal 2 } 
	{ occupiedIndices_1_address0 sc_out sc_lv 7 signal 3 } 
	{ occupiedIndices_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ occupiedIndices_1_q0 sc_in sc_lv 16 signal 3 } 
	{ start_colSelection_address0 sc_out sc_lv 4 signal 4 } 
	{ start_colSelection_ce0 sc_out sc_logic 1 signal 4 } 
	{ start_colSelection_we0 sc_out sc_logic 1 signal 4 } 
	{ start_colSelection_d0 sc_out sc_lv 16 signal 4 } 
	{ start_colSelection_address1 sc_out sc_lv 4 signal 4 } 
	{ start_colSelection_ce1 sc_out sc_logic 1 signal 4 } 
	{ start_colSelection_we1 sc_out sc_logic 1 signal 4 } 
	{ start_colSelection_d1 sc_out sc_lv 16 signal 4 } 
	{ end_colSelection_address0 sc_out sc_lv 4 signal 5 } 
	{ end_colSelection_ce0 sc_out sc_logic 1 signal 5 } 
	{ end_colSelection_we0 sc_out sc_logic 1 signal 5 } 
	{ end_colSelection_d0 sc_out sc_lv 16 signal 5 } 
	{ end_colSelection_address1 sc_out sc_lv 4 signal 5 } 
	{ end_colSelection_ce1 sc_out sc_logic 1 signal 5 } 
	{ end_colSelection_we1 sc_out sc_logic 1 signal 5 } 
	{ end_colSelection_d1 sc_out sc_lv 16 signal 5 } 
	{ start_colSelectionCount_0_lcssa_ce_out sc_out sc_lv 5 signal 6 } 
	{ start_colSelectionCount_0_lcssa_ce_out_ap_vld sc_out sc_logic 1 outvld 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "processedCount", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "processedCount", "role": "default" }} , 
 	{ "name": "occupiedCount_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "occupiedCount_reload", "role": "default" }} , 
 	{ "name": "occupiedIndices_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "occupiedIndices", "role": "address0" }} , 
 	{ "name": "occupiedIndices_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "occupiedIndices", "role": "ce0" }} , 
 	{ "name": "occupiedIndices_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "occupiedIndices", "role": "q0" }} , 
 	{ "name": "occupiedIndices_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "occupiedIndices_1", "role": "address0" }} , 
 	{ "name": "occupiedIndices_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "occupiedIndices_1", "role": "ce0" }} , 
 	{ "name": "occupiedIndices_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "occupiedIndices_1", "role": "q0" }} , 
 	{ "name": "start_colSelection_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "start_colSelection", "role": "address0" }} , 
 	{ "name": "start_colSelection_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_colSelection", "role": "ce0" }} , 
 	{ "name": "start_colSelection_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_colSelection", "role": "we0" }} , 
 	{ "name": "start_colSelection_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "start_colSelection", "role": "d0" }} , 
 	{ "name": "start_colSelection_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "start_colSelection", "role": "address1" }} , 
 	{ "name": "start_colSelection_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_colSelection", "role": "ce1" }} , 
 	{ "name": "start_colSelection_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_colSelection", "role": "we1" }} , 
 	{ "name": "start_colSelection_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "start_colSelection", "role": "d1" }} , 
 	{ "name": "end_colSelection_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "end_colSelection", "role": "address0" }} , 
 	{ "name": "end_colSelection_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_colSelection", "role": "ce0" }} , 
 	{ "name": "end_colSelection_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_colSelection", "role": "we0" }} , 
 	{ "name": "end_colSelection_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "end_colSelection", "role": "d0" }} , 
 	{ "name": "end_colSelection_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "end_colSelection", "role": "address1" }} , 
 	{ "name": "end_colSelection_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_colSelection", "role": "ce1" }} , 
 	{ "name": "end_colSelection_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_colSelection", "role": "we1" }} , 
 	{ "name": "end_colSelection_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "end_colSelection", "role": "d1" }} , 
 	{ "name": "start_colSelectionCount_0_lcssa_ce_out", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "start_colSelectionCount_0_lcssa_ce_out", "role": "default" }} , 
 	{ "name": "start_colSelectionCount_0_lcssa_ce_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "start_colSelectionCount_0_lcssa_ce_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "clearFirstNRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_459_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "processedCount", "Type" : "None", "Direction" : "I"},
			{"Name" : "occupiedCount_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "occupiedIndices", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "occupiedIndices_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "start_colSelection", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "end_colSelection", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "start_colSelectionCount_0_lcssa_ce_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_459_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	clearFirstNRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_459_4 {
		processedCount {Type I LastRead 0 FirstWrite -1}
		occupiedCount_reload {Type I LastRead 0 FirstWrite -1}
		occupiedIndices {Type I LastRead 1 FirstWrite -1}
		occupiedIndices_1 {Type I LastRead 1 FirstWrite -1}
		start_colSelection {Type O LastRead -1 FirstWrite 1}
		end_colSelection {Type O LastRead -1 FirstWrite 1}
		start_colSelectionCount_0_lcssa_ce_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "11"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "11"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	processedCount { ap_none {  { processedCount in_data 0 32 } } }
	occupiedCount_reload { ap_none {  { occupiedCount_reload in_data 0 32 } } }
	occupiedIndices { ap_memory {  { occupiedIndices_address0 mem_address 1 7 }  { occupiedIndices_ce0 mem_ce 1 1 }  { occupiedIndices_q0 mem_dout 0 16 } } }
	occupiedIndices_1 { ap_memory {  { occupiedIndices_1_address0 mem_address 1 7 }  { occupiedIndices_1_ce0 mem_ce 1 1 }  { occupiedIndices_1_q0 mem_dout 0 16 } } }
	start_colSelection { ap_memory {  { start_colSelection_address0 mem_address 1 4 }  { start_colSelection_ce0 mem_ce 1 1 }  { start_colSelection_we0 mem_we 1 1 }  { start_colSelection_d0 mem_din 1 16 }  { start_colSelection_address1 MemPortADDR2 1 4 }  { start_colSelection_ce1 MemPortCE2 1 1 }  { start_colSelection_we1 MemPortWE2 1 1 }  { start_colSelection_d1 MemPortDIN2 1 16 } } }
	end_colSelection { ap_memory {  { end_colSelection_address0 mem_address 1 4 }  { end_colSelection_ce0 mem_ce 1 1 }  { end_colSelection_we0 mem_we 1 1 }  { end_colSelection_d0 mem_din 1 16 }  { end_colSelection_address1 MemPortADDR2 1 4 }  { end_colSelection_ce1 MemPortCE2 1 1 }  { end_colSelection_we1 MemPortWE2 1 1 }  { end_colSelection_d1 MemPortDIN2 1 16 } } }
	start_colSelectionCount_0_lcssa_ce_out { ap_vld {  { start_colSelectionCount_0_lcssa_ce_out out_data 1 5 }  { start_colSelectionCount_0_lcssa_ce_out_ap_vld out_vld 1 1 } } }
}
