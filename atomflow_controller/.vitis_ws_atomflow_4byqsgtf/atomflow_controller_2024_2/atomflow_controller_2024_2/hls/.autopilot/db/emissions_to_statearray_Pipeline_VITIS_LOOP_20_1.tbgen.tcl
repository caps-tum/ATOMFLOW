set moduleName emissions_to_statearray_Pipeline_VITIS_LOOP_20_1
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
set C_modelName {emissions_to_statearray_Pipeline_VITIS_LOOP_20_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict emissions_0 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict emissions_1 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict emissions_2 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict emissions_3 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict emissions_4 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict emissions_5 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict emissions_6 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict emissions_7 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict stateArray_data_s { MEM_WIDTH 1 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ atomLocationsSize int 32 regular  }
	{ stateArray_cols_write int 32 regular  }
	{ stateArray_rows_write int 32 regular  }
	{ emissions_0 float 32 regular {array 250 { 1 3 } 1 1 }  }
	{ emissions_1 float 32 regular {array 250 { 1 3 } 1 1 }  }
	{ emissions_2 float 32 regular {array 250 { 1 3 } 1 1 }  }
	{ emissions_3 float 32 regular {array 250 { 1 3 } 1 1 }  }
	{ emissions_4 float 32 regular {array 250 { 1 3 } 1 1 }  }
	{ emissions_5 float 32 regular {array 250 { 1 3 } 1 1 }  }
	{ emissions_6 float 32 regular {array 250 { 1 3 } 1 1 }  }
	{ emissions_7 float 32 regular {array 250 { 1 3 } 1 1 }  }
	{ bitcast_ln25_1 int 31 regular  }
	{ empty_152 int 23 regular  }
	{ threshold float 32 regular  }
	{ empty int 10 regular  }
	{ stateArray_data_s int 1 regular {array 1024 { 3 0 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "atomLocationsSize", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_cols_write", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_rows_write", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "emissions_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "emissions_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "emissions_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "emissions_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "emissions_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "emissions_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "emissions_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "emissions_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln25_1", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "empty_152", "interface" : "wire", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "threshold", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_data_s", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ atomLocationsSize sc_in sc_lv 32 signal 0 } 
	{ stateArray_cols_write sc_in sc_lv 32 signal 1 } 
	{ stateArray_rows_write sc_in sc_lv 32 signal 2 } 
	{ emissions_0_address0 sc_out sc_lv 8 signal 3 } 
	{ emissions_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ emissions_0_q0 sc_in sc_lv 32 signal 3 } 
	{ emissions_1_address0 sc_out sc_lv 8 signal 4 } 
	{ emissions_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ emissions_1_q0 sc_in sc_lv 32 signal 4 } 
	{ emissions_2_address0 sc_out sc_lv 8 signal 5 } 
	{ emissions_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ emissions_2_q0 sc_in sc_lv 32 signal 5 } 
	{ emissions_3_address0 sc_out sc_lv 8 signal 6 } 
	{ emissions_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ emissions_3_q0 sc_in sc_lv 32 signal 6 } 
	{ emissions_4_address0 sc_out sc_lv 8 signal 7 } 
	{ emissions_4_ce0 sc_out sc_logic 1 signal 7 } 
	{ emissions_4_q0 sc_in sc_lv 32 signal 7 } 
	{ emissions_5_address0 sc_out sc_lv 8 signal 8 } 
	{ emissions_5_ce0 sc_out sc_logic 1 signal 8 } 
	{ emissions_5_q0 sc_in sc_lv 32 signal 8 } 
	{ emissions_6_address0 sc_out sc_lv 8 signal 9 } 
	{ emissions_6_ce0 sc_out sc_logic 1 signal 9 } 
	{ emissions_6_q0 sc_in sc_lv 32 signal 9 } 
	{ emissions_7_address0 sc_out sc_lv 8 signal 10 } 
	{ emissions_7_ce0 sc_out sc_logic 1 signal 10 } 
	{ emissions_7_q0 sc_in sc_lv 32 signal 10 } 
	{ bitcast_ln25_1 sc_in sc_lv 31 signal 11 } 
	{ empty_152 sc_in sc_lv 23 signal 12 } 
	{ threshold sc_in sc_lv 32 signal 13 } 
	{ empty sc_in sc_lv 10 signal 14 } 
	{ stateArray_data_s_address1 sc_out sc_lv 10 signal 15 } 
	{ stateArray_data_s_ce1 sc_out sc_logic 1 signal 15 } 
	{ stateArray_data_s_we1 sc_out sc_logic 1 signal 15 } 
	{ stateArray_data_s_d1 sc_out sc_lv 1 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "atomLocationsSize", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "atomLocationsSize", "role": "default" }} , 
 	{ "name": "stateArray_cols_write", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stateArray_cols_write", "role": "default" }} , 
 	{ "name": "stateArray_rows_write", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stateArray_rows_write", "role": "default" }} , 
 	{ "name": "emissions_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_0", "role": "address0" }} , 
 	{ "name": "emissions_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_0", "role": "ce0" }} , 
 	{ "name": "emissions_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_0", "role": "q0" }} , 
 	{ "name": "emissions_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_1", "role": "address0" }} , 
 	{ "name": "emissions_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_1", "role": "ce0" }} , 
 	{ "name": "emissions_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_1", "role": "q0" }} , 
 	{ "name": "emissions_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_2", "role": "address0" }} , 
 	{ "name": "emissions_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_2", "role": "ce0" }} , 
 	{ "name": "emissions_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_2", "role": "q0" }} , 
 	{ "name": "emissions_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_3", "role": "address0" }} , 
 	{ "name": "emissions_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_3", "role": "ce0" }} , 
 	{ "name": "emissions_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_3", "role": "q0" }} , 
 	{ "name": "emissions_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_4", "role": "address0" }} , 
 	{ "name": "emissions_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_4", "role": "ce0" }} , 
 	{ "name": "emissions_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_4", "role": "q0" }} , 
 	{ "name": "emissions_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_5", "role": "address0" }} , 
 	{ "name": "emissions_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_5", "role": "ce0" }} , 
 	{ "name": "emissions_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_5", "role": "q0" }} , 
 	{ "name": "emissions_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_6", "role": "address0" }} , 
 	{ "name": "emissions_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_6", "role": "ce0" }} , 
 	{ "name": "emissions_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_6", "role": "q0" }} , 
 	{ "name": "emissions_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_7", "role": "address0" }} , 
 	{ "name": "emissions_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_7", "role": "ce0" }} , 
 	{ "name": "emissions_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_7", "role": "q0" }} , 
 	{ "name": "bitcast_ln25_1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "bitcast_ln25_1", "role": "default" }} , 
 	{ "name": "empty_152", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "empty_152", "role": "default" }} , 
 	{ "name": "threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "threshold", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "stateArray_data_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "address1" }} , 
 	{ "name": "stateArray_data_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "ce1" }} , 
 	{ "name": "stateArray_data_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "we1" }} , 
 	{ "name": "stateArray_data_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stateArray_data_s", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "emissions_to_statearray_Pipeline_VITIS_LOOP_20_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "40", "EstimateLatencyMax" : "2039",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "atomLocationsSize", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_cols_write", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_rows_write", "Type" : "None", "Direction" : "I"},
			{"Name" : "emissions_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emissions_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emissions_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emissions_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emissions_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emissions_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emissions_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emissions_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bitcast_ln25_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_152", "Type" : "None", "Direction" : "I"},
			{"Name" : "threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "stateArray_data_s", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter38", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter38", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U465", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_32ns_32_36_1_U466", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_32ns_32ns_10_36_1_U467", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_32_1_1_U468", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10s_10s_10ns_10_4_1_U469", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	emissions_to_statearray_Pipeline_VITIS_LOOP_20_1 {
		atomLocationsSize {Type I LastRead 0 FirstWrite -1}
		stateArray_cols_write {Type I LastRead 0 FirstWrite -1}
		stateArray_rows_write {Type I LastRead 0 FirstWrite -1}
		emissions_0 {Type I LastRead 36 FirstWrite -1}
		emissions_1 {Type I LastRead 36 FirstWrite -1}
		emissions_2 {Type I LastRead 36 FirstWrite -1}
		emissions_3 {Type I LastRead 36 FirstWrite -1}
		emissions_4 {Type I LastRead 36 FirstWrite -1}
		emissions_5 {Type I LastRead 36 FirstWrite -1}
		emissions_6 {Type I LastRead 36 FirstWrite -1}
		emissions_7 {Type I LastRead 36 FirstWrite -1}
		bitcast_ln25_1 {Type I LastRead 0 FirstWrite -1}
		empty_152 {Type I LastRead 0 FirstWrite -1}
		threshold {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		stateArray_data_s {Type O LastRead -1 FirstWrite 38}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "40", "Max" : "2039"}
	, {"Name" : "Interval", "Min" : "40", "Max" : "2039"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	atomLocationsSize { ap_none {  { atomLocationsSize in_data 0 32 } } }
	stateArray_cols_write { ap_none {  { stateArray_cols_write in_data 0 32 } } }
	stateArray_rows_write { ap_none {  { stateArray_rows_write in_data 0 32 } } }
	emissions_0 { ap_memory {  { emissions_0_address0 mem_address 1 8 }  { emissions_0_ce0 mem_ce 1 1 }  { emissions_0_q0 mem_dout 0 32 } } }
	emissions_1 { ap_memory {  { emissions_1_address0 mem_address 1 8 }  { emissions_1_ce0 mem_ce 1 1 }  { emissions_1_q0 mem_dout 0 32 } } }
	emissions_2 { ap_memory {  { emissions_2_address0 mem_address 1 8 }  { emissions_2_ce0 mem_ce 1 1 }  { emissions_2_q0 mem_dout 0 32 } } }
	emissions_3 { ap_memory {  { emissions_3_address0 mem_address 1 8 }  { emissions_3_ce0 mem_ce 1 1 }  { emissions_3_q0 mem_dout 0 32 } } }
	emissions_4 { ap_memory {  { emissions_4_address0 mem_address 1 8 }  { emissions_4_ce0 mem_ce 1 1 }  { emissions_4_q0 mem_dout 0 32 } } }
	emissions_5 { ap_memory {  { emissions_5_address0 mem_address 1 8 }  { emissions_5_ce0 mem_ce 1 1 }  { emissions_5_q0 mem_dout 0 32 } } }
	emissions_6 { ap_memory {  { emissions_6_address0 mem_address 1 8 }  { emissions_6_ce0 mem_ce 1 1 }  { emissions_6_q0 mem_dout 0 32 } } }
	emissions_7 { ap_memory {  { emissions_7_address0 mem_address 1 8 }  { emissions_7_ce0 mem_ce 1 1 }  { emissions_7_q0 mem_dout 0 32 } } }
	bitcast_ln25_1 { ap_none {  { bitcast_ln25_1 in_data 0 31 } } }
	empty_152 { ap_none {  { empty_152 in_data 0 23 } } }
	threshold { ap_none {  { threshold in_data 0 32 } } }
	empty { ap_none {  { empty in_data 0 10 } } }
	stateArray_data_s { ap_memory {  { stateArray_data_s_address1 MemPortADDR2 1 10 }  { stateArray_data_s_ce1 MemPortCE2 1 1 }  { stateArray_data_s_we1 MemPortWE2 1 1 }  { stateArray_data_s_d1 MemPortDIN2 1 1 } } }
}
