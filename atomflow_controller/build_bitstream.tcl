# build_bitstream.tcl — Recreate BD, synthesize, implement, generate bitstream
# Usage: vivado -mode batch -source build_bitstream.tcl

# Step 0: Open or recreate project
# Option A: open existing project
# open_project ./vivado_project/atomflow_system.xpr

# Option B: recreate from exported TCL (uncomment and adjust path)
# source recreate_project.tcl

# Step 1: Generate block design output products
generate_target all [get_files *.bd]
# If wrapper doesn't exist yet:
# make_wrapper -files [get_files *.bd] -top

# Step 2: Synthesis
launch_runs synth_1 -jobs 8
wait_on_run synth_1
if {[get_property STATUS [get_runs synth_1]] != "synth_design Complete!"} {
    puts "ERROR: Synthesis failed"
    exit 1
}

# Step 3: Implementation
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
if {[get_property STATUS [get_runs impl_1]] != "write_bitstream Complete!"} {
    puts "ERROR: Implementation/bitstream failed"
    exit 1
}

# Step 4: Copy outputs
set bit_file [glob -nocomplain ./vivado_project/*.runs/impl_1/*.bit]
set hwh_file [glob -nocomplain ./vivado_project/*.gen/sources_1/bd/*/hw_handoff/*.hwh]
if {$bit_file ne ""} {
    file copy -force $bit_file ./atomflow_system_wrapper.bit
    puts "Bitstream: ./atomflow_system_wrapper.bit"
}
if {$hwh_file ne ""} {
    file copy -force $hwh_file ./atomflow_system_wrapper.hwh
    puts "HWH:       ./atomflow_system_wrapper.hwh"
}

puts "Done!"
