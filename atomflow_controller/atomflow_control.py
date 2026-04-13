#!/usr/bin/env python3
"""
AtomFlow Controller — SSH-friendly driver script

Combines image analysis (reconstruct) + atom sorting into the single
`atomflow_controller` IP running on the FPGA. Designed to run over SSH
(no Jupyter kernel, no interactive plots — all figures saved to PNG/PDF).

Two modes:
  - MODE_QUBIT_READOUT  (0): image analysis only → read emissions
  - MODE_INITIALIZATION (1): image analysis + sorting → moves from AXI-Stream FIFO

Test configuration matches tb_atomflow_controller.cpp exactly.

Usage:
  sudo python3 atomflow_control.py
"""

import sys
import os
import struct
import time
import numpy as np

# Use non-interactive matplotlib backend for SSH
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt

from pynq import Overlay, allocate, MMIO


# =============================================================================
# 1. Register Map (from xatomflow_controller_hw.h)
# =============================================================================
# ap_ctrl
CTRL     = 0x00
AP_START = 1 << 0
AP_DONE  = 1 << 1
AP_IDLE  = 1 << 2
AP_READY = 1 << 3

# Scalars and m_axi pointers (interleaved)
MODE_OFFSET            = 0x10
THRESHOLD_OFFSET       = 0x18
ATOM_LOC_SIZE          = 0x20
PROJ_SHAPE0            = 0x28
PROJ_SHAPE1            = 0x30
ADDR_ATOM_LOC_LO       = 0x38
ADDR_ATOM_LOC_HI       = 0x3C
PSF_SUPER              = 0x44
IMG_PROJ_SIZE          = 0x4C
ADDR_PROJS_LOCAL_LO    = 0x54
ADDR_PROJS_LOCAL_HI    = 0x58
ADDR_IMAGE_PROJS_LO    = 0x60
ADDR_IMAGE_PROJS_HI    = 0x64
ADDR_PROJS_LOCAL_SZ_LO = 0x6C
ADDR_PROJS_LOCAL_SZ_HI = 0x70
ADDR_FULL_IMAGE_LO     = 0x78
ADDR_FULL_IMAGE_HI     = 0x7C
FULL_IMG_ROWS          = 0x84
FULL_IMG_COLS          = 0x8C
ADDR_EMISSIONS_LO      = 0x94
ADDR_EMISSIONS_HI      = 0x98
GRID_ROWS              = 0xA0
GRID_COLS              = 0xA8
ADDR_TARGET_GEO_LO     = 0xB0
ADDR_TARGET_GEO_HI     = 0xB4
COMP_ROW_START         = 0xBC
COMP_ROW_END           = 0xC4
COMP_COL_START         = 0xCC
COMP_COL_END           = 0xD4
MOVE_COUNT_REG         = 0xDC

MODE_QUBIT_READOUT  = 0
MODE_INITIALIZATION = 1

# AXI4-Stream FIFO (axi_fifo_mm_s)
FIFO_RDFR = 0x18   # reset
FIFO_RDFO = 0x1C   # occupancy (word count)
FIFO_RDFD = 0x20   # data
FIFO_RLR  = 0x24   # receive length (bytes)

# HLS constants
MAX_ATOM_SITES   = 2000
IMAGE_PROJ_SIZE  = 100
IMAGE_PROJ_LOCAL = 1000
FULL_IMAGE_SIZE  = 1024 * 1024

# ParallelMove layout (must match sortLatticeByRow.hpp)
MAX_STEPS          = 20
MAX_SEL            = 16
STEP_SIZE          = 66
PARALLEL_MOVE_SIZE = 1322
BEATS_PER_MOVE     = 21
BYTES_PER_MOVE     = BEATS_PER_MOVE * 64


# =============================================================================
# 2. Helpers
# =============================================================================
def write_addr64(mmio, lo_off, hi_off, addr):
    addr = int(addr)
    mmio.write(lo_off, addr & 0xFFFFFFFF)
    mmio.write(hi_off, (addr >> 32) & 0xFFFFFFFF)


