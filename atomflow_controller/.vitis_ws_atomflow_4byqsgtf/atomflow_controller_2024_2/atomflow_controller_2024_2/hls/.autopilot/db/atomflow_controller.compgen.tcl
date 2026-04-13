# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_emissions_local_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_stateArray_data_s_RAM_2P_BRAM_1R1W BINDTYPE {storage} TYPE {ram_2p} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_gmem0_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_gmem5_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_gmem1_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_gmem6_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_gmem3_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_gmem4_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_control {
mode { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
emission_threshold { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
atomLocationsSize { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
projShape0 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
projShape1 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
atomLocations { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 56
	offset_end 67
}
psfSupersample { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 68
	offset_end 75
}
imageProjectionSize { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 76
	offset_end 83
}
imageProjs_local { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 84
	offset_end 95
}
imageProjs { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 96
	offset_end 107
}
imageProjs_local_size { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 108
	offset_end 119
}
fullImage { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 120
	offset_end 131
}
fullImage_rows { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 132
	offset_end 139
}
fullImage_cols { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 140
	offset_end 147
}
emissions { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 148
	offset_end 159
}
grid_rows { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 160
	offset_end 167
}
grid_cols { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 168
	offset_end 175
}
targetGeometry_mem { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 176
	offset_end 187
}
compZoneRowStart { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 188
	offset_end 195
}
compZoneRowEnd { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 196
	offset_end 203
}
compZoneColStart { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 204
	offset_end 211
}
compZoneColEnd { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 212
	offset_end 219
}
moveCount { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 220
	offset_end 227
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 951 \
			corename atomflow_controller_control_axilite \
			name atomflow_controller_control_s_axi \
			ports {$port_control} \
			op interface \
			interrupt_clear_mode TOW \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 1 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'control'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_control_s_axi BINDTYPE interface TYPE interface_s_axilite
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 952 \
    name moveStream \
    reset_level 0 \
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



# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
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
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
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


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler atomflow_controller_regslice_both BINDTYPE {interface} TYPE {adapter} IMPL {reg_slice}
}


