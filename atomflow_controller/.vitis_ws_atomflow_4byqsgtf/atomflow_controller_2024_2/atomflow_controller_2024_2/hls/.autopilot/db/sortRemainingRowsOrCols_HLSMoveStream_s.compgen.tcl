# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_sparsemux_17_3_16_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_ama_addmuladd_16ns_1ns_16s_16ns_16_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_sortRemainingRowsOrCols_HLSMoveStream_s_parkingSpotsPerSuitableIndexXC_data_Rbkb BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_sortRemainingRowsOrCols_HLSMoveStream_s_parkingSpotsRemainingAtCurrentIndexXCcud BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_sortRemainingRowsOrCols_HLSMoveStream_s_start_colSelection_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_sortRemainingRowsOrCols_HLSMoveStream_s_usableFrontBuf_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_sortRemainingRowsOrCols_HLSMoveStream_s_parkFrontBuf_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_sortRemainingRowsOrCols_HLSMoveStream_s_tempUsableH_RAM_1P_BRAM_1R1W BINDTYPE {storage} TYPE {ram_1p} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_sortRemainingRowsOrCols_HLSMoveStream_s_tempParkingH_RAM_1P_BRAM_1R1W BINDTYPE {storage} TYPE {ram_1p} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_sortRemainingRowsOrCols_HLSMoveStream_s_usedSourceIndices_data_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_sortRemainingRowsOrCols_HLSMoveStream_s_usedTargetIndices_data_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_sortRemainingRowsOrCols_HLSMoveStream_s_elbow2_colSelection_1_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_sortRemainingRowsOrCols_HLSMoveStream_s_unusableAtoms_data_RAM_2P_BRAM_1R1W BINDTYPE {storage} TYPE {ram_2p} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
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
    id 853 \
    name stateArray_data_s \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename stateArray_data_s \
    op interface \
    ports { stateArray_data_s_address1 { O 10 vector } stateArray_data_s_ce1 { O 1 bit } stateArray_data_s_we1 { O 1 bit } stateArray_data_s_d1 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'stateArray_data_s'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 856 \
    name moveStream \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { moveStream_TDATA { O 512 vector } moveStream_TVALID { O 1 bit } moveStream_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'moveStream'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 860 \
    name unusableInfo_usableAtoms_data \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_usableAtoms_data \
    op interface \
    ports { unusableInfo_usableAtoms_data_address0 { O 16 vector } unusableInfo_usableAtoms_data_ce0 { O 1 bit } unusableInfo_usableAtoms_data_q0 { I 32 vector } unusableInfo_usableAtoms_data_address1 { O 16 vector } unusableInfo_usableAtoms_data_ce1 { O 1 bit } unusableInfo_usableAtoms_data_we1 { O 1 bit } unusableInfo_usableAtoms_data_d1 { O 32 vector } unusableInfo_usableAtoms_data_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_usableAtoms_data'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 861 \
    name unusableInfo_usableAtoms_count_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_usableAtoms_count_0 \
    op interface \
    ports { unusableInfo_usableAtoms_count_0_address0 { O 5 vector } unusableInfo_usableAtoms_count_0_ce0 { O 1 bit } unusableInfo_usableAtoms_count_0_q0 { I 16 vector } unusableInfo_usableAtoms_count_0_address1 { O 5 vector } unusableInfo_usableAtoms_count_0_ce1 { O 1 bit } unusableInfo_usableAtoms_count_0_we1 { O 1 bit } unusableInfo_usableAtoms_count_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_usableAtoms_count_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 862 \
    name unusableInfo_usableAtoms_count_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_usableAtoms_count_1 \
    op interface \
    ports { unusableInfo_usableAtoms_count_1_address0 { O 5 vector } unusableInfo_usableAtoms_count_1_ce0 { O 1 bit } unusableInfo_usableAtoms_count_1_q0 { I 16 vector } unusableInfo_usableAtoms_count_1_address1 { O 5 vector } unusableInfo_usableAtoms_count_1_ce1 { O 1 bit } unusableInfo_usableAtoms_count_1_we1 { O 1 bit } unusableInfo_usableAtoms_count_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_usableAtoms_count_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 863 \
    name unusableInfo_usableAtoms_count_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_usableAtoms_count_2 \
    op interface \
    ports { unusableInfo_usableAtoms_count_2_address0 { O 5 vector } unusableInfo_usableAtoms_count_2_ce0 { O 1 bit } unusableInfo_usableAtoms_count_2_q0 { I 16 vector } unusableInfo_usableAtoms_count_2_address1 { O 5 vector } unusableInfo_usableAtoms_count_2_ce1 { O 1 bit } unusableInfo_usableAtoms_count_2_we1 { O 1 bit } unusableInfo_usableAtoms_count_2_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_usableAtoms_count_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 864 \
    name unusableInfo_usableAtoms_count_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_usableAtoms_count_3 \
    op interface \
    ports { unusableInfo_usableAtoms_count_3_address0 { O 5 vector } unusableInfo_usableAtoms_count_3_ce0 { O 1 bit } unusableInfo_usableAtoms_count_3_q0 { I 16 vector } unusableInfo_usableAtoms_count_3_address1 { O 5 vector } unusableInfo_usableAtoms_count_3_ce1 { O 1 bit } unusableInfo_usableAtoms_count_3_we1 { O 1 bit } unusableInfo_usableAtoms_count_3_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_usableAtoms_count_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 865 \
    name unusableInfo_usableAtoms_count_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_usableAtoms_count_4 \
    op interface \
    ports { unusableInfo_usableAtoms_count_4_address0 { O 5 vector } unusableInfo_usableAtoms_count_4_ce0 { O 1 bit } unusableInfo_usableAtoms_count_4_q0 { I 16 vector } unusableInfo_usableAtoms_count_4_address1 { O 5 vector } unusableInfo_usableAtoms_count_4_ce1 { O 1 bit } unusableInfo_usableAtoms_count_4_we1 { O 1 bit } unusableInfo_usableAtoms_count_4_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_usableAtoms_count_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 866 \
    name unusableInfo_usableAtoms_count_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_usableAtoms_count_5 \
    op interface \
    ports { unusableInfo_usableAtoms_count_5_address0 { O 5 vector } unusableInfo_usableAtoms_count_5_ce0 { O 1 bit } unusableInfo_usableAtoms_count_5_q0 { I 16 vector } unusableInfo_usableAtoms_count_5_address1 { O 5 vector } unusableInfo_usableAtoms_count_5_ce1 { O 1 bit } unusableInfo_usableAtoms_count_5_we1 { O 1 bit } unusableInfo_usableAtoms_count_5_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_usableAtoms_count_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 867 \
    name unusableInfo_usableAtoms_count_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_usableAtoms_count_6 \
    op interface \
    ports { unusableInfo_usableAtoms_count_6_address0 { O 5 vector } unusableInfo_usableAtoms_count_6_ce0 { O 1 bit } unusableInfo_usableAtoms_count_6_q0 { I 16 vector } unusableInfo_usableAtoms_count_6_address1 { O 5 vector } unusableInfo_usableAtoms_count_6_ce1 { O 1 bit } unusableInfo_usableAtoms_count_6_we1 { O 1 bit } unusableInfo_usableAtoms_count_6_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_usableAtoms_count_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 868 \
    name unusableInfo_usableAtoms_count_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_usableAtoms_count_7 \
    op interface \
    ports { unusableInfo_usableAtoms_count_7_address0 { O 5 vector } unusableInfo_usableAtoms_count_7_ce0 { O 1 bit } unusableInfo_usableAtoms_count_7_q0 { I 16 vector } unusableInfo_usableAtoms_count_7_address1 { O 5 vector } unusableInfo_usableAtoms_count_7_ce1 { O 1 bit } unusableInfo_usableAtoms_count_7_we1 { O 1 bit } unusableInfo_usableAtoms_count_7_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_usableAtoms_count_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 869 \
    name unusableInfo_unusableAtoms_count_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_unusableAtoms_count_0 \
    op interface \
    ports { unusableInfo_unusableAtoms_count_0_address0 { O 5 vector } unusableInfo_unusableAtoms_count_0_ce0 { O 1 bit } unusableInfo_unusableAtoms_count_0_q0 { I 16 vector } unusableInfo_unusableAtoms_count_0_address1 { O 5 vector } unusableInfo_unusableAtoms_count_0_ce1 { O 1 bit } unusableInfo_unusableAtoms_count_0_we1 { O 1 bit } unusableInfo_unusableAtoms_count_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_unusableAtoms_count_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 870 \
    name unusableInfo_unusableAtoms_count_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_unusableAtoms_count_1 \
    op interface \
    ports { unusableInfo_unusableAtoms_count_1_address0 { O 5 vector } unusableInfo_unusableAtoms_count_1_ce0 { O 1 bit } unusableInfo_unusableAtoms_count_1_q0 { I 16 vector } unusableInfo_unusableAtoms_count_1_address1 { O 5 vector } unusableInfo_unusableAtoms_count_1_ce1 { O 1 bit } unusableInfo_unusableAtoms_count_1_we1 { O 1 bit } unusableInfo_unusableAtoms_count_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_unusableAtoms_count_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 871 \
    name unusableInfo_unusableAtoms_count_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_unusableAtoms_count_2 \
    op interface \
    ports { unusableInfo_unusableAtoms_count_2_address0 { O 5 vector } unusableInfo_unusableAtoms_count_2_ce0 { O 1 bit } unusableInfo_unusableAtoms_count_2_q0 { I 16 vector } unusableInfo_unusableAtoms_count_2_address1 { O 5 vector } unusableInfo_unusableAtoms_count_2_ce1 { O 1 bit } unusableInfo_unusableAtoms_count_2_we1 { O 1 bit } unusableInfo_unusableAtoms_count_2_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_unusableAtoms_count_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 872 \
    name unusableInfo_unusableAtoms_count_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_unusableAtoms_count_3 \
    op interface \
    ports { unusableInfo_unusableAtoms_count_3_address0 { O 5 vector } unusableInfo_unusableAtoms_count_3_ce0 { O 1 bit } unusableInfo_unusableAtoms_count_3_q0 { I 16 vector } unusableInfo_unusableAtoms_count_3_address1 { O 5 vector } unusableInfo_unusableAtoms_count_3_ce1 { O 1 bit } unusableInfo_unusableAtoms_count_3_we1 { O 1 bit } unusableInfo_unusableAtoms_count_3_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_unusableAtoms_count_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 873 \
    name unusableInfo_unusableAtoms_count_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_unusableAtoms_count_4 \
    op interface \
    ports { unusableInfo_unusableAtoms_count_4_address0 { O 5 vector } unusableInfo_unusableAtoms_count_4_ce0 { O 1 bit } unusableInfo_unusableAtoms_count_4_q0 { I 16 vector } unusableInfo_unusableAtoms_count_4_address1 { O 5 vector } unusableInfo_unusableAtoms_count_4_ce1 { O 1 bit } unusableInfo_unusableAtoms_count_4_we1 { O 1 bit } unusableInfo_unusableAtoms_count_4_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_unusableAtoms_count_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 874 \
    name unusableInfo_unusableAtoms_count_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_unusableAtoms_count_5 \
    op interface \
    ports { unusableInfo_unusableAtoms_count_5_address0 { O 5 vector } unusableInfo_unusableAtoms_count_5_ce0 { O 1 bit } unusableInfo_unusableAtoms_count_5_q0 { I 16 vector } unusableInfo_unusableAtoms_count_5_address1 { O 5 vector } unusableInfo_unusableAtoms_count_5_ce1 { O 1 bit } unusableInfo_unusableAtoms_count_5_we1 { O 1 bit } unusableInfo_unusableAtoms_count_5_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_unusableAtoms_count_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 875 \
    name unusableInfo_unusableAtoms_count_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_unusableAtoms_count_6 \
    op interface \
    ports { unusableInfo_unusableAtoms_count_6_address0 { O 5 vector } unusableInfo_unusableAtoms_count_6_ce0 { O 1 bit } unusableInfo_unusableAtoms_count_6_q0 { I 16 vector } unusableInfo_unusableAtoms_count_6_address1 { O 5 vector } unusableInfo_unusableAtoms_count_6_ce1 { O 1 bit } unusableInfo_unusableAtoms_count_6_we1 { O 1 bit } unusableInfo_unusableAtoms_count_6_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_unusableAtoms_count_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 876 \
    name unusableInfo_unusableAtoms_count_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_unusableAtoms_count_7 \
    op interface \
    ports { unusableInfo_unusableAtoms_count_7_address0 { O 5 vector } unusableInfo_unusableAtoms_count_7_ce0 { O 1 bit } unusableInfo_unusableAtoms_count_7_q0 { I 16 vector } unusableInfo_unusableAtoms_count_7_address1 { O 5 vector } unusableInfo_unusableAtoms_count_7_ce1 { O 1 bit } unusableInfo_unusableAtoms_count_7_we1 { O 1 bit } unusableInfo_unusableAtoms_count_7_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_unusableAtoms_count_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 877 \
    name unusableInfo_targetSites_data \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_targetSites_data \
    op interface \
    ports { unusableInfo_targetSites_data_address0 { O 16 vector } unusableInfo_targetSites_data_ce0 { O 1 bit } unusableInfo_targetSites_data_q0 { I 8 vector } unusableInfo_targetSites_data_address1 { O 16 vector } unusableInfo_targetSites_data_ce1 { O 1 bit } unusableInfo_targetSites_data_we1 { O 1 bit } unusableInfo_targetSites_data_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_targetSites_data'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 878 \
    name unusableInfo_targetSites_count_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_targetSites_count_0 \
    op interface \
    ports { unusableInfo_targetSites_count_0_address0 { O 5 vector } unusableInfo_targetSites_count_0_ce0 { O 1 bit } unusableInfo_targetSites_count_0_q0 { I 16 vector } unusableInfo_targetSites_count_0_address1 { O 5 vector } unusableInfo_targetSites_count_0_ce1 { O 1 bit } unusableInfo_targetSites_count_0_we1 { O 1 bit } unusableInfo_targetSites_count_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_targetSites_count_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 879 \
    name unusableInfo_targetSites_count_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_targetSites_count_1 \
    op interface \
    ports { unusableInfo_targetSites_count_1_address0 { O 5 vector } unusableInfo_targetSites_count_1_ce0 { O 1 bit } unusableInfo_targetSites_count_1_q0 { I 16 vector } unusableInfo_targetSites_count_1_address1 { O 5 vector } unusableInfo_targetSites_count_1_ce1 { O 1 bit } unusableInfo_targetSites_count_1_we1 { O 1 bit } unusableInfo_targetSites_count_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_targetSites_count_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 880 \
    name unusableInfo_targetSites_count_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_targetSites_count_2 \
    op interface \
    ports { unusableInfo_targetSites_count_2_address0 { O 5 vector } unusableInfo_targetSites_count_2_ce0 { O 1 bit } unusableInfo_targetSites_count_2_q0 { I 16 vector } unusableInfo_targetSites_count_2_address1 { O 5 vector } unusableInfo_targetSites_count_2_ce1 { O 1 bit } unusableInfo_targetSites_count_2_we1 { O 1 bit } unusableInfo_targetSites_count_2_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_targetSites_count_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 881 \
    name unusableInfo_targetSites_count_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_targetSites_count_3 \
    op interface \
    ports { unusableInfo_targetSites_count_3_address0 { O 5 vector } unusableInfo_targetSites_count_3_ce0 { O 1 bit } unusableInfo_targetSites_count_3_q0 { I 16 vector } unusableInfo_targetSites_count_3_address1 { O 5 vector } unusableInfo_targetSites_count_3_ce1 { O 1 bit } unusableInfo_targetSites_count_3_we1 { O 1 bit } unusableInfo_targetSites_count_3_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_targetSites_count_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 882 \
    name unusableInfo_targetSites_count_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_targetSites_count_4 \
    op interface \
    ports { unusableInfo_targetSites_count_4_address0 { O 5 vector } unusableInfo_targetSites_count_4_ce0 { O 1 bit } unusableInfo_targetSites_count_4_q0 { I 16 vector } unusableInfo_targetSites_count_4_address1 { O 5 vector } unusableInfo_targetSites_count_4_ce1 { O 1 bit } unusableInfo_targetSites_count_4_we1 { O 1 bit } unusableInfo_targetSites_count_4_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_targetSites_count_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 883 \
    name unusableInfo_targetSites_count_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_targetSites_count_5 \
    op interface \
    ports { unusableInfo_targetSites_count_5_address0 { O 5 vector } unusableInfo_targetSites_count_5_ce0 { O 1 bit } unusableInfo_targetSites_count_5_q0 { I 16 vector } unusableInfo_targetSites_count_5_address1 { O 5 vector } unusableInfo_targetSites_count_5_ce1 { O 1 bit } unusableInfo_targetSites_count_5_we1 { O 1 bit } unusableInfo_targetSites_count_5_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_targetSites_count_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 884 \
    name unusableInfo_targetSites_count_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_targetSites_count_6 \
    op interface \
    ports { unusableInfo_targetSites_count_6_address0 { O 5 vector } unusableInfo_targetSites_count_6_ce0 { O 1 bit } unusableInfo_targetSites_count_6_q0 { I 16 vector } unusableInfo_targetSites_count_6_address1 { O 5 vector } unusableInfo_targetSites_count_6_ce1 { O 1 bit } unusableInfo_targetSites_count_6_we1 { O 1 bit } unusableInfo_targetSites_count_6_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_targetSites_count_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 885 \
    name unusableInfo_targetSites_count_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename unusableInfo_targetSites_count_7 \
    op interface \
    ports { unusableInfo_targetSites_count_7_address0 { O 5 vector } unusableInfo_targetSites_count_7_ce0 { O 1 bit } unusableInfo_targetSites_count_7_q0 { I 16 vector } unusableInfo_targetSites_count_7_address1 { O 5 vector } unusableInfo_targetSites_count_7_ce1 { O 1 bit } unusableInfo_targetSites_count_7_we1 { O 1 bit } unusableInfo_targetSites_count_7_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableInfo_targetSites_count_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 854 \
    name stateArray_rows_val4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stateArray_rows_val4 \
    op interface \
    ports { stateArray_rows_val4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 855 \
    name stateArray_cols_val9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stateArray_cols_val9 \
    op interface \
    ports { stateArray_cols_val9 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 857 \
    name moveList_count_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_moveList_count_read \
    op interface \
    ports { moveList_count_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 858 \
    name conv7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7 \
    op interface \
    ports { conv7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 859 \
    name conv6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv6 \
    op interface \
    ports { conv6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 886 \
    name compZoneRowStart \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_compZoneRowStart \
    op interface \
    ports { compZoneRowStart { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 887 \
    name compZoneRowEnd \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_compZoneRowEnd \
    op interface \
    ports { compZoneRowEnd { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 888 \
    name compZoneColStart \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_compZoneColStart \
    op interface \
    ports { compZoneColStart { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 889 \
    name compZoneColEnd \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_compZoneColEnd \
    op interface \
    ports { compZoneColEnd { I 32 vector } } \
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