def write_float(mmio, offset, val):
    bits = struct.unpack("<I", struct.pack("<f", float(val)))[0]
    mmio.write(offset, bits)


def write_all_registers(ctrl, mode, threshold, cfg):
    """Write every register the IP needs. `cfg` is a dict of runtime params."""
    ctrl.write(MODE_OFFSET, mode)
    write_float(ctrl, THRESHOLD_OFFSET, threshold)
    ctrl.write(ATOM_LOC_SIZE, cfg["atom_count"])
    ctrl.write(PROJ_SHAPE0, cfg["proj_shape0"])
    ctrl.write(PROJ_SHAPE1, cfg["proj_shape1"])
    write_addr64(ctrl, ADDR_ATOM_LOC_LO, ADDR_ATOM_LOC_HI, cfg["atomLocations_buf"].physical_address)
    ctrl.write(PSF_SUPER, cfg["psf_super"])
    ctrl.write(IMG_PROJ_SIZE, cfg["img_proj_sz"])
    write_addr64(ctrl, ADDR_PROJS_LOCAL_LO, ADDR_PROJS_LOCAL_HI, cfg["imageProjs_local_buf"].physical_address)
    write_addr64(ctrl, ADDR_IMAGE_PROJS_LO, ADDR_IMAGE_PROJS_HI, cfg["imageProjs_buf"].physical_address)
    write_addr64(ctrl, ADDR_PROJS_LOCAL_SZ_LO, ADDR_PROJS_LOCAL_SZ_HI, cfg["imageProjs_local_size_buf"].physical_address)
    write_addr64(ctrl, ADDR_FULL_IMAGE_LO, ADDR_FULL_IMAGE_HI, cfg["fullImage_buf"].physical_address)
    ctrl.write(FULL_IMG_ROWS, cfg["full_rows"])
    ctrl.write(FULL_IMG_COLS, cfg["full_cols"])
    write_addr64(ctrl, ADDR_EMISSIONS_LO, ADDR_EMISSIONS_HI, cfg["emissions_buf"].physical_address)
    ctrl.write(GRID_ROWS, cfg["GRID_R"])
    ctrl.write(GRID_COLS, cfg["GRID_C"])
    write_addr64(ctrl, ADDR_TARGET_GEO_LO, ADDR_TARGET_GEO_HI, cfg["targetGeometry_buf"].physical_address)
    ctrl.write(COMP_ROW_START, cfg["COMP_R0"])
    ctrl.write(COMP_ROW_END,   cfg["COMP_R1"])
    ctrl.write(COMP_COL_START, cfg["COMP_C0"])
    ctrl.write(COMP_COL_END,   cfg["COMP_C1"])


def wait_idle(ctrl, tries=10000):
    for _ in range(tries):
        if ctrl.read(CTRL) & AP_IDLE:
            return
        time.sleep(0.001)
    raise TimeoutError("IP never went IDLE")


def make_target(rows, cols):
    """Testbench target pattern: r%4 in {0,1}, cols 1..half-2 and half+1..cols-2."""
    tgt = np.zeros(rows * cols, dtype=np.uint8)
    half = cols // 2
    for r in range(rows):
        if r % 4 == 0 or r % 4 == 1:
            for c in range(cols):
                if (1 <= c <= half - 2) or (half + 1 <= c <= cols - 2):
                    tgt[r * cols + c] = 1
    return tgt


def decode_move(raw):
    """Decode ParallelMove from raw bytes."""
    if len(raw) < PARALLEL_MOVE_SIZE:
        return None
    steps_count = raw[MAX_STEPS * STEP_SIZE]
    if steps_count == 0 or steps_count > MAX_STEPS:
        return None
    steps = []
    for s in range(steps_count):
        off = s * STEP_SIZE
        cols_sel = list(struct.unpack_from(f"<{MAX_SEL}h", raw, off))
        rows_sel = list(struct.unpack_from(f"<{MAX_SEL}h", raw, off + 32))
        n_cols = raw[off + 64]
        n_rows = raw[off + 65]
        steps.append({"cols": cols_sel[:n_cols], "rows": rows_sel[:n_rows]})
    return steps


