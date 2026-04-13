# This script segment is generated automatically by AutoPilot

set name atomflow_controller_mul_31ns_31ns_62_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 525 \
    name targetGeometry_data_s \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename targetGeometry_data_s \
    op interface \
    ports { targetGeometry_data_s_address1 { O 15 vector } targetGeometry_data_s_ce1 { O 1 bit } targetGeometry_data_s_we1 { O 1 bit } targetGeometry_data_s_d1 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'targetGeometry_data_s'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 521 \
    name gmem4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem4 \
    op interface \
    ports { m_axi_gmem4_0_AWVALID { O 1 bit } m_axi_gmem4_0_AWREADY { I 1 bit } m_axi_gmem4_0_AWADDR { O 64 vector } m_axi_gmem4_0_AWID { O 1 vector } m_axi_gmem4_0_AWLEN { O 32 vector } m_axi_gmem4_0_AWSIZE { O 3 vector } m_axi_gmem4_0_AWBURST { O 2 vector } m_axi_gmem4_0_AWLOCK { O 2 vector } m_axi_gmem4_0_AWCACHE { O 4 vector } m_axi_gmem4_0_AWPROT { O 3 vector } m_axi_gmem4_0_AWQOS { O 4 vector } m_axi_gmem4_0_AWREGION { O 4 vector } m_axi_gmem4_0_AWUSER { O 1 vector } m_axi_gmem4_0_WVALID { O 1 bit } m_axi_gmem4_0_WREADY { I 1 bit } m_axi_gmem4_0_WDATA { O 8 vector } m_axi_gmem4_0_WSTRB { O 1 vector } m_axi_gmem4_0_WLAST { O 1 bit } m_axi_gmem4_0_WID { O 1 vector } m_axi_gmem4_0_WUSER { O 1 vector } m_axi_gmem4_0_ARVALID { O 1 bit } m_axi_gmem4_0_ARREADY { I 1 bit } m_axi_gmem4_0_ARADDR { O 64 vector } m_axi_gmem4_0_ARID { O 1 vector } m_axi_gmem4_0_ARLEN { O 32 vector } m_axi_gmem4_0_ARSIZE { O 3 vector } m_axi_gmem4_0_ARBURST { O 2 vector } m_axi_gmem4_0_ARLOCK { O 2 vector } m_axi_gmem4_0_ARCACHE { O 4 vector } m_axi_gmem4_0_ARPROT { O 3 vector } m_axi_gmem4_0_ARQOS { O 4 vector } m_axi_gmem4_0_ARREGION { O 4 vector } m_axi_gmem4_0_ARUSER { O 1 vector } m_axi_gmem4_0_RVALID { I 1 bit } m_axi_gmem4_0_RREADY { O 1 bit } m_axi_gmem4_0_RDATA { I 8 vector } m_axi_gmem4_0_RLAST { I 1 bit } m_axi_gmem4_0_RID { I 1 vector } m_axi_gmem4_0_RFIFONUM { I 11 vector } m_axi_gmem4_0_RUSER { I 1 vector } m_axi_gmem4_0_RRESP { I 2 vector } m_axi_gmem4_0_BVALID { I 1 bit } m_axi_gmem4_0_BREADY { O 1 bit } m_axi_gmem4_0_BRESP { I 2 vector } m_axi_gmem4_0_BID { I 1 vector } m_axi_gmem4_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 522 \
    name targetGeometry_mem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_targetGeometry_mem \
    op interface \
    ports { targetGeometry_mem { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 523 \
    name targetGeometry_rows_write \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_targetGeometry_rows_write \
    op interface \
    ports { targetGeometry_rows_write { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 524 \
    name targetGeometry_cols_write \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_targetGeometry_cols_write \
    op interface \
    ports { targetGeometry_cols_write { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


