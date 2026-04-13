# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_am_submul_9ns_10ns_10s_10_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
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
    id 587 \
    name stateArray_data_s \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename stateArray_data_s \
    op interface \
    ports { stateArray_data_s_address0 { O 10 vector } stateArray_data_s_ce0 { O 1 bit } stateArray_data_s_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'stateArray_data_s'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 595 \
    name targetGeometry_data_s \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename targetGeometry_data_s \
    op interface \
    ports { targetGeometry_data_s_address0 { O 10 vector } targetGeometry_data_s_ce0 { O 1 bit } targetGeometry_data_s_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'targetGeometry_data_s'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 597 \
    name usableAtoms_data \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename usableAtoms_data \
    op interface \
    ports { usableAtoms_data_address1 { O 16 vector } usableAtoms_data_ce1 { O 1 bit } usableAtoms_data_we1 { O 1 bit } usableAtoms_data_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'usableAtoms_data'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 598 \
    name usableAtoms_count_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename usableAtoms_count_0 \
    op interface \
    ports { usableAtoms_count_0_address0 { O 5 vector } usableAtoms_count_0_ce0 { O 1 bit } usableAtoms_count_0_q0 { I 16 vector } usableAtoms_count_0_address1 { O 5 vector } usableAtoms_count_0_ce1 { O 1 bit } usableAtoms_count_0_we1 { O 1 bit } usableAtoms_count_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'usableAtoms_count_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 599 \
    name usableAtoms_count_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename usableAtoms_count_1 \
    op interface \
    ports { usableAtoms_count_1_address0 { O 5 vector } usableAtoms_count_1_ce0 { O 1 bit } usableAtoms_count_1_q0 { I 16 vector } usableAtoms_count_1_address1 { O 5 vector } usableAtoms_count_1_ce1 { O 1 bit } usableAtoms_count_1_we1 { O 1 bit } usableAtoms_count_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'usableAtoms_count_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 600 \
    name usableAtoms_count_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename usableAtoms_count_2 \
    op interface \
    ports { usableAtoms_count_2_address0 { O 5 vector } usableAtoms_count_2_ce0 { O 1 bit } usableAtoms_count_2_q0 { I 16 vector } usableAtoms_count_2_address1 { O 5 vector } usableAtoms_count_2_ce1 { O 1 bit } usableAtoms_count_2_we1 { O 1 bit } usableAtoms_count_2_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'usableAtoms_count_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 601 \
    name usableAtoms_count_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename usableAtoms_count_3 \
    op interface \
    ports { usableAtoms_count_3_address0 { O 5 vector } usableAtoms_count_3_ce0 { O 1 bit } usableAtoms_count_3_q0 { I 16 vector } usableAtoms_count_3_address1 { O 5 vector } usableAtoms_count_3_ce1 { O 1 bit } usableAtoms_count_3_we1 { O 1 bit } usableAtoms_count_3_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'usableAtoms_count_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 602 \
    name usableAtoms_count_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename usableAtoms_count_4 \
    op interface \
    ports { usableAtoms_count_4_address0 { O 5 vector } usableAtoms_count_4_ce0 { O 1 bit } usableAtoms_count_4_q0 { I 16 vector } usableAtoms_count_4_address1 { O 5 vector } usableAtoms_count_4_ce1 { O 1 bit } usableAtoms_count_4_we1 { O 1 bit } usableAtoms_count_4_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'usableAtoms_count_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 603 \
    name usableAtoms_count_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename usableAtoms_count_5 \
    op interface \
    ports { usableAtoms_count_5_address0 { O 5 vector } usableAtoms_count_5_ce0 { O 1 bit } usableAtoms_count_5_q0 { I 16 vector } usableAtoms_count_5_address1 { O 5 vector } usableAtoms_count_5_ce1 { O 1 bit } usableAtoms_count_5_we1 { O 1 bit } usableAtoms_count_5_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'usableAtoms_count_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 604 \
    name usableAtoms_count_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename usableAtoms_count_6 \
    op interface \
    ports { usableAtoms_count_6_address0 { O 5 vector } usableAtoms_count_6_ce0 { O 1 bit } usableAtoms_count_6_q0 { I 16 vector } usableAtoms_count_6_address1 { O 5 vector } usableAtoms_count_6_ce1 { O 1 bit } usableAtoms_count_6_we1 { O 1 bit } usableAtoms_count_6_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'usableAtoms_count_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 605 \
    name usableAtoms_count_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename usableAtoms_count_7 \
    op interface \
    ports { usableAtoms_count_7_address0 { O 5 vector } usableAtoms_count_7_ce0 { O 1 bit } usableAtoms_count_7_q0 { I 16 vector } usableAtoms_count_7_address1 { O 5 vector } usableAtoms_count_7_ce1 { O 1 bit } usableAtoms_count_7_we1 { O 1 bit } usableAtoms_count_7_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'usableAtoms_count_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 606 \
    name unusableAtoms_count_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename unusableAtoms_count_0 \
    op interface \
    ports { unusableAtoms_count_0_address1 { O 5 vector } unusableAtoms_count_0_ce1 { O 1 bit } unusableAtoms_count_0_we1 { O 1 bit } unusableAtoms_count_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableAtoms_count_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 607 \
    name unusableAtoms_count_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename unusableAtoms_count_1 \
    op interface \
    ports { unusableAtoms_count_1_address1 { O 5 vector } unusableAtoms_count_1_ce1 { O 1 bit } unusableAtoms_count_1_we1 { O 1 bit } unusableAtoms_count_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableAtoms_count_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 608 \
    name unusableAtoms_count_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename unusableAtoms_count_2 \
    op interface \
    ports { unusableAtoms_count_2_address1 { O 5 vector } unusableAtoms_count_2_ce1 { O 1 bit } unusableAtoms_count_2_we1 { O 1 bit } unusableAtoms_count_2_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableAtoms_count_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 609 \
    name unusableAtoms_count_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename unusableAtoms_count_3 \
    op interface \
    ports { unusableAtoms_count_3_address1 { O 5 vector } unusableAtoms_count_3_ce1 { O 1 bit } unusableAtoms_count_3_we1 { O 1 bit } unusableAtoms_count_3_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableAtoms_count_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 610 \
    name unusableAtoms_count_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename unusableAtoms_count_4 \
    op interface \
    ports { unusableAtoms_count_4_address1 { O 5 vector } unusableAtoms_count_4_ce1 { O 1 bit } unusableAtoms_count_4_we1 { O 1 bit } unusableAtoms_count_4_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableAtoms_count_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 611 \
    name unusableAtoms_count_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename unusableAtoms_count_5 \
    op interface \
    ports { unusableAtoms_count_5_address1 { O 5 vector } unusableAtoms_count_5_ce1 { O 1 bit } unusableAtoms_count_5_we1 { O 1 bit } unusableAtoms_count_5_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableAtoms_count_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 612 \
    name unusableAtoms_count_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename unusableAtoms_count_6 \
    op interface \
    ports { unusableAtoms_count_6_address1 { O 5 vector } unusableAtoms_count_6_ce1 { O 1 bit } unusableAtoms_count_6_we1 { O 1 bit } unusableAtoms_count_6_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableAtoms_count_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 613 \
    name unusableAtoms_count_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename unusableAtoms_count_7 \
    op interface \
    ports { unusableAtoms_count_7_address1 { O 5 vector } unusableAtoms_count_7_ce1 { O 1 bit } unusableAtoms_count_7_we1 { O 1 bit } unusableAtoms_count_7_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'unusableAtoms_count_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 614 \
    name targetSites_data \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename targetSites_data \
    op interface \
    ports { targetSites_data_address1 { O 16 vector } targetSites_data_ce1 { O 1 bit } targetSites_data_we1 { O 1 bit } targetSites_data_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'targetSites_data'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 615 \
    name targetSites_count_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename targetSites_count_0 \
    op interface \
    ports { targetSites_count_0_address0 { O 5 vector } targetSites_count_0_ce0 { O 1 bit } targetSites_count_0_q0 { I 16 vector } targetSites_count_0_address1 { O 5 vector } targetSites_count_0_ce1 { O 1 bit } targetSites_count_0_we1 { O 1 bit } targetSites_count_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'targetSites_count_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 616 \
    name targetSites_count_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename targetSites_count_1 \
    op interface \
    ports { targetSites_count_1_address0 { O 5 vector } targetSites_count_1_ce0 { O 1 bit } targetSites_count_1_q0 { I 16 vector } targetSites_count_1_address1 { O 5 vector } targetSites_count_1_ce1 { O 1 bit } targetSites_count_1_we1 { O 1 bit } targetSites_count_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'targetSites_count_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 617 \
    name targetSites_count_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename targetSites_count_2 \
    op interface \
    ports { targetSites_count_2_address0 { O 5 vector } targetSites_count_2_ce0 { O 1 bit } targetSites_count_2_q0 { I 16 vector } targetSites_count_2_address1 { O 5 vector } targetSites_count_2_ce1 { O 1 bit } targetSites_count_2_we1 { O 1 bit } targetSites_count_2_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'targetSites_count_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 618 \
    name targetSites_count_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename targetSites_count_3 \
    op interface \
    ports { targetSites_count_3_address0 { O 5 vector } targetSites_count_3_ce0 { O 1 bit } targetSites_count_3_q0 { I 16 vector } targetSites_count_3_address1 { O 5 vector } targetSites_count_3_ce1 { O 1 bit } targetSites_count_3_we1 { O 1 bit } targetSites_count_3_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'targetSites_count_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 619 \
    name targetSites_count_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename targetSites_count_4 \
    op interface \
    ports { targetSites_count_4_address0 { O 5 vector } targetSites_count_4_ce0 { O 1 bit } targetSites_count_4_q0 { I 16 vector } targetSites_count_4_address1 { O 5 vector } targetSites_count_4_ce1 { O 1 bit } targetSites_count_4_we1 { O 1 bit } targetSites_count_4_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'targetSites_count_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 620 \
    name targetSites_count_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename targetSites_count_5 \
    op interface \
    ports { targetSites_count_5_address0 { O 5 vector } targetSites_count_5_ce0 { O 1 bit } targetSites_count_5_q0 { I 16 vector } targetSites_count_5_address1 { O 5 vector } targetSites_count_5_ce1 { O 1 bit } targetSites_count_5_we1 { O 1 bit } targetSites_count_5_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'targetSites_count_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 621 \
    name targetSites_count_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename targetSites_count_6 \
    op interface \
    ports { targetSites_count_6_address0 { O 5 vector } targetSites_count_6_ce0 { O 1 bit } targetSites_count_6_q0 { I 16 vector } targetSites_count_6_address1 { O 5 vector } targetSites_count_6_ce1 { O 1 bit } targetSites_count_6_we1 { O 1 bit } targetSites_count_6_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'targetSites_count_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 622 \
    name targetSites_count_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename targetSites_count_7 \
    op interface \
    ports { targetSites_count_7_address0 { O 5 vector } targetSites_count_7_ce0 { O 1 bit } targetSites_count_7_q0 { I 16 vector } targetSites_count_7_address1 { O 5 vector } targetSites_count_7_ce1 { O 1 bit } targetSites_count_7_we1 { O 1 bit } targetSites_count_7_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'targetSites_count_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 588 \
    name stateArray_cols_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stateArray_cols_val \
    op interface \
    ports { stateArray_cols_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 589 \
    name arraySizeXC \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arraySizeXC \
    op interface \
    ports { arraySizeXC { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 590 \
    name arraySizeAC \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arraySizeAC \
    op interface \
    ports { arraySizeAC { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 591 \
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
    id 592 \
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
    id 593 \
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
    id 594 \
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
    id 596 \
    name targetGeometry_cols_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_targetGeometry_cols_val \
    op interface \
    ports { targetGeometry_cols_val { I 33 vector } } \
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