def drain_fifo_packet(fifo):
    """Read one packet from the AXI-Stream FIFO (FIFO_RDFO must be > 0 before call)."""
    pkt_bytes = fifo.read(FIFO_RLR)
    words = (pkt_bytes + 3) // 4
    raw = bytearray()
    for _ in range(words):
        raw += struct.pack("<I", fifo.read(FIFO_RDFD))
    return bytes(raw)


def apply_moves_to_grid(state, moves, grid_rows, grid_cols):
    result = state.copy().astype(bool)
    for move in moves:
        if not move:
            continue
        first, last = move[0], move[-1]
        moving = []
        for ri, r0 in enumerate(first["rows"]):
            for ci, c0 in enumerate(first["cols"]):
                if 0 <= r0 < grid_rows and 0 <= c0 < grid_cols and result[r0, c0]:
                    moving.append((ri, ci))
                    result[r0, c0] = False
        for ri, ci in moving:
            if ri < len(last["rows"]) and ci < len(last["cols"]):
                rN, cN = last["rows"][ri], last["cols"][ci]
                if 0 <= rN < grid_rows and 0 <= cN < grid_cols:
                    result[rN, cN] = True
    return result


# =============================================================================
# 3. Main flow
# =============================================================================
def main():
    # ---- Config ----
    BITSTREAM     = "atomflow_system_wrapper.bit"
    INPUT_FILE    = "restoutput.txt"
    FULL_IMG_FILE = "fullImage_output.txt"
    GRID_R, GRID_C       = 16, 16
    COMP_R0, COMP_R1     = 0, GRID_R
    COMP_C0, COMP_C1     = 0, GRID_C
    N_BENCH_RUNS         = 5

    # ---- Load overlay ----
    print("=" * 60)
    print("Loading overlay...")
    ol = Overlay(BITSTREAM)
    ol.download()
    print(f"\u2713 Overlay loaded. IPs: {list(ol.ip_dict.keys())}")

    CTRL_BASE = ol.ip_dict["atomflow_controller_0"]["phys_addr"]
    FIFO_BASE = ol.ip_dict["axi_fifo_mm_s_0"]["phys_addr"]
    ctrl = MMIO(CTRL_BASE, 0x1000)
    fifo = MMIO(FIFO_BASE, 0x1000)
    print(f"atomflow_controller @ {hex(CTRL_BASE)}")
    print(f"AXI-Stream FIFO     @ {hex(FIFO_BASE)}")
    v = ctrl.read(CTRL)
    print(f"AP_CTRL = 0x{v:08X}  (IDLE={bool(v & AP_IDLE)})")

    # ---- Allocate buffers ----
    print("\nAllocating buffers...")
    atomLocations_buf         = allocate(shape=(MAX_ATOM_SITES * 2,),                  dtype=np.float32)
    imageProjs_buf            = allocate(shape=(IMAGE_PROJ_SIZE,),                     dtype=np.float32)
    imageProjs_local_buf      = allocate(shape=(IMAGE_PROJ_LOCAL * IMAGE_PROJ_SIZE,),  dtype=np.float32)
    imageProjs_local_size_buf = allocate(shape=(IMAGE_PROJ_SIZE,),                     dtype=np.int32)
    fullImage_buf             = allocate(shape=(FULL_IMAGE_SIZE,),                     dtype=np.float32)
    emissions_buf             = allocate(shape=(MAX_ATOM_SITES,),                      dtype=np.float32)
    targetGeometry_buf        = allocate(shape=(64 * 64,),                             dtype=np.uint8)
    print("\u2713 Buffers allocated")

    # ---- Load input data ----
    print("\nLoading input data...")
    sys.path.insert(0, ".")
    from input_read import parse_input_file, parse_fullImage, pack_fullimage_512bit

    t0 = time.time()
    input_data, _     = parse_input_file(INPUT_FILE)
    full_image_raw, _ = parse_fullImage(FULL_IMG_FILE)
    print(f"Parsed in {time.time()-t0:.3f}s")

    atom_count  = input_data["atomLocationsSize"]
    proj_shape0 = input_data["projShape0"]
    proj_shape1 = input_data["projShape1"]
    psf_super   = input_data["psfSupersample"]
    img_proj_sz = input_data["imageProjectionSize"]
    full_rows   = input_data["fullImage_rows"]
    full_cols   = input_data["fullImage_cols"]
    print(f"  atom_count={atom_count}, img_proj_sz={img_proj_sz}, "
          f"proj_shape=({proj_shape0},{proj_shape1}), full_image=({full_rows},{full_cols})")
    assert atom_count  <= MAX_ATOM_SITES
    assert img_proj_sz <= IMAGE_PROJ_SIZE

    # Atom locations: struct {float x; float y;}
    atomLocations_buf[:] = 0.0
    for i, (x, y) in enumerate(input_data["atomLocations"][:atom_count]):
        atomLocations_buf[2 * i]     = np.float32(x)
        atomLocations_buf[2 * i + 1] = np.float32(y)

    n_projs = min(img_proj_sz, IMAGE_PROJ_SIZE)
    imageProjs_buf[:n_projs] = np.array(input_data["imageProjs"][:n_projs], dtype=np.float32)

    local_flat = np.array(input_data["imageProjs_local"], dtype=np.float32)
    n_local = min(len(local_flat), IMAGE_PROJ_LOCAL * IMAGE_PROJ_SIZE)
    imageProjs_local_buf[:n_local] = local_flat[:n_local]

    local_sizes = input_data.get("imageProjs_local_size", [])
    if not local_sizes:
        local_sizes = [proj_shape0 * proj_shape1] * n_projs
    imageProjs_local_size_buf[:n_projs] = np.array(local_sizes[:n_projs], dtype=np.int32)

    full_image_strided = pack_fullimage_512bit(full_image_raw, full_rows, full_cols)
    fullImage_buf[:FULL_IMAGE_SIZE] = full_image_strided[:FULL_IMAGE_SIZE]

    for buf in [atomLocations_buf, imageProjs_buf, imageProjs_local_buf,
                imageProjs_local_size_buf, fullImage_buf]:
        buf.flush()
    print("\u2713 Buffers loaded and flushed")

    # ---- Target geometry ----
    target_flat = make_target(GRID_R, GRID_C)
    target_2d   = target_flat.reshape(GRID_R, GRID_C)
    np.copyto(targetGeometry_buf[:GRID_R * GRID_C], target_flat)
    targetGeometry_buf.flush()
    print(f"\nTarget: {np.sum(target_flat)} sites in {GRID_R}x{GRID_C} grid")

    # Pack all cfg into dict for write_all_registers()
    cfg = dict(
        atom_count=atom_count, proj_shape0=proj_shape0, proj_shape1=proj_shape1,
        psf_super=psf_super, img_proj_sz=img_proj_sz,
        full_rows=full_rows, full_cols=full_cols,
        GRID_R=GRID_R, GRID_C=GRID_C,
        COMP_R0=COMP_R0, COMP_R1=COMP_R1, COMP_C0=COMP_C0, COMP_C1=COMP_C1,
        atomLocations_buf=atomLocations_buf, imageProjs_buf=imageProjs_buf,
        imageProjs_local_buf=imageProjs_local_buf,
        imageProjs_local_size_buf=imageProjs_local_size_buf,
        fullImage_buf=fullImage_buf, emissions_buf=emissions_buf,
        targetGeometry_buf=targetGeometry_buf,
    )

    # ========================================================================
    # 4. MODE_QUBIT_READOUT — image analysis only
    # ========================================================================
    print("\n" + "=" * 60)
    print("Running MODE_QUBIT_READOUT (image analysis)...")
    wait_idle(ctrl)
    write_all_registers(ctrl, MODE_QUBIT_READOUT, 0.0, cfg)

    t0 = time.perf_counter()
    ctrl.write(CTRL, AP_START)
    while not (ctrl.read(CTRL) & AP_DONE):
        time.sleep(0.0001)
    t_recon_single = (time.perf_counter() - t0) * 1e3
    print(f"\u2713 {t_recon_single:.1f} ms")

    emissions_buf.invalidate()
    emissions = np.copy(emissions_buf[:atom_count])
    emin = float(np.min(emissions[emissions > 0])) if np.any(emissions > 0) else 0.0
    emax = float(np.max(emissions))
    EMISSION_THRESHOLD = (emax + emin) / 2.0
    print(f"Emission range: [{emin:.1f}, {emax:.1f}]  threshold={EMISSION_THRESHOLD:.1f}")

    occupied   = (emissions > EMISSION_THRESHOLD)
    state_grid = occupied.reshape(GRID_R, GRID_C)
    print(f"Occupied: {np.sum(occupied)}/{atom_count} ({100*np.mean(occupied):.1f}%)")
    print("Occupancy map:")
    for r in range(GRID_R):
        print("  " + "".join("X" if state_grid[r, c] else "." for c in range(GRID_C)))

    plt.figure(figsize=(5, 5))
    plt.imshow(state_grid.astype(int), cmap="Blues", origin="upper")
    plt.title(f"Atom occupancy ({np.sum(occupied)} atoms)")
    plt.colorbar(label="occupied")
    plt.savefig("occupancy.png", dpi=150, bbox_inches="tight")
    plt.close()
    print("\u2713 Saved occupancy.png")

    # ========================================================================
    # 5. MODE_INITIALIZATION — full pipeline with concurrent FIFO drain
    # ========================================================================
    print("\n" + "=" * 60)
    print("Running MODE_INITIALIZATION (drain FIFO concurrently)...")

    fifo.write(FIFO_RDFR, 0xA5)
    time.sleep(0.01)
    wait_idle(ctrl)
    write_all_registers(ctrl, MODE_INITIALIZATION, EMISSION_THRESHOLD, cfg)

    all_raw_moves = []
    t_first_move  = None
    t0 = time.perf_counter()
    ctrl.write(CTRL, AP_START)

    while True:
        while fifo.read(FIFO_RDFO) > 0:
            raw = drain_fifo_packet(fifo)
            all_raw_moves.append(raw)
            if t_first_move is None:
                t_first_move = time.perf_counter()
                print(f"  First move at {(t_first_move - t0)*1e3:.1f} ms")

        if ctrl.read(CTRL) & AP_DONE:
            while fifo.read(FIFO_RDFO) > 0:
                all_raw_moves.append(drain_fifo_packet(fifo))
            break

        if time.perf_counter() - t0 > 60.0:
            print("Timeout!")
            break

    elapsed_ms = (time.perf_counter() - t0) * 1e3
    move_count = ctrl.read(MOVE_COUNT_REG)
    print(f"\u2713 {elapsed_ms:.1f} ms | moveCount={move_count} | FIFO packets={len(all_raw_moves)}")

    # Decode moves
    all_moves = []
    for i, raw in enumerate(all_raw_moves):
        m = decode_move(raw)
        if m is not None:
            all_moves.append(m)
    print(f"Decoded {len(all_moves)}/{move_count} moves")
    if all_moves:
        spm = [len(m) for m in all_moves]
        print(f"  Steps/move: min={min(spm)}, max={max(spm)}, avg={np.mean(spm):.1f}")

    # ---- Visualize sorted state ----
    if all_moves:
        sorted_grid = apply_moves_to_grid(state_grid, all_moves, GRID_R, GRID_C)
        fig, axes = plt.subplots(1, 3, figsize=(14, 5))
        axes[0].imshow(state_grid,  cmap="Blues",  origin="upper"); axes[0].set_title(f"Initial ({np.sum(state_grid)} atoms)");  axes[0].axis("off")
        axes[1].imshow(sorted_grid, cmap="Blues",  origin="upper"); axes[1].set_title(f"After moves ({np.sum(sorted_grid)} atoms)"); axes[1].axis("off")
        axes[2].imshow(target_2d,   cmap="Greens", origin="upper"); axes[2].set_title(f"Target ({np.sum(target_2d)} sites)"); axes[2].axis("off")
        plt.tight_layout()
        plt.savefig("atomflow_result.png", dpi=150, bbox_inches="tight")
        plt.close()
        print("\u2713 Saved atomflow_result.png")

        zone_sorted = sorted_grid[COMP_R0:COMP_R1, COMP_C0:COMP_C1]
        zone_target = target_2d[COMP_R0:COMP_R1, COMP_C0:COMP_C1].astype(bool)
        diff = int(np.sum(zone_sorted != zone_target))
        print(f"{'SUCCESS' if diff == 0 else f'WARNING: {diff} cells differ in comp zone'}")

    # ========================================================================
    # 6. Latency Benchmark (N runs)
    # ========================================================================
    print("\n" + "=" * 60)
    print(f"Latency Benchmark ({N_BENCH_RUNS} runs)...")

    t_recon_list    = []
    t_total_list    = []
    t_first_list    = []
    move_ts_all     = []
    move_count_list = []

    for run in range(N_BENCH_RUNS):
        # --- (1) Image analysis only ---
        wait_idle(ctrl)
        write_all_registers(ctrl, MODE_QUBIT_READOUT, 0.0, cfg)
        t0 = time.perf_counter()
        ctrl.write(CTRL, AP_START)
        while not (ctrl.read(CTRL) & AP_DONE):
            time.sleep(0.0001)
        t_recon = (time.perf_counter() - t0) * 1e3
        t_recon_list.append(t_recon)

        # --- (2) Full pipeline with FIFO drain ---
        fifo.write(FIFO_RDFR, 0xA5)
        time.sleep(0.01)
        wait_idle(ctrl)
        write_all_registers(ctrl, MODE_INITIALIZATION, EMISSION_THRESHOLD, cfg)

        raw_moves, move_ts, t_first = [], [], None
        t0 = time.perf_counter()
        ctrl.write(CTRL, AP_START)

        while True:
            while fifo.read(FIFO_RDFO) > 0:
                raw_moves.append(drain_fifo_packet(fifo))
                t_now = time.perf_counter()
                move_ts.append((t_now - t0) * 1e3)
                if t_first is None:
                    t_first = (t_now - t0) * 1e3

            if ctrl.read(CTRL) & AP_DONE:
                while fifo.read(FIFO_RDFO) > 0:
                    raw_moves.append(drain_fifo_packet(fifo))
                    move_ts.append((time.perf_counter() - t0) * 1e3)
                break
            if time.perf_counter() - t0 > 60.0:
                print(f"Run {run}: TIMEOUT"); break

        t_total = (time.perf_counter() - t0) * 1e3
        mc = ctrl.read(MOVE_COUNT_REG)
        t_total_list.append(t_total)
        t_first_list.append(t_first if t_first else float("nan"))
        move_count_list.append(mc)
        if len(move_ts) > len(move_ts_all):
            move_ts_all = move_ts

        print(f"Run {run}: T_recon={t_recon:.1f}ms  T_total={t_total:.1f}ms  "
              f"T_first_move={t_first:.1f}ms  moves={mc}")

    # --- Summary ---
    t_recon_mean = float(np.mean(t_recon_list))
    t_recon_std  = float(np.std(t_recon_list))
    t_total_mean = float(np.mean(t_total_list))
    t_total_std  = float(np.std(t_total_list))
    t_sort_mean  = t_total_mean - t_recon_mean
    t_first_mean = float(np.nanmean(t_first_list))

    if len(move_ts_all) > 1:
        intervals = np.diff(move_ts_all)
        t_per_move = float(np.mean(intervals))
    else:
        t_per_move = float("nan")

    mc = move_count_list[-1]
    t_control    = t_first_mean - t_recon_mean - t_per_move
    t_sort_total = t_per_move * mc

    print("\n" + "=" * 60)
    print(f"Latency Breakdown ({N_BENCH_RUNS} runs, {GRID_R}x{GRID_C} grid, {mc} moves):")
    print("=" * 60)
    print(f"  {'Stage':<32} {'Latency':>12} {'Source':>10}")
    print("-" * 60)
    print(f"  {'Image Analysis':<32} {t_recon_mean:>8.1f} ms {'FPGA':>10}")
    print(f"  {'Binary Class. + Control':<32} {t_control:>8.1f} ms {'derived':>10}")
    print(f"  {'Sorting (per move)':<32} {t_per_move:>8.2f} ms {'FPGA':>10}")
    print(f"  {f'Sorting ({mc} moves)':<32} {t_sort_total:>8.1f} ms {'FPGA':>10}")
    print("-" * 60)
    print(f"  {'Total (end-to-end)':<32} {t_total_mean:>8.1f} ms {'FPGA':>10}")
    print(f"  {'First-move latency':<32} {t_first_mean:>8.1f} ms {'FPGA':>10}")
    print("=" * 60)

    # ---- Stacked bar + timeline ----
    fig, axes = plt.subplots(1, 2, figsize=(10, 4))
    ax = axes[0]
    ax.barh(["AtomFlow\nController"], [t_recon_mean], color="#4C72B0", label="Image Analysis")
    ax.barh(["AtomFlow\nController"], [t_sort_mean], left=[t_recon_mean], color="#DD8452", label="Sorting")
    ax.set_xlabel("Latency (ms)")
    ax.set_title("End-to-End Latency Breakdown")
    ax.legend(loc="lower right")
    ax.set_xlim(0, t_total_mean * 1.15)
    ax.text(t_recon_mean / 2, 0, f"{t_recon_mean:.1f} ms", ha="center", va="center", color="white", fontweight="bold")
    ax.text(t_recon_mean + t_sort_mean / 2, 0, f"{t_sort_mean:.1f} ms", ha="center", va="center", color="white", fontweight="bold")

    ax2 = axes[1]
    if move_ts_all:
        ax2.scatter(move_ts_all, range(len(move_ts_all)), s=15, c="#55A868", zorder=3)
        ax2.axvline(t_recon_mean, color="#4C72B0", ls="--", lw=1.5, label=f"Image Analysis done ({t_recon_mean:.0f} ms)")
        ax2.set_xlabel("Time since AP_START (ms)")
        ax2.set_ylabel("Move index")
        ax2.set_title("Move Arrival Timeline")
        ax2.legend(fontsize=8)
        ax2.invert_yaxis()

    plt.tight_layout()
    plt.savefig("latency_breakdown.pdf", bbox_inches="tight", dpi=150)
    plt.savefig("latency_breakdown.png", bbox_inches="tight", dpi=150)
    plt.close()
    print("\u2713 Saved latency_breakdown.pdf / .png")

    # ---- LaTeX table ----
    pct_recon = 100 * t_recon_mean / t_total_mean
    pct_ctrl  = 100 * t_control    / t_total_mean
    pct_sort  = 100 * t_sort_total / t_total_mean

    latex = rf"""
\begin{{table}}[t]
\centering
\caption{{Latency breakdown of the AtomFlow controller on Zynq UltraScale+ ({mc} moves, {GRID_R}$\times${GRID_C} grid).}}
\label{{tab:latency}}
\begin{{tabular}}{{|l|r|r|r|}}
\hline
Stage & Latency (ms) & \% of Total & Source \\
\hline
Image analysis          & {t_recon_mean:.1f} $\pm$ {t_recon_std:.1f} & {pct_recon:.1f}\%  & FPGA \\
Binary classif. + ctrl  & {t_control:.1f}            & {pct_ctrl:.1f}\%  & derived \\
Sorting ($\times${mc})  & {t_sort_total:.1f}           & {pct_sort:.1f}\% & FPGA \\
\quad per move          & {t_per_move:.2f}           & ---          & FPGA \\
\hline
\textbf{{Total}}        & \textbf{{{t_total_mean:.1f}}} $\pm$ {t_total_std:.1f} & 100\% & FPGA \\
\hline
First-move latency      & {t_first_mean:.1f}            & ---          & FPGA \\
\hline
\end{{tabular}}
\end{{table}}
"""
    print(latex)
    with open("latency_table.tex", "w") as f:
        f.write(latex)
    print("\u2713 Saved latency_table.tex")

    print("\nDone.")


if __name__ == "__main__":
    main()
