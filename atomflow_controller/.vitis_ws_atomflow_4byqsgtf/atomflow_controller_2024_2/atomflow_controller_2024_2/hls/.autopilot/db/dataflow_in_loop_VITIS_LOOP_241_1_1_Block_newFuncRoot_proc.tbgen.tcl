set moduleName dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc
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
set C_modelName {dataflow_in_loop_VITIS_LOOP_241_1.1_Block_newFuncRoot_proc}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict emissions_6 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict emissions_5 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict emissions_4 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict emissions_3 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict emissions_2 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict emissions_1 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict emissions_0 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict emissions_7 { MEM_WIDTH 32 MEM_SIZE 1000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ p_read int 3 regular  }
	{ p_read1 float 32 regular  }
	{ p_read2 float 32 regular  }
	{ p_read3 float 32 regular  }
	{ emissions_6 float 32 regular {array 250 { 0 3 } 0 1 }  }
	{ p_read4 int 13 regular  }
	{ emissions_5 float 32 regular {array 250 { 0 3 } 0 1 }  }
	{ emissions_4 float 32 regular {array 250 { 0 3 } 0 1 }  }
	{ emissions_3 float 32 regular {array 250 { 0 3 } 0 1 }  }
	{ emissions_2 float 32 regular {array 250 { 0 3 } 0 1 }  }
	{ emissions_1 float 32 regular {array 250 { 0 3 } 0 1 }  }
	{ emissions_0 float 32 regular {array 250 { 0 3 } 0 1 }  }
	{ emissions_7 float 32 regular {array 250 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "emissions_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "emissions_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "emissions_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "emissions_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "emissions_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "emissions_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "emissions_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "emissions_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 44
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 3 signal 0 } 
	{ p_read1 sc_in sc_lv 32 signal 1 } 
	{ p_read2 sc_in sc_lv 32 signal 2 } 
	{ p_read3 sc_in sc_lv 32 signal 3 } 
	{ emissions_6_address0 sc_out sc_lv 8 signal 4 } 
	{ emissions_6_ce0 sc_out sc_logic 1 signal 4 } 
	{ emissions_6_we0 sc_out sc_logic 1 signal 4 } 
	{ emissions_6_d0 sc_out sc_lv 32 signal 4 } 
	{ p_read4 sc_in sc_lv 13 signal 5 } 
	{ emissions_5_address0 sc_out sc_lv 8 signal 6 } 
	{ emissions_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ emissions_5_we0 sc_out sc_logic 1 signal 6 } 
	{ emissions_5_d0 sc_out sc_lv 32 signal 6 } 
	{ emissions_4_address0 sc_out sc_lv 8 signal 7 } 
	{ emissions_4_ce0 sc_out sc_logic 1 signal 7 } 
	{ emissions_4_we0 sc_out sc_logic 1 signal 7 } 
	{ emissions_4_d0 sc_out sc_lv 32 signal 7 } 
	{ emissions_3_address0 sc_out sc_lv 8 signal 8 } 
	{ emissions_3_ce0 sc_out sc_logic 1 signal 8 } 
	{ emissions_3_we0 sc_out sc_logic 1 signal 8 } 
	{ emissions_3_d0 sc_out sc_lv 32 signal 8 } 
	{ emissions_2_address0 sc_out sc_lv 8 signal 9 } 
	{ emissions_2_ce0 sc_out sc_logic 1 signal 9 } 
	{ emissions_2_we0 sc_out sc_logic 1 signal 9 } 
	{ emissions_2_d0 sc_out sc_lv 32 signal 9 } 
	{ emissions_1_address0 sc_out sc_lv 8 signal 10 } 
	{ emissions_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ emissions_1_we0 sc_out sc_logic 1 signal 10 } 
	{ emissions_1_d0 sc_out sc_lv 32 signal 10 } 
	{ emissions_0_address0 sc_out sc_lv 8 signal 11 } 
	{ emissions_0_ce0 sc_out sc_logic 1 signal 11 } 
	{ emissions_0_we0 sc_out sc_logic 1 signal 11 } 
	{ emissions_0_d0 sc_out sc_lv 32 signal 11 } 
	{ emissions_7_address0 sc_out sc_lv 8 signal 12 } 
	{ emissions_7_ce0 sc_out sc_logic 1 signal 12 } 
	{ emissions_7_we0 sc_out sc_logic 1 signal 12 } 
	{ emissions_7_d0 sc_out sc_lv 32 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "emissions_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_6", "role": "address0" }} , 
 	{ "name": "emissions_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_6", "role": "ce0" }} , 
 	{ "name": "emissions_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_6", "role": "we0" }} , 
 	{ "name": "emissions_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_6", "role": "d0" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "emissions_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_5", "role": "address0" }} , 
 	{ "name": "emissions_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_5", "role": "ce0" }} , 
 	{ "name": "emissions_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_5", "role": "we0" }} , 
 	{ "name": "emissions_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_5", "role": "d0" }} , 
 	{ "name": "emissions_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_4", "role": "address0" }} , 
 	{ "name": "emissions_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_4", "role": "ce0" }} , 
 	{ "name": "emissions_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_4", "role": "we0" }} , 
 	{ "name": "emissions_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_4", "role": "d0" }} , 
 	{ "name": "emissions_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_3", "role": "address0" }} , 
 	{ "name": "emissions_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_3", "role": "ce0" }} , 
 	{ "name": "emissions_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_3", "role": "we0" }} , 
 	{ "name": "emissions_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_3", "role": "d0" }} , 
 	{ "name": "emissions_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_2", "role": "address0" }} , 
 	{ "name": "emissions_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_2", "role": "ce0" }} , 
 	{ "name": "emissions_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_2", "role": "we0" }} , 
 	{ "name": "emissions_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_2", "role": "d0" }} , 
 	{ "name": "emissions_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_1", "role": "address0" }} , 
 	{ "name": "emissions_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_1", "role": "ce0" }} , 
 	{ "name": "emissions_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_1", "role": "we0" }} , 
 	{ "name": "emissions_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_1", "role": "d0" }} , 
 	{ "name": "emissions_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_0", "role": "address0" }} , 
 	{ "name": "emissions_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_0", "role": "ce0" }} , 
 	{ "name": "emissions_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_0", "role": "we0" }} , 
 	{ "name": "emissions_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_0", "role": "d0" }} , 
 	{ "name": "emissions_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions_7", "role": "address0" }} , 
 	{ "name": "emissions_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_7", "role": "ce0" }} , 
 	{ "name": "emissions_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions_7", "role": "we0" }} , 
 	{ "name": "emissions_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions_7", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "1"},
			{"Name" : "emissions_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "1"},
			{"Name" : "emissions_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "emissions_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "emissions_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "emissions_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "emissions_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "emissions_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "emissions_7", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_post_process_fu_176", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "post_process",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "11", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "projSumUsed", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_imageProjs", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_post_process_fu_176.fmul_32ns_32ns_32_3_max_dsp_1_U383", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_post_process_fu_176.fdiv_32ns_32ns_32_9_no_dsp_0_U384", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dataflow_in_loop_VITIS_LOOP_241_1_1_Block_newFuncRoot_proc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		emissions_6 {Type O LastRead -1 FirstWrite 14}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		emissions_5 {Type O LastRead -1 FirstWrite 14}
		emissions_4 {Type O LastRead -1 FirstWrite 14}
		emissions_3 {Type O LastRead -1 FirstWrite 14}
		emissions_2 {Type O LastRead -1 FirstWrite 14}
		emissions_1 {Type O LastRead -1 FirstWrite 14}
		emissions_0 {Type O LastRead -1 FirstWrite 14}
		emissions_7 {Type O LastRead -1 FirstWrite 14}}
	post_process {
		projSumUsed {Type I LastRead 0 FirstWrite -1}
		sum {Type I LastRead 0 FirstWrite -1}
		curr_imageProjs {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14", "Max" : "14"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "14"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 3 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 32 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 32 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 32 } } }
	emissions_6 { ap_memory {  { emissions_6_address0 mem_address 1 8 }  { emissions_6_ce0 mem_ce 1 1 }  { emissions_6_we0 mem_we 1 1 }  { emissions_6_d0 mem_din 1 32 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 13 } } }
	emissions_5 { ap_memory {  { emissions_5_address0 mem_address 1 8 }  { emissions_5_ce0 mem_ce 1 1 }  { emissions_5_we0 mem_we 1 1 }  { emissions_5_d0 mem_din 1 32 } } }
	emissions_4 { ap_memory {  { emissions_4_address0 mem_address 1 8 }  { emissions_4_ce0 mem_ce 1 1 }  { emissions_4_we0 mem_we 1 1 }  { emissions_4_d0 mem_din 1 32 } } }
	emissions_3 { ap_memory {  { emissions_3_address0 mem_address 1 8 }  { emissions_3_ce0 mem_ce 1 1 }  { emissions_3_we0 mem_we 1 1 }  { emissions_3_d0 mem_din 1 32 } } }
	emissions_2 { ap_memory {  { emissions_2_address0 mem_address 1 8 }  { emissions_2_ce0 mem_ce 1 1 }  { emissions_2_we0 mem_we 1 1 }  { emissions_2_d0 mem_din 1 32 } } }
	emissions_1 { ap_memory {  { emissions_1_address0 mem_address 1 8 }  { emissions_1_ce0 mem_ce 1 1 }  { emissions_1_we0 mem_we 1 1 }  { emissions_1_d0 mem_din 1 32 } } }
	emissions_0 { ap_memory {  { emissions_0_address0 mem_address 1 8 }  { emissions_0_ce0 mem_ce 1 1 }  { emissions_0_we0 mem_we 1 1 }  { emissions_0_d0 mem_din 1 32 } } }
	emissions_7 { ap_memory {  { emissions_7_address0 mem_address 1 8 }  { emissions_7_ce0 mem_ce 1 1 }  { emissions_7_we0 mem_we 1 1 }  { emissions_7_d0 mem_din 1 32 } } }
}
