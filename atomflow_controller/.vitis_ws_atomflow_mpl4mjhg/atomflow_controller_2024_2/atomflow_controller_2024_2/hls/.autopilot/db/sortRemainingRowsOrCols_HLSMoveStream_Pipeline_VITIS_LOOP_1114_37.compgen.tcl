# This script segment is generated automatically by AutoPilot

set name atomflow_controller_uitodp_64ns_64_4_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {uitodp} IMPL {auto} LATENCY 3 ALLOW_PRAGMA 1
}


set name atomflow_controller_sitodp_32ns_64_4_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {sitodp} IMPL {auto} LATENCY 3 ALLOW_PRAGMA 1
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
    id 750 \
    name usableFrontBuf \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename usableFrontBuf \
    op interface \
    ports { usableFrontBuf_address0 { O 4 vector } usableFrontBuf_ce0 { O 1 bit } usableFrontBuf_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'usableFrontBuf'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 751 \
    name usableBackBuf \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename usableBackBuf \
    op interface \
    ports { usableBackBuf_address0 { O 4 vector } usableBackBuf_ce0 { O 1 bit } usableBackBuf_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'usableBackBuf'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 752 \
    name parkFrontBuf \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename parkFrontBuf \
    op interface \
    ports { parkFrontBuf_address0 { O 4 vector } parkFrontBuf_ce0 { O 1 bit } parkFrontBuf_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'parkFrontBuf'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 753 \
    name parkBackBuf \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename parkBackBuf \
    op interface \
    ports { parkBackBuf_address0 { O 4 vector } parkBackBuf_ce0 { O 1 bit } parkBackBuf_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'parkBackBuf'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 754 \
    name start_colSelection_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename start_colSelection_2 \
    op interface \
    ports { start_colSelection_2_address0 { O 4 vector } start_colSelection_2_ce0 { O 1 bit } start_colSelection_2_we0 { O 1 bit } start_colSelection_2_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'start_colSelection_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 755 \
    name end_colSelection_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename end_colSelection_2 \
    op interface \
    ports { end_colSelection_2_address0 { O 4 vector } end_colSelection_2_ce0 { O 1 bit } end_colSelection_2_we0 { O 1 bit } end_colSelection_2_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'end_colSelection_2'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 756 \
    name prefetchCountParking_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_prefetchCountParking_1 \
    op interface \
    ports { prefetchCountParking_1 { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 757 \
    name prefetchCountUsable \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_prefetchCountUsable \
    op interface \
    ports { prefetchCountUsable { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 758 \
    name parkingSpotsRemainingAtCurrentIndexXC_count_7_cast38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parkingSpotsRemainingAtCurrentIndexXC_count_7_cast38 \
    op interface \
    ports { parkingSpotsRemainingAtCurrentIndexXC_count_7_cast38 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 759 \
    name zext_ln882 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln882 \
    op interface \
    ports { zext_ln882 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 760 \
    name requiredAtoms_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_requiredAtoms_2 \
    op interface \
    ports { requiredAtoms_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 761 \
    name iter_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_iter_1_out \
    op interface \
    ports { iter_1_out { O 5 vector } iter_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 762 \
    name parkingBackIdx_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_parkingBackIdx_out \
    op interface \
    ports { parkingBackIdx_out { O 5 vector } parkingBackIdx_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 763 \
    name parkingFrontIdx_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_parkingFrontIdx_out \
    op interface \
    ports { parkingFrontIdx_out { O 5 vector } parkingFrontIdx_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 764 \
    name usableBackIdx_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_usableBackIdx_out \
    op interface \
    ports { usableBackIdx_out { O 5 vector } usableBackIdx_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 765 \
    name usableFrontIdx_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_usableFrontIdx_3_out \
    op interface \
    ports { usableFrontIdx_3_out { O 5 vector } usableFrontIdx_3_out_ap_vld { O 1 bit } } \
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


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
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
    id -3 \
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


# flow_control definition:
set InstName atomflow_controller_flow_control_loop_pipe_sequential_init_U
set CompName atomflow_controller_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix atomflow_controller_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


