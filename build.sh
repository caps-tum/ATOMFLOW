#!/usr/bin/env bash
#
# One-command build: HLS -> IP -> block design -> bitstream -> manifest.
#
#   ./build.sh test        C++ testbench only (no Xilinx tools needed)
#   ./build.sh hls         C simulation + synthesis + package IP
#   ./build.sh bitstream   Vivado project + block design + implementation
#   ./build.sh manifest    record SHA256 / commit / tool versions
#   ./build.sh all         everything above, in order
#
# Every stage exits non-zero on failure; nothing is allowed to print success
# after a step that did not succeed. All paths derive from this script's
# location, so it can be run from any working directory.

set -euo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUILD="$REPO/build"
RELEASE="$REPO/release"
PART="xczu49dr-ffvf1760-2-e"
BOARD="xilinx.com:zcu216:part0:2.0"
TOP="atomflow_controller"

# Override if your install lives elsewhere:
#   XILINX_ROOT=/tools/Xilinx ./build.sh all
XILINX_ROOT="${XILINX_ROOT:-/opt/xilinx/vivado-2024.2}"
VITIS_HLS="${VITIS_HLS:-$XILINX_ROOT/Vitis_HLS/2024.2/bin/vitis_hls}"
VIVADO="${VIVADO:-$XILINX_ROOT/Vivado/2024.2/bin/vivado}"
HLS_INC="${HLS_INC:-$XILINX_ROOT/Vitis/2024.2/include}"

SRC=(
  "$REPO/atomflow_controller/atomflow_controller.cpp"
  "$REPO/Image_analysis/src/image_analysis.cpp"
  "$REPO/sorting-organized-main/src/sortLatticeByRow.cpp"
)
INC=(
  "-I$REPO/atomflow_controller/src"
  "-I$REPO/Image_analysis/src"
  "-I$REPO/sorting-organized-main/src"
)

log()  { printf '\n=== %s ===\n' "$*"; }
die()  { printf 'ERROR: %s\n' "$*" >&2; exit 1; }
need() { [ -x "$1" ] || die "not executable: $1 (set XILINX_ROOT, VITIS_HLS or VIVADO)"; }

# ---------------------------------------------------------------- test
stage_test() {
  log "C++ testbench"
  [ -d "$HLS_INC" ] || die "HLS headers not found: $HLS_INC"
  mkdir -p "$BUILD"
  g++ -std=c++14 -O1 -I"$HLS_INC" "${INC[@]}" \
      "${SRC[@]}" "$REPO/atomflow_controller/src/tb_${TOP}.cpp" \
      -o "$BUILD/tb" || die "testbench failed to compile"
  # The testbench resolves its fixtures relative to the repo root.
  ( cd "$REPO" && "$BUILD/tb" ) || die "testbench FAILED"
  log "testbench passed"
}

# ---------------------------------------------------------------- hls
stage_hls() {
  need "$VITIS_HLS"
  log "Vitis HLS: C simulation, synthesis, IP packaging"
  mkdir -p "$BUILD/hls"
  # csim_design and export_design both abort the script on failure because of
  # the -f/exit contract plus `set -e`; do not wrap them in catch.
  cat > "$BUILD/hls/run.tcl" <<TCL
open_project -reset ${TOP}_hls
set_top $TOP
set cflags "-std=c++14 ${INC[*]}"
add_files ${SRC[0]} -cflags \$cflags
add_files ${SRC[1]} -cflags \$cflags
add_files ${SRC[2]} -cflags \$cflags
add_files -tb $REPO/atomflow_controller/src/tb_${TOP}.cpp -cflags \$cflags
open_solution -reset sol1
set_part $PART
create_clock -period 10ns
csim_design
csynth_design
export_design -format ip_catalog -vendor xilinx.com -library hls -version 1.0 \\
              -display_name "AtomFlow Controller"
exit
TCL
  ( cd "$BUILD/hls" && "$VITIS_HLS" -f run.tcl ) || die "Vitis HLS failed (see $BUILD/hls/vitis_hls.log)"

  # Locate the packaged IP: export_design writes it under the solution's impl/ip.
  IP_DIR="$(find "$BUILD/hls" -type d -path '*/impl/ip' -print -quit)"
  [ -n "$IP_DIR" ] || die "IP directory not produced by export_design"
  [ -f "$IP_DIR/component.xml" ] || die "no component.xml in $IP_DIR"
  echo "$IP_DIR" > "$BUILD/ip_path.txt"
  log "IP packaged: $IP_DIR"
}

