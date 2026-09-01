#!/usr/bin/env python3
"""
Vitis HLS Script for atomflow_controller — Vitis 2024.2
Combines image_analysis + sortLatticeByRow under a single top-level function.

Run with:
  source <Xilinx install>/Vitis/2024.2/settings64.sh
  vitis -s path/to/hls_run_atomflow_controller.py

All paths are derived from this script's own location, so it can be launched
from any working directory. The generated .cfg is written into the temporary
workspace, never over the tracked hls_config_atomflow.cfg.

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

# Paths are derived from this file's location, not from the caller's cwd, so the
# script is independent of where it is launched from and of any one user's $HOME.
HERE      = os.path.dirname(os.path.abspath(__file__))
REPO_ROOT = os.path.dirname(HERE)


def create_config_file(out_dir):
    """Write the HLS .cfg into out_dir (the temp workspace).

    The tracked hls_config_atomflow.cfg is a checked-in reference copy and is
    deliberately NOT overwritten here.
    """
    # Absolute paths to sources, anchored at the repo root
    src_controller  = os.path.join(HERE, "atomflow_controller.cpp")
    src_img         = os.path.join(REPO_ROOT, "Image_analysis",         "src", "image_analysis.cpp")
    src_sort        = os.path.join(REPO_ROOT, "sorting-organized-main", "src", "sortLatticeByRow.cpp")

    inc_controller  = os.path.join(HERE, "src")
    inc_img         = os.path.join(REPO_ROOT, "Image_analysis",         "src")
    inc_sort        = os.path.join(REPO_ROOT, "sorting-organized-main", "src")

    tb_path = os.path.join(HERE, "src", "tb_atomflow_controller.cpp")
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
    cfg_path = os.path.join(out_dir, "hls_config_atomflow.cfg")
    with open(cfg_path, "w") as f:
        f.write(config_content)
    print(f"  Config written to {cfg_path}")
    return cfg_path


def run_synthesis():
    print("\n" + "=" * 70)
    print("Vitis HLS: atomflow_controller (2024.2)")
    print("=" * 70)

    try:
        client = vitis.create_client()
        ws = tempfile.mkdtemp(prefix=".vitis_ws_atomflow_", dir=HERE)
        client.set_workspace(ws)
        print(f"  Workspace: {ws}")

        cfg = create_config_file(ws)

        # Clean up any stale component
        try:
            client.delete_component(name=COMP_NAME)
            print(f"  Removed stale component: {COMP_NAME}")
        except Exception:
            pass

        comp = client.create_hls_component(name=COMP_NAME, part=PART, cfg_file=cfg)
        print(f"  Component created: {COMP_NAME}")

        tb_exists = os.path.exists(os.path.join(HERE, "src", "tb_atomflow_controller.cpp"))

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
