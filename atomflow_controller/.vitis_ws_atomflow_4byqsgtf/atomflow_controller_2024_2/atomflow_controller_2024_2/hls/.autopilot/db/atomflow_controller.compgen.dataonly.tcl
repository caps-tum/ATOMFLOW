# This script segment is generated automatically by AutoPilot

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


