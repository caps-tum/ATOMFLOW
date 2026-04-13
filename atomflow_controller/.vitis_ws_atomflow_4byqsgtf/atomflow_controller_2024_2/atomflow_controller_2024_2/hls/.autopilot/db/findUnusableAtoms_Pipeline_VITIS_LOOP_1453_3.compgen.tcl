# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_sparsemux_17_3_16_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
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
    id 556 \
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
    id 557 \
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
    id 559 \
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
    id 560 \
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
    id 561 \
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
    id 562 \
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
    id 563 \
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
    id 564 \
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
    id 565 \
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


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 566 \
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
    id 567 \
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
    id 568 \
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
    id 569 \
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
    id 570 \
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
    id 571 \
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
    id 572 \
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
    id 573 \
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
    id 580 \
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
    id 582 \
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
    id 583 \
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


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 554 \
    name empty_151 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_151 \
    op interface \
    ports { empty_151 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 555 \
    name phi_mul \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_phi_mul \
    op interface \
    ports { phi_mul { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 558 \
    name zext_ln1446_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln1446_2 \
    op interface \
    ports { zext_ln1446_2 { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 574 \
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
    id 575 \
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
    id 576 \
    name cmp22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp22 \
    op interface \
    ports { cmp22 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 577 \
    name rev \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rev \
    op interface \
    ports { rev { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 578 \
    name mul_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mul_i \
    op interface \
    ports { mul_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 579 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 581 \
    name zext_ln135_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln135_4 \
    op interface \
    ports { zext_ln135_4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 584 \
    name indexXC \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_indexXC \
    op interface \
    ports { indexXC { I 3 vector } } \
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


