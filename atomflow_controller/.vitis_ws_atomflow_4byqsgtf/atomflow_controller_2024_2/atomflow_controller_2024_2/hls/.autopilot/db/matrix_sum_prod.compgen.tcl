# This script segment is generated automatically by AutoPilot

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
    id 321 \
    name mat_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_0 \
    op interface \
    ports { mat_0_address0 { O 5 vector } mat_0_ce0 { O 1 bit } mat_0_q0 { I 32 vector } mat_0_address1 { O 5 vector } mat_0_ce1 { O 1 bit } mat_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 322 \
    name mat_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_1 \
    op interface \
    ports { mat_1_address0 { O 5 vector } mat_1_ce0 { O 1 bit } mat_1_q0 { I 32 vector } mat_1_address1 { O 5 vector } mat_1_ce1 { O 1 bit } mat_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 323 \
    name mat_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_2 \
    op interface \
    ports { mat_2_address0 { O 5 vector } mat_2_ce0 { O 1 bit } mat_2_q0 { I 32 vector } mat_2_address1 { O 5 vector } mat_2_ce1 { O 1 bit } mat_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 324 \
    name mat_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_3 \
    op interface \
    ports { mat_3_address0 { O 5 vector } mat_3_ce0 { O 1 bit } mat_3_q0 { I 32 vector } mat_3_address1 { O 5 vector } mat_3_ce1 { O 1 bit } mat_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 325 \
    name mat_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_4 \
    op interface \
    ports { mat_4_address0 { O 5 vector } mat_4_ce0 { O 1 bit } mat_4_q0 { I 32 vector } mat_4_address1 { O 5 vector } mat_4_ce1 { O 1 bit } mat_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 326 \
    name mat_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_5 \
    op interface \
    ports { mat_5_address0 { O 5 vector } mat_5_ce0 { O 1 bit } mat_5_q0 { I 32 vector } mat_5_address1 { O 5 vector } mat_5_ce1 { O 1 bit } mat_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 327 \
    name mat_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_6 \
    op interface \
    ports { mat_6_address0 { O 5 vector } mat_6_ce0 { O 1 bit } mat_6_q0 { I 32 vector } mat_6_address1 { O 5 vector } mat_6_ce1 { O 1 bit } mat_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 328 \
    name mat_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_7 \
    op interface \
    ports { mat_7_address0 { O 5 vector } mat_7_ce0 { O 1 bit } mat_7_q0 { I 32 vector } mat_7_address1 { O 5 vector } mat_7_ce1 { O 1 bit } mat_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 329 \
    name mat_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_8 \
    op interface \
    ports { mat_8_address0 { O 5 vector } mat_8_ce0 { O 1 bit } mat_8_q0 { I 32 vector } mat_8_address1 { O 5 vector } mat_8_ce1 { O 1 bit } mat_8_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 330 \
    name mat_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_9 \
    op interface \
    ports { mat_9_address0 { O 5 vector } mat_9_ce0 { O 1 bit } mat_9_q0 { I 32 vector } mat_9_address1 { O 5 vector } mat_9_ce1 { O 1 bit } mat_9_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 331 \
    name mat_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_10 \
    op interface \
    ports { mat_10_address0 { O 5 vector } mat_10_ce0 { O 1 bit } mat_10_q0 { I 32 vector } mat_10_address1 { O 5 vector } mat_10_ce1 { O 1 bit } mat_10_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 332 \
    name mat_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_11 \
    op interface \
    ports { mat_11_address0 { O 5 vector } mat_11_ce0 { O 1 bit } mat_11_q0 { I 32 vector } mat_11_address1 { O 5 vector } mat_11_ce1 { O 1 bit } mat_11_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 333 \
    name mat_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_12 \
    op interface \
    ports { mat_12_address0 { O 5 vector } mat_12_ce0 { O 1 bit } mat_12_q0 { I 32 vector } mat_12_address1 { O 5 vector } mat_12_ce1 { O 1 bit } mat_12_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 334 \
    name mat_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_13 \
    op interface \
    ports { mat_13_address0 { O 5 vector } mat_13_ce0 { O 1 bit } mat_13_q0 { I 32 vector } mat_13_address1 { O 5 vector } mat_13_ce1 { O 1 bit } mat_13_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 335 \
    name mat_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_14 \
    op interface \
    ports { mat_14_address0 { O 5 vector } mat_14_ce0 { O 1 bit } mat_14_q0 { I 32 vector } mat_14_address1 { O 5 vector } mat_14_ce1 { O 1 bit } mat_14_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 336 \
    name mat_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_15 \
    op interface \
    ports { mat_15_address0 { O 5 vector } mat_15_ce0 { O 1 bit } mat_15_q0 { I 32 vector } mat_15_address1 { O 5 vector } mat_15_ce1 { O 1 bit } mat_15_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 337 \
    name mat_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_16 \
    op interface \
    ports { mat_16_address0 { O 5 vector } mat_16_ce0 { O 1 bit } mat_16_q0 { I 32 vector } mat_16_address1 { O 5 vector } mat_16_ce1 { O 1 bit } mat_16_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 338 \
    name mat_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_17 \
    op interface \
    ports { mat_17_address0 { O 5 vector } mat_17_ce0 { O 1 bit } mat_17_q0 { I 32 vector } mat_17_address1 { O 5 vector } mat_17_ce1 { O 1 bit } mat_17_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 339 \
    name mat_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_18 \
    op interface \
    ports { mat_18_address0 { O 5 vector } mat_18_ce0 { O 1 bit } mat_18_q0 { I 32 vector } mat_18_address1 { O 5 vector } mat_18_ce1 { O 1 bit } mat_18_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 340 \
    name mat_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_19 \
    op interface \
    ports { mat_19_address0 { O 5 vector } mat_19_ce0 { O 1 bit } mat_19_q0 { I 32 vector } mat_19_address1 { O 5 vector } mat_19_ce1 { O 1 bit } mat_19_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 341 \
    name mat_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_20 \
    op interface \
    ports { mat_20_address0 { O 5 vector } mat_20_ce0 { O 1 bit } mat_20_q0 { I 32 vector } mat_20_address1 { O 5 vector } mat_20_ce1 { O 1 bit } mat_20_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 342 \
    name mat_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_21 \
    op interface \
    ports { mat_21_address0 { O 5 vector } mat_21_ce0 { O 1 bit } mat_21_q0 { I 32 vector } mat_21_address1 { O 5 vector } mat_21_ce1 { O 1 bit } mat_21_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 343 \
    name mat_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_22 \
    op interface \
    ports { mat_22_address0 { O 5 vector } mat_22_ce0 { O 1 bit } mat_22_q0 { I 32 vector } mat_22_address1 { O 5 vector } mat_22_ce1 { O 1 bit } mat_22_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 344 \
    name mat_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_23 \
    op interface \
    ports { mat_23_address0 { O 5 vector } mat_23_ce0 { O 1 bit } mat_23_q0 { I 32 vector } mat_23_address1 { O 5 vector } mat_23_ce1 { O 1 bit } mat_23_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 345 \
    name mat_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_24 \
    op interface \
    ports { mat_24_address0 { O 5 vector } mat_24_ce0 { O 1 bit } mat_24_q0 { I 32 vector } mat_24_address1 { O 5 vector } mat_24_ce1 { O 1 bit } mat_24_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 346 \
    name mat_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_25 \
    op interface \
    ports { mat_25_address0 { O 5 vector } mat_25_ce0 { O 1 bit } mat_25_q0 { I 32 vector } mat_25_address1 { O 5 vector } mat_25_ce1 { O 1 bit } mat_25_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 347 \
    name mat_26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_26 \
    op interface \
    ports { mat_26_address0 { O 5 vector } mat_26_ce0 { O 1 bit } mat_26_q0 { I 32 vector } mat_26_address1 { O 5 vector } mat_26_ce1 { O 1 bit } mat_26_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 348 \
    name mat_27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_27 \
    op interface \
    ports { mat_27_address0 { O 5 vector } mat_27_ce0 { O 1 bit } mat_27_q0 { I 32 vector } mat_27_address1 { O 5 vector } mat_27_ce1 { O 1 bit } mat_27_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 349 \
    name mat_28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_28 \
    op interface \
    ports { mat_28_address0 { O 5 vector } mat_28_ce0 { O 1 bit } mat_28_q0 { I 32 vector } mat_28_address1 { O 5 vector } mat_28_ce1 { O 1 bit } mat_28_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 350 \
    name mat_29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_29 \
    op interface \
    ports { mat_29_address0 { O 5 vector } mat_29_ce0 { O 1 bit } mat_29_q0 { I 32 vector } mat_29_address1 { O 5 vector } mat_29_ce1 { O 1 bit } mat_29_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 351 \
    name mat_30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_30 \
    op interface \
    ports { mat_30_address0 { O 5 vector } mat_30_ce0 { O 1 bit } mat_30_q0 { I 32 vector } mat_30_address1 { O 5 vector } mat_30_ce1 { O 1 bit } mat_30_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 352 \
    name mat1_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_0 \
    op interface \
    ports { mat1_0_address0 { O 5 vector } mat1_0_ce0 { O 1 bit } mat1_0_q0 { I 32 vector } mat1_0_address1 { O 5 vector } mat1_0_ce1 { O 1 bit } mat1_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 353 \
    name mat1_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_1 \
    op interface \
    ports { mat1_1_address0 { O 5 vector } mat1_1_ce0 { O 1 bit } mat1_1_q0 { I 32 vector } mat1_1_address1 { O 5 vector } mat1_1_ce1 { O 1 bit } mat1_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 354 \
    name mat1_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_2 \
    op interface \
    ports { mat1_2_address0 { O 5 vector } mat1_2_ce0 { O 1 bit } mat1_2_q0 { I 32 vector } mat1_2_address1 { O 5 vector } mat1_2_ce1 { O 1 bit } mat1_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 355 \
    name mat1_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_3 \
    op interface \
    ports { mat1_3_address0 { O 5 vector } mat1_3_ce0 { O 1 bit } mat1_3_q0 { I 32 vector } mat1_3_address1 { O 5 vector } mat1_3_ce1 { O 1 bit } mat1_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 356 \
    name mat1_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_4 \
    op interface \
    ports { mat1_4_address0 { O 5 vector } mat1_4_ce0 { O 1 bit } mat1_4_q0 { I 32 vector } mat1_4_address1 { O 5 vector } mat1_4_ce1 { O 1 bit } mat1_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 357 \
    name mat1_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_5 \
    op interface \
    ports { mat1_5_address0 { O 5 vector } mat1_5_ce0 { O 1 bit } mat1_5_q0 { I 32 vector } mat1_5_address1 { O 5 vector } mat1_5_ce1 { O 1 bit } mat1_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 358 \
    name mat1_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_6 \
    op interface \
    ports { mat1_6_address0 { O 5 vector } mat1_6_ce0 { O 1 bit } mat1_6_q0 { I 32 vector } mat1_6_address1 { O 5 vector } mat1_6_ce1 { O 1 bit } mat1_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 359 \
    name mat1_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_7 \
    op interface \
    ports { mat1_7_address0 { O 5 vector } mat1_7_ce0 { O 1 bit } mat1_7_q0 { I 32 vector } mat1_7_address1 { O 5 vector } mat1_7_ce1 { O 1 bit } mat1_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 360 \
    name mat1_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_8 \
    op interface \
    ports { mat1_8_address0 { O 5 vector } mat1_8_ce0 { O 1 bit } mat1_8_q0 { I 32 vector } mat1_8_address1 { O 5 vector } mat1_8_ce1 { O 1 bit } mat1_8_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 361 \
    name mat1_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_9 \
    op interface \
    ports { mat1_9_address0 { O 5 vector } mat1_9_ce0 { O 1 bit } mat1_9_q0 { I 32 vector } mat1_9_address1 { O 5 vector } mat1_9_ce1 { O 1 bit } mat1_9_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 362 \
    name mat1_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_10 \
    op interface \
    ports { mat1_10_address0 { O 5 vector } mat1_10_ce0 { O 1 bit } mat1_10_q0 { I 32 vector } mat1_10_address1 { O 5 vector } mat1_10_ce1 { O 1 bit } mat1_10_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 363 \
    name mat1_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_11 \
    op interface \
    ports { mat1_11_address0 { O 5 vector } mat1_11_ce0 { O 1 bit } mat1_11_q0 { I 32 vector } mat1_11_address1 { O 5 vector } mat1_11_ce1 { O 1 bit } mat1_11_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 364 \
    name mat1_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_12 \
    op interface \
    ports { mat1_12_address0 { O 5 vector } mat1_12_ce0 { O 1 bit } mat1_12_q0 { I 32 vector } mat1_12_address1 { O 5 vector } mat1_12_ce1 { O 1 bit } mat1_12_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 365 \
    name mat1_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_13 \
    op interface \
    ports { mat1_13_address0 { O 5 vector } mat1_13_ce0 { O 1 bit } mat1_13_q0 { I 32 vector } mat1_13_address1 { O 5 vector } mat1_13_ce1 { O 1 bit } mat1_13_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 366 \
    name mat1_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_14 \
    op interface \
    ports { mat1_14_address0 { O 5 vector } mat1_14_ce0 { O 1 bit } mat1_14_q0 { I 32 vector } mat1_14_address1 { O 5 vector } mat1_14_ce1 { O 1 bit } mat1_14_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 367 \
    name mat1_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_15 \
    op interface \
    ports { mat1_15_address0 { O 5 vector } mat1_15_ce0 { O 1 bit } mat1_15_q0 { I 32 vector } mat1_15_address1 { O 5 vector } mat1_15_ce1 { O 1 bit } mat1_15_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 368 \
    name mat1_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_16 \
    op interface \
    ports { mat1_16_address0 { O 5 vector } mat1_16_ce0 { O 1 bit } mat1_16_q0 { I 32 vector } mat1_16_address1 { O 5 vector } mat1_16_ce1 { O 1 bit } mat1_16_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 369 \
    name mat1_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_17 \
    op interface \
    ports { mat1_17_address0 { O 5 vector } mat1_17_ce0 { O 1 bit } mat1_17_q0 { I 32 vector } mat1_17_address1 { O 5 vector } mat1_17_ce1 { O 1 bit } mat1_17_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 370 \
    name mat1_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_18 \
    op interface \
    ports { mat1_18_address0 { O 5 vector } mat1_18_ce0 { O 1 bit } mat1_18_q0 { I 32 vector } mat1_18_address1 { O 5 vector } mat1_18_ce1 { O 1 bit } mat1_18_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 371 \
    name mat1_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_19 \
    op interface \
    ports { mat1_19_address0 { O 5 vector } mat1_19_ce0 { O 1 bit } mat1_19_q0 { I 32 vector } mat1_19_address1 { O 5 vector } mat1_19_ce1 { O 1 bit } mat1_19_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 372 \
    name mat1_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_20 \
    op interface \
    ports { mat1_20_address0 { O 5 vector } mat1_20_ce0 { O 1 bit } mat1_20_q0 { I 32 vector } mat1_20_address1 { O 5 vector } mat1_20_ce1 { O 1 bit } mat1_20_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 373 \
    name mat1_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_21 \
    op interface \
    ports { mat1_21_address0 { O 5 vector } mat1_21_ce0 { O 1 bit } mat1_21_q0 { I 32 vector } mat1_21_address1 { O 5 vector } mat1_21_ce1 { O 1 bit } mat1_21_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 374 \
    name mat1_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_22 \
    op interface \
    ports { mat1_22_address0 { O 5 vector } mat1_22_ce0 { O 1 bit } mat1_22_q0 { I 32 vector } mat1_22_address1 { O 5 vector } mat1_22_ce1 { O 1 bit } mat1_22_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 375 \
    name mat1_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_23 \
    op interface \
    ports { mat1_23_address0 { O 5 vector } mat1_23_ce0 { O 1 bit } mat1_23_q0 { I 32 vector } mat1_23_address1 { O 5 vector } mat1_23_ce1 { O 1 bit } mat1_23_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 376 \
    name mat1_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_24 \
    op interface \
    ports { mat1_24_address0 { O 5 vector } mat1_24_ce0 { O 1 bit } mat1_24_q0 { I 32 vector } mat1_24_address1 { O 5 vector } mat1_24_ce1 { O 1 bit } mat1_24_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 377 \
    name mat1_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_25 \
    op interface \
    ports { mat1_25_address0 { O 5 vector } mat1_25_ce0 { O 1 bit } mat1_25_q0 { I 32 vector } mat1_25_address1 { O 5 vector } mat1_25_ce1 { O 1 bit } mat1_25_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 378 \
    name mat1_26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_26 \
    op interface \
    ports { mat1_26_address0 { O 5 vector } mat1_26_ce0 { O 1 bit } mat1_26_q0 { I 32 vector } mat1_26_address1 { O 5 vector } mat1_26_ce1 { O 1 bit } mat1_26_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 379 \
    name mat1_27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_27 \
    op interface \
    ports { mat1_27_address0 { O 5 vector } mat1_27_ce0 { O 1 bit } mat1_27_q0 { I 32 vector } mat1_27_address1 { O 5 vector } mat1_27_ce1 { O 1 bit } mat1_27_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 380 \
    name mat1_28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_28 \
    op interface \
    ports { mat1_28_address0 { O 5 vector } mat1_28_ce0 { O 1 bit } mat1_28_q0 { I 32 vector } mat1_28_address1 { O 5 vector } mat1_28_ce1 { O 1 bit } mat1_28_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 381 \
    name mat1_29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_29 \
    op interface \
    ports { mat1_29_address0 { O 5 vector } mat1_29_ce0 { O 1 bit } mat1_29_q0 { I 32 vector } mat1_29_address1 { O 5 vector } mat1_29_ce1 { O 1 bit } mat1_29_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 382 \
    name mat1_30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat1_30 \
    op interface \
    ports { mat1_30_address0 { O 5 vector } mat1_30_ce0 { O 1 bit } mat1_30_q0 { I 32 vector } mat1_30_address1 { O 5 vector } mat1_30_ce1 { O 1 bit } mat1_30_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat1_30'"
}
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


