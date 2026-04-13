set moduleName load_target_geometry_Pipeline_VITIS_LOOP_42_1_VITIS_LOOP_44_2
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
set C_modelName {load_target_geometry_Pipeline_VITIS_LOOP_42_1_VITIS_LOOP_44_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict targetGeometry_data_s { MEM_WIDTH 1 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ targetGeometry_cols_write int 32 regular  }
	{ bound int 62 regular  }
	{ sext_ln0 int 32 regular  }
	{ targetGeometry_mem int 64 regular  }
	{ gmem4 int 8 regular {axi_master 0}  }
	{ targetGeometry_data_s int 1 regular {array 1024 { 3 0 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "targetGeometry_cols_write", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bound", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "targetGeometry_mem", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem4", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "targetGeometry_mem","offset": { "type": "dynamic","port_name": "targetGeometry_mem","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "targetGeometry_data_s", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 60
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem4_0_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem4_0_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem4_0_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem4_0_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem4_0_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem4_0_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem4_0_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem4_0_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem4_0_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem4_0_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem4_0_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem4_0_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem4_0_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem4_0_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem4_0_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem4_0_WDATA sc_out sc_lv 8 signal 4 } 
	{ m_axi_gmem4_0_WSTRB sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem4_0_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem4_0_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem4_0_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem4_0_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem4_0_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem4_0_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem4_0_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem4_0_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem4_0_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem4_0_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem4_0_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem4_0_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem4_0_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem4_0_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem4_0_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem4_0_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem4_0_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem4_0_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem4_0_RDATA sc_in sc_lv 8 signal 4 } 
	{ m_axi_gmem4_0_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem4_0_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem4_0_RFIFONUM sc_in sc_lv 11 signal 4 } 
	{ m_axi_gmem4_0_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem4_0_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem4_0_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem4_0_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem4_0_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem4_0_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem4_0_BUSER sc_in sc_lv 1 signal 4 } 
	{ targetGeometry_cols_write sc_in sc_lv 32 signal 0 } 
	{ bound sc_in sc_lv 62 signal 1 } 
	{ sext_ln0 sc_in sc_lv 32 signal 2 } 
	{ targetGeometry_mem sc_in sc_lv 64 signal 3 } 
	{ targetGeometry_data_s_address1 sc_out sc_lv 10 signal 5 } 
	{ targetGeometry_data_s_ce1 sc_out sc_logic 1 signal 5 } 
	{ targetGeometry_data_s_we1 sc_out sc_logic 1 signal 5 } 
	{ targetGeometry_data_s_d1 sc_out sc_lv 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem4_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem4_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem4_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem4_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem4_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem4_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem4_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem4_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem4_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem4_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem4_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem4_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem4_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem4_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem4_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem4_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem4", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem4_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem4_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem4_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem4_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem4_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem4_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem4_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem4_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem4_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem4_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem4_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem4_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem4_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem4_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem4_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem4_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem4_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem4_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem4_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem4_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem4", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem4_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem4_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem4_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "gmem4", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem4_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem4_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem4_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem4_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem4_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem4_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem4_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_BUSER" }} , 
 	{ "name": "targetGeometry_cols_write", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "targetGeometry_cols_write", "role": "default" }} , 
 	{ "name": "bound", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "bound", "role": "default" }} , 
 	{ "name": "sext_ln0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln0", "role": "default" }} , 
 	{ "name": "targetGeometry_mem", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "targetGeometry_mem", "role": "default" }} , 
 	{ "name": "targetGeometry_data_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "targetGeometry_data_s", "role": "address1" }} , 
 	{ "name": "targetGeometry_data_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetGeometry_data_s", "role": "ce1" }} , 
 	{ "name": "targetGeometry_data_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "targetGeometry_data_s", "role": "we1" }} , 
 	{ "name": "targetGeometry_data_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "targetGeometry_data_s", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "load_target_geometry_Pipeline_VITIS_LOOP_42_1_VITIS_LOOP_44_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "1036",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "targetGeometry_cols_write", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln0", "Type" : "None", "Direction" : "I"},
			{"Name" : "targetGeometry_mem", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem4", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem4_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem4_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "targetGeometry_data_s", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_42_1_VITIS_LOOP_44_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter12", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_31ns_62_1_1_U510", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	load_target_geometry_Pipeline_VITIS_LOOP_42_1_VITIS_LOOP_44_2 {
		targetGeometry_cols_write {Type I LastRead 0 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}
		sext_ln0 {Type I LastRead 0 FirstWrite -1}
		targetGeometry_mem {Type I LastRead 0 FirstWrite -1}
		gmem4 {Type I LastRead 11 FirstWrite -1}
		targetGeometry_data_s {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "1036"}
	, {"Name" : "Interval", "Min" : "13", "Max" : "1036"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	targetGeometry_cols_write { ap_none {  { targetGeometry_cols_write in_data 0 32 } } }
	bound { ap_none {  { bound in_data 0 62 } } }
	sext_ln0 { ap_none {  { sext_ln0 in_data 0 32 } } }
	targetGeometry_mem { ap_none {  { targetGeometry_mem in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem4_0_AWVALID VALID 1 1 }  { m_axi_gmem4_0_AWREADY READY 0 1 }  { m_axi_gmem4_0_AWADDR ADDR 1 64 }  { m_axi_gmem4_0_AWID ID 1 1 }  { m_axi_gmem4_0_AWLEN SIZE 1 32 }  { m_axi_gmem4_0_AWSIZE BURST 1 3 }  { m_axi_gmem4_0_AWBURST LOCK 1 2 }  { m_axi_gmem4_0_AWLOCK CACHE 1 2 }  { m_axi_gmem4_0_AWCACHE PROT 1 4 }  { m_axi_gmem4_0_AWPROT QOS 1 3 }  { m_axi_gmem4_0_AWQOS REGION 1 4 }  { m_axi_gmem4_0_AWREGION USER 1 4 }  { m_axi_gmem4_0_AWUSER DATA 1 1 }  { m_axi_gmem4_0_WVALID VALID 1 1 }  { m_axi_gmem4_0_WREADY READY 0 1 }  { m_axi_gmem4_0_WDATA FIFONUM 1 8 }  { m_axi_gmem4_0_WSTRB STRB 1 1 }  { m_axi_gmem4_0_WLAST LAST 1 1 }  { m_axi_gmem4_0_WID ID 1 1 }  { m_axi_gmem4_0_WUSER DATA 1 1 }  { m_axi_gmem4_0_ARVALID VALID 1 1 }  { m_axi_gmem4_0_ARREADY READY 0 1 }  { m_axi_gmem4_0_ARADDR ADDR 1 64 }  { m_axi_gmem4_0_ARID ID 1 1 }  { m_axi_gmem4_0_ARLEN SIZE 1 32 }  { m_axi_gmem4_0_ARSIZE BURST 1 3 }  { m_axi_gmem4_0_ARBURST LOCK 1 2 }  { m_axi_gmem4_0_ARLOCK CACHE 1 2 }  { m_axi_gmem4_0_ARCACHE PROT 1 4 }  { m_axi_gmem4_0_ARPROT QOS 1 3 }  { m_axi_gmem4_0_ARQOS REGION 1 4 }  { m_axi_gmem4_0_ARREGION USER 1 4 }  { m_axi_gmem4_0_ARUSER DATA 1 1 }  { m_axi_gmem4_0_RVALID VALID 0 1 }  { m_axi_gmem4_0_RREADY READY 1 1 }  { m_axi_gmem4_0_RDATA FIFONUM 0 8 }  { m_axi_gmem4_0_RLAST LAST 0 1 }  { m_axi_gmem4_0_RID ID 0 1 }  { m_axi_gmem4_0_RFIFONUM LEN 0 11 }  { m_axi_gmem4_0_RUSER DATA 0 1 }  { m_axi_gmem4_0_RRESP RESP 0 2 }  { m_axi_gmem4_0_BVALID VALID 0 1 }  { m_axi_gmem4_0_BREADY READY 1 1 }  { m_axi_gmem4_0_BRESP RESP 0 2 }  { m_axi_gmem4_0_BID ID 0 1 }  { m_axi_gmem4_0_BUSER DATA 0 1 } } }
	targetGeometry_data_s { ap_memory {  { targetGeometry_data_s_address1 MemPortADDR2 1 10 }  { targetGeometry_data_s_ce1 MemPortCE2 1 1 }  { targetGeometry_data_s_we1 MemPortWE2 1 1 }  { targetGeometry_data_s_d1 MemPortDIN2 1 1 } } }
}
