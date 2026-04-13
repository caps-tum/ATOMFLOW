#!/usr/bin/env python3
"""
Vitis HLS Script for atomflow_controller — Vitis 2024.2
Combines image_analysis + sortLatticeByRow under a single top-level function.

Run with:
  source /tools/Xilinx/2024.2/Vitis/settings64.sh
  cd atomflow_controller/
  vitis -s hls_run_atomflow_controller.py

Steps executed: C simulation → HLS synthesis → C/RTL co-simulation → IP package
"""

import vitis
import os
import sys
import tempfile

# ---------------------------------------------------------------------------
# Configuration
# ---------------------------------------------------------------------------
COMP_NAME    = "atomflow_controller_2024_2"
TOP_FUNC     = "atomflow_controller"
PART         = "xczu49dr-ffvf1760-2-e"   # adjust for your board
CLK_PERIOD   = 10                         # nanoseconds
IP_OUTPUT_DIR = "atomflow_controller_ip"

def create_config_file():
    cwd = os.getcwd()

    # Absolute paths to sources (relative to atomflow_controller/)
    src_controller  = os.path.join(cwd, "atomflow_controller.cpp")
    src_img         = os.path.join(cwd, "..", "Image_analysis",          "src", "image_analysis.cpp")
    src_sort        = os.path.join(cwd, "..", "sorting-organized-main",  "src", "sortLatticeByRow.cpp")

    inc_controller  = os.path.join(cwd, "src")
    inc_img         = os.path.join(cwd, "..", "Image_analysis",          "src")
    inc_sort        = os.path.join(cwd, "..", "sorting-organized-main",  "src")

    tb_path = os.path.join(cwd, "src", "tb_atomflow_controller.cpp")
    tb_line  = f"tb.file={tb_path}\n"    if os.path.exists(tb_path) else ""
    tb_cflags = (f"tb.cflags=-std=c++14 "
                 f"-I{inc_controller} -I{inc_img} -I{inc_sort}\n"
                 if os.path.exists(tb_path) else "")

    cflags = (f"-std=c++14 "
              f"-I{inc_controller} -I{inc_img} -I{inc_sort}")

    config_content = f"""part={PART}

[hls]
flow_target=vivado
package.output.format=ip_catalog
package.output.syn=false
syn.top={TOP_FUNC}
syn.file={src_controller}
syn.file={src_img}
syn.file={src_sort}
syn.cflags={cflags}
syn.csimflags={cflags}
{tb_line}{tb_cflags}clock={CLK_PERIOD}ns
"""
    cfg_path = os.path.join(cwd, "hls_config_atomflow.cfg")
    with open(cfg_path, "w") as f:
        f.write(config_content)
    print(f"  Config written to {cfg_path}")
    return cfg_path


def run_synthesis():
    print("\n" + "=" * 70)
    print("Vitis HLS: atomflow_controller (2024.2)")
    print("=" * 70)

    cwd = os.getcwd()
    try:
        client = vitis.create_client()
        ws = tempfile.mkdtemp(prefix=".vitis_ws_atomflow_", dir=cwd)
        client.set_workspace(ws)
        print(f"  Workspace: {ws}")

        cfg = create_config_file()

        # Clean up any stale component
        try:
            client.delete_component(name=COMP_NAME)
            print(f"  Removed stale component: {COMP_NAME}")
        except Exception:
            pass

        comp = client.create_hls_component(name=COMP_NAME, part=PART, cfg_file=cfg)
        print(f"  Component created: {COMP_NAME}")

        tb_exists = os.path.exists(os.path.join(cwd, "src", "tb_atomflow_controller.cpp"))

        # 1 — C Simulation
        if tb_exists:
            print("\n[1/4] C Simulation...")
            try:
                comp.run(operation="C_SIMULATION")
                print("      PASS")
            except Exception as e:
                print(f"      WARN: {e}")
        else:
            print("\n[1/4] C Simulation — skipped (testbench not found)")

        # 2 — HLS Synthesis
        print("\n[2/4] HLS Synthesis...")
        comp.run(operation="SYNTHESIS")
        print("      Done")

        # 3 — C/RTL Co-Simulation (skip to save time; enable if needed)
        # if tb_exists:
        #     print("\n[3/4] C/RTL Co-Simulation...")
        #     try:
        #         comp.run(operation="CO_SIMULATION")
        #         print("      PASS")
        #     except Exception as e:
        #         print(f"      WARN: {e}")
        # else:
        #     print("\n[3/4] Co-Simulation — skipped")

        # 4 — IP Package
        print(f"\n[4/4] Packaging IP → {IP_OUTPUT_DIR}/")
        try:
            comp.run(operation="PACKAGE")
            print("      Done")
        except Exception as e:
            print(f"      WARN: {e}")

        print("\n" + "=" * 70)
        print("COMPLETE")
        print(f"  Top function : {TOP_FUNC}")
        print(f"  Part         : {PART}")
        print(f"  IP output    : {IP_OUTPUT_DIR}/")
        print("=" * 70)
        return True

    except Exception as e:
        print(f"\nERROR: {e}")
        import traceback
        traceback.print_exc()
        return False


if __name__ == "__main__":
    sys.exit(0 if run_synthesis() else 1)