# ---------------------------------------------------------------- bitstream
stage_bitstream() {
  need "$VIVADO"
  [ -f "$BUILD/ip_path.txt" ] || die "run './build.sh hls' first (no $BUILD/ip_path.txt)"
  IP_DIR="$(cat "$BUILD/ip_path.txt")"
  [ -f "$IP_DIR/component.xml" ] || die "packaged IP missing: $IP_DIR"

  log "Vivado: project, block design, implementation"
  rm -rf "$BUILD/vivado"
  mkdir -p "$BUILD/vivado"
  cat > "$BUILD/vivado/run.tcl" <<TCL
create_project atomflow_system "$BUILD/vivado/proj" -part $PART -force
set_property BOARD_PART $BOARD [current_project]

# create_bd.tcl instantiates xilinx.com:hls:${TOP}:1.0 but does not register a
# repository for it, so point the catalog at the freshly packaged IP here.
set_property ip_repo_paths [list "$IP_DIR"] [current_project]
update_ip_catalog -rebuild
if {[llength [get_ipdefs -quiet xilinx.com:hls:${TOP}:1.0]] == 0} {
    puts "ERROR: xilinx.com:hls:${TOP}:1.0 not in catalog after update_ip_catalog"
    exit 1
}

source "$REPO/atomflow_controller/create_bd.tcl"

set bd [get_files -quiet *design_1.bd]
if {\$bd eq ""} { puts "ERROR: block design not created"; exit 1 }
generate_target all \$bd
make_wrapper -files \$bd -top
add_files -norecurse [file join [get_property directory [current_project]] \\
    "[current_project].gen" sources_1 bd design_1 hdl design_1_wrapper.v]
set_property top design_1_wrapper [current_fileset]
update_compile_order -fileset sources_1

launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
if {[get_property PROGRESS [get_runs impl_1]] != "100%"} {
    puts "ERROR: implementation did not complete"
    exit 1
}

# Timing must close, or the bitstream is not usable even though it exists.
open_run impl_1
set wns [get_property SLACK [get_timing_paths -delay_type max]]
puts "TIMING: worst negative slack = \$wns ns"
if {\$wns < 0} { puts "ERROR: timing not met (WNS = \$wns ns)"; exit 1 }

file mkdir "$RELEASE"
set bit [glob -nocomplain "$BUILD/vivado/proj/*.runs/impl_1/*.bit"]
set hwh [glob -nocomplain "$BUILD/vivado/proj/*.gen/sources_1/bd/design_1/hw_handoff/design_1.hwh"]
if {\$bit eq "" || \$hwh eq ""} { puts "ERROR: bit or hwh not found"; exit 1 }
file copy -force [lindex \$bit 0] "$RELEASE/design_1.bit"
file copy -force [lindex \$hwh 0] "$RELEASE/design_1.hwh"
puts "BITSTREAM: $RELEASE/design_1.bit"
exit 0
TCL
  ( cd "$BUILD/vivado" && "$VIVADO" -mode batch -source run.tcl -notrace ) \
      || die "Vivado failed (see $BUILD/vivado/vivado.log)"
  [ -f "$RELEASE/design_1.bit" ] || die "no bitstream produced"
  log "bitstream: $RELEASE/design_1.bit"
  # The binaries are deliberately not tracked by git (see .gitignore); only
  # release/manifest.json is, and it identifies them by SHA256.
  echo "  Copy to the board together -- Overlay() reads the .hwh next to the .bit:"
  echo "    scp $RELEASE/design_1.{bit,hwh} $RELEASE/manifest.json <board>:~/atomflow/"
}

# ---------------------------------------------------------------- manifest
stage_manifest() {
  log "manifest"
  local args=()
  [ -f "$RELEASE/design_1.bit" ] && args+=(--bit "$RELEASE/design_1.bit")
  [ -f "$RELEASE/design_1.hwh" ] && args+=(--hwh "$RELEASE/design_1.hwh")
  python3 "$REPO/tools/make_manifest.py" "${args[@]}" \
      --out "$RELEASE/manifest.json" || die "manifest reported a problem"
}

case "${1:-all}" in
  test)      stage_test ;;
  hls)       stage_hls ;;
  bitstream) stage_bitstream ;;
  manifest)  stage_manifest ;;
  all)       stage_test; stage_hls; stage_bitstream; stage_manifest
             log "ALL STAGES COMPLETE"
             echo "  bitstream : $RELEASE/design_1.bit"
             echo "  handoff   : $RELEASE/design_1.hwh"
             echo "  manifest  : $RELEASE/manifest.json" ;;
  *)         die "unknown stage '${1}'. Use: test | hls | bitstream | manifest | all" ;;
esac
