# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
# Tool Version Limit: 2024.11
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
source -notrace "/tools/Xilinx/Vitis/2024.2/common/scripts/ipxhls.tcl"
set ip_dir "/home/xiaorang/Documents/ATOMFLOW/atomflow_controller/.vitis_ws_atomflow_mpl4mjhg/atomflow_controller_2024_2/atomflow_controller_2024_2/hls/impl/ip"
set data_file "/home/xiaorang/Documents/ATOMFLOW/atomflow_controller/.vitis_ws_atomflow_mpl4mjhg/atomflow_controller_2024_2/atomflow_controller_2024_2/hls/hls_data.json"
set ip_types "vitis sysgen"
if { [catch {::ipx::utils::package_hls_ip $ip_dir $data_file $ip_types } res] } {
  puts "Caught error:\n$::errorInfo"
  error $res
}
