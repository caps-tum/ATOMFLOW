set moduleName sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1114_37
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
set C_modelName {sortRemainingRowsOrCols<HLSMoveStream>_Pipeline_VITIS_LOOP_1114_37}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict usableFrontBuf { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict usableBackBuf { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict parkFrontBuf { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict parkBackBuf { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict start_colSelection_2 { MEM_WIDTH 16 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict end_colSelection_2 { MEM_WIDTH 16 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ usableFrontBuf int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ usableBackBuf int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ parkFrontBuf int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ parkBackBuf int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ start_colSelection_2 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ end_colSelection_2 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ prefetchCountParking_1 int 5 regular  }
	{ prefetchCountUsable int 5 regular  }
	{ parkingSpotsRemainingAtCurrentIndexXC_count_7_cast38 int 16 regular  }
	{ zext_ln882 int 16 regular  }
	{ requiredAtoms_2 int 16 regular  }
	{ iter_1_out int 5 regular {pointer 1}  }
	{ parkingBackIdx_out int 5 regular {pointer 1}  }
	{ parkingFrontIdx_out int 5 regular {pointer 1}  }
	{ usableBackIdx_out int 5 regular {pointer 1}  }
	{ usableFrontIdx_3_out int 5 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "usableFrontBuf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "usableBackBuf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "parkFrontBuf", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "parkBackBuf", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "start_colSelection_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "end_colSelection_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "prefetchCountParking_1", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "prefetchCountUsable", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "parkingSpotsRemainingAtCurrentIndexXC_count_7_cast38", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln882", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "requiredAtoms_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "iter_1_out", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "parkingBackIdx_out", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "parkingFrontIdx_out", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "usableBackIdx_out", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "usableFrontIdx_3_out", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ usableFrontBuf_address0 sc_out sc_lv 4 signal 0 } 
	{ usableFrontBuf_ce0 sc_out sc_logic 1 signal 0 } 
	{ usableFrontBuf_q0 sc_in sc_lv 32 signal 0 } 
	{ usableBackBuf_address0 sc_out sc_lv 4 signal 1 } 
	{ usableBackBuf_ce0 sc_out sc_logic 1 signal 1 } 
	{ usableBackBuf_q0 sc_in sc_lv 32 signal 1 } 
	{ parkFrontBuf_address0 sc_out sc_lv 4 signal 2 } 
	{ parkFrontBuf_ce0 sc_out sc_logic 1 signal 2 } 
	{ parkFrontBuf_q0 sc_in sc_lv 64 signal 2 } 
	{ parkBackBuf_address0 sc_out sc_lv 4 signal 3 } 
	{ parkBackBuf_ce0 sc_out sc_logic 1 signal 3 } 
	{ parkBackBuf_q0 sc_in sc_lv 64 signal 3 } 
	{ start_colSelection_2_address0 sc_out sc_lv 4 signal 4 } 
	{ start_colSelection_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ start_colSelection_2_we0 sc_out sc_logic 1 signal 4 } 
	{ start_colSelection_2_d0 sc_out sc_lv 16 signal 4 } 
	{ end_colSelection_2_address0 sc_out sc_lv 4 signal 5 } 
	{ end_colSelection_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ end_colSelection_2_we0 sc_out sc_logic 1 signal 5 } 
	{ end_colSelection_2_d0 sc_out sc_lv 16 signal 5 } 
	{ prefetchCountParking_1 sc_in sc_lv 5 signal 6 } 
	{ prefetchCountUsable sc_in sc_lv 5 signal 7 } 
	{ parkingSpotsRemainingAtCurrentIndexXC_count_7_cast38 sc_in sc_lv 16 signal 8 } 
	{ zext_ln882 sc_in sc_lv 16 signal 9 } 
	{ requiredAtoms_2 sc_in sc_lv 16 signal 10 } 
	{ iter_1_out sc_out sc_lv 5 signal 11 } 
	{ iter_1_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ parkingBackIdx_out sc_out sc_lv 5 signal 12 } 
	{ parkingBackIdx_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ parkingFrontIdx_out sc_out sc_lv 5 signal 13 } 
	{ parkingFrontIdx_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ usableBackIdx_out sc_out sc_lv 5 signal 14 } 
	{ usableBackIdx_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ usableFrontIdx_3_out sc_out sc_lv 5 signal 15 } 
	{ usableFrontIdx_3_out_ap_vld sc_out sc_logic 1 outvld 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "usableFrontBuf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "usableFrontBuf", "role": "address0" }} , 
 	{ "name": "usableFrontBuf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableFrontBuf", "role": "ce0" }} , 
 	{ "name": "usableFrontBuf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "usableFrontBuf", "role": "q0" }} , 
 	{ "name": "usableBackBuf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "usableBackBuf", "role": "address0" }} , 
 	{ "name": "usableBackBuf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "usableBackBuf", "role": "ce0" }} , 
 	{ "name": "usableBackBuf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "usableBackBuf", "role": "q0" }} , 
 	{ "name": "parkFrontBuf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "parkFrontBuf", "role": "address0" }} , 
 	{ "name": "parkFrontBuf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parkFrontBuf", "role": "ce0" }} , 
 	{ "name": "parkFrontBuf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "parkFrontBuf", "role": "q0" }} , 
 	{ "name": "parkBackBuf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "parkBackBuf", "role": "address0" }} , 
 	{ "name": "parkBackBuf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parkBackBuf", "role": "ce0" }} , 
 	{ "name": "parkBackBuf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "parkBackBuf", "role": "q0" }} , 
 	{ "name": "start_colSelection_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "start_colSelection_2", "role": "address0" }} , 
 	{ "name": "start_colSelection_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_colSelection_2", "role": "ce0" }} , 
 	{ "name": "start_colSelection_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_colSelection_2", "role": "we0" }} , 
 	{ "name": "start_colSelection_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "start_colSelection_2", "role": "d0" }} , 
 	{ "name": "end_colSelection_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "end_colSelection_2", "role": "address0" }} , 
 	{ "name": "end_colSelection_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_colSelection_2", "role": "ce0" }} , 
 	{ "name": "end_colSelection_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_colSelection_2", "role": "we0" }} , 
 	{ "name": "end_colSelection_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "end_colSelection_2", "role": "d0" }} , 
 	{ "name": "prefetchCountParking_1", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "prefetchCountParking_1", "role": "default" }} , 
 	{ "name": "prefetchCountUsable", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "prefetchCountUsable", "role": "default" }} , 
 	{ "name": "parkingSpotsRemainingAtCurrentIndexXC_count_7_cast38", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "parkingSpotsRemainingAtCurrentIndexXC_count_7_cast38", "role": "default" }} , 
 	{ "name": "zext_ln882", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln882", "role": "default" }} , 
 	{ "name": "requiredAtoms_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "requiredAtoms_2", "role": "default" }} , 
 	{ "name": "iter_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "iter_1_out", "role": "default" }} , 
 	{ "name": "iter_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "iter_1_out", "role": "ap_vld" }} , 
 	{ "name": "parkingBackIdx_out", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "parkingBackIdx_out", "role": "default" }} , 
 	{ "name": "parkingBackIdx_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "parkingBackIdx_out", "role": "ap_vld" }} , 
 	{ "name": "parkingFrontIdx_out", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "parkingFrontIdx_out", "role": "default" }} , 
 	{ "name": "parkingFrontIdx_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "parkingFrontIdx_out", "role": "ap_vld" }} , 
 	{ "name": "usableBackIdx_out", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "usableBackIdx_out", "role": "default" }} , 
 	{ "name": "usableBackIdx_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "usableBackIdx_out", "role": "ap_vld" }} , 
 	{ "name": "usableFrontIdx_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "usableFrontIdx_3_out", "role": "default" }} , 
 	{ "name": "usableFrontIdx_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "usableFrontIdx_3_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1114_37",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "usableFrontBuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "usableBackBuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "parkFrontBuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "parkBackBuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "start_colSelection_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "end_colSelection_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "prefetchCountParking_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "prefetchCountUsable", "Type" : "None", "Direction" : "I"},
			{"Name" : "parkingSpotsRemainingAtCurrentIndexXC_count_7_cast38", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln882", "Type" : "None", "Direction" : "I"},
			{"Name" : "requiredAtoms_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "iter_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parkingBackIdx_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parkingFrontIdx_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "usableBackIdx_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "usableFrontIdx_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1114_37", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.uitodp_64ns_64_4_no_dsp_1_U746", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_32ns_64_4_no_dsp_1_U747", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sortRemainingRowsOrCols_HLSMoveStream_Pipeline_VITIS_LOOP_1114_37 {
		usableFrontBuf {Type I LastRead 0 FirstWrite -1}
		usableBackBuf {Type I LastRead 0 FirstWrite -1}
		parkFrontBuf {Type I LastRead 0 FirstWrite -1}
		parkBackBuf {Type I LastRead 0 FirstWrite -1}
		start_colSelection_2 {Type O LastRead -1 FirstWrite 5}
		end_colSelection_2 {Type O LastRead -1 FirstWrite 5}
		prefetchCountParking_1 {Type I LastRead 0 FirstWrite -1}
		prefetchCountUsable {Type I LastRead 0 FirstWrite -1}
		parkingSpotsRemainingAtCurrentIndexXC_count_7_cast38 {Type I LastRead 0 FirstWrite -1}
		zext_ln882 {Type I LastRead 0 FirstWrite -1}
		requiredAtoms_2 {Type I LastRead 0 FirstWrite -1}
		iter_1_out {Type O LastRead -1 FirstWrite 4}
		parkingBackIdx_out {Type O LastRead -1 FirstWrite 4}
		parkingFrontIdx_out {Type O LastRead -1 FirstWrite 4}
		usableBackIdx_out {Type O LastRead -1 FirstWrite 4}
		usableFrontIdx_3_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "22"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "22"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	usableFrontBuf { ap_memory {  { usableFrontBuf_address0 mem_address 1 4 }  { usableFrontBuf_ce0 mem_ce 1 1 }  { usableFrontBuf_q0 mem_dout 0 32 } } }
	usableBackBuf { ap_memory {  { usableBackBuf_address0 mem_address 1 4 }  { usableBackBuf_ce0 mem_ce 1 1 }  { usableBackBuf_q0 mem_dout 0 32 } } }
	parkFrontBuf { ap_memory {  { parkFrontBuf_address0 mem_address 1 4 }  { parkFrontBuf_ce0 mem_ce 1 1 }  { parkFrontBuf_q0 mem_dout 0 64 } } }
	parkBackBuf { ap_memory {  { parkBackBuf_address0 mem_address 1 4 }  { parkBackBuf_ce0 mem_ce 1 1 }  { parkBackBuf_q0 mem_dout 0 64 } } }
	start_colSelection_2 { ap_memory {  { start_colSelection_2_address0 mem_address 1 4 }  { start_colSelection_2_ce0 mem_ce 1 1 }  { start_colSelection_2_we0 mem_we 1 1 }  { start_colSelection_2_d0 mem_din 1 16 } } }
	end_colSelection_2 { ap_memory {  { end_colSelection_2_address0 mem_address 1 4 }  { end_colSelection_2_ce0 mem_ce 1 1 }  { end_colSelection_2_we0 mem_we 1 1 }  { end_colSelection_2_d0 mem_din 1 16 } } }
	prefetchCountParking_1 { ap_none {  { prefetchCountParking_1 in_data 0 5 } } }
	prefetchCountUsable { ap_none {  { prefetchCountUsable in_data 0 5 } } }
	parkingSpotsRemainingAtCurrentIndexXC_count_7_cast38 { ap_none {  { parkingSpotsRemainingAtCurrentIndexXC_count_7_cast38 in_data 0 16 } } }
	zext_ln882 { ap_none {  { zext_ln882 in_data 0 16 } } }
	requiredAtoms_2 { ap_none {  { requiredAtoms_2 in_data 0 16 } } }
	iter_1_out { ap_vld {  { iter_1_out out_data 1 5 }  { iter_1_out_ap_vld out_vld 1 1 } } }
	parkingBackIdx_out { ap_vld {  { parkingBackIdx_out out_data 1 5 }  { parkingBackIdx_out_ap_vld out_vld 1 1 } } }
	parkingFrontIdx_out { ap_vld {  { parkingFrontIdx_out out_data 1 5 }  { parkingFrontIdx_out_ap_vld out_vld 1 1 } } }
	usableBackIdx_out { ap_vld {  { usableBackIdx_out out_data 1 5 }  { usableBackIdx_out_ap_vld out_vld 1 1 } } }
	usableFrontIdx_3_out { ap_vld {  { usableFrontIdx_3_out out_data 1 5 }  { usableFrontIdx_3_out_ap_vld out_vld 1 1 } } }
}
