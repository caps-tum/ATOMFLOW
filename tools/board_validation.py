#!/usr/bin/env python3
"""Run one AtomFlow initialisation on the board and record what happened.

OPERATOR-RUN. This runs ON the board (it needs pynq and the real FPGA) and is
started by the project owner, never by automation. It is the single
source of truth for board validation: the notebook should call it rather than
re-implementing the wire protocol, because keeping a second decoder in sync has
already failed once -- the notebook grew four independent decoders and three of
them silently lacked the flags byte.

Provenance note: the bitstream and handoff hashes below are computed HERE, on
the board, from the files the FPGA was actually programmed with. A hash taken
on the build machine only proves what was sent, not what was loaded.

    sudo -E /usr/local/share/pynq-venv/bin/python3 board_validation.py \
         --bit design_1.bit --runs 5 --out board_validation.json

    # No board? Check the protocol/replay logic offline:
    python3 board_validation.py --self-test
"""

import argparse
import hashlib
import json
import os
import statistics
import struct
import sys
import time
from datetime import datetime, timezone

# ── AXI-Lite register map (xatomflow_controller_hw.h) ───────────────────────
CTRL, AP_START, AP_DONE, AP_IDLE = 0x00, 1 << 0, 1 << 1, 1 << 2
MODE_OFFSET, THRESHOLD_OFFSET, ATOM_LOC_SIZE = 0x10, 0x18, 0x20
PROJ_SHAPE0, PROJ_SHAPE1 = 0x28, 0x30
ADDR_ATOM_LOC_LO, ADDR_ATOM_LOC_HI = 0x38, 0x3C
PSF_SUPER, IMG_PROJ_SIZE = 0x44, 0x4C
ADDR_PROJS_LOCAL_LO, ADDR_PROJS_LOCAL_HI = 0x54, 0x58
ADDR_IMAGE_PROJS_LO, ADDR_IMAGE_PROJS_HI = 0x60, 0x64
ADDR_PROJS_LOCAL_SZ_LO, ADDR_PROJS_LOCAL_SZ_HI = 0x6C, 0x70
ADDR_FULL_IMAGE_LO, ADDR_FULL_IMAGE_HI = 0x78, 0x7C
FULL_IMG_ROWS, FULL_IMG_COLS = 0x84, 0x8C
ADDR_EMISSIONS_LO, ADDR_EMISSIONS_HI = 0x94, 0x98
GRID_ROWS, GRID_COLS = 0xA0, 0xA8
ADDR_TARGET_GEO_LO, ADDR_TARGET_GEO_HI = 0xB0, 0xB4
COMP_ROW_START, COMP_ROW_END, COMP_COL_START, COMP_COL_END = 0xBC, 0xC4, 0xCC, 0xD4
MOVE_COUNT_REG, STATUS_REG = 0xDC, 0xEC
TARGETS_FILLED_REG, TARGETS_REQUIRED_REG = 0xFC, 0x10C

MODE_QUBIT_READOUT, MODE_INITIALIZATION = 0, 1

FIFO_RDFR, FIFO_RDFO, FIFO_RDFD, FIFO_RLR = 0x18, 0x1C, 0x20, 0x24

ATOMFLOW_STATUS = {
    0: "NOT-WRITTEN (bitstream predates the status register)",
    1: "OK", 2: "ERR_ZONE", 3: "ERR_ATOM_COUNT", 4: "ERR_SORT",
    5: "ERR_IMAGE_CFG", 6: "ERR_ATOM_OOB",
}
STATUS_OK = 1

# ── wire format (sortLatticeByRow.hpp) ──────────────────────────────────────
MAX_STEPS, MAX_SEL, STEP_SIZE = 4, 16, 66
STEPS_COUNT_OFF = MAX_STEPS * STEP_SIZE          # 264
FLAGS_OFF = STEPS_COUNT_OFF + 1                  # 265
PARALLEL_MOVE_SIZE = FLAGS_OFF + 1               # 266
BEATS_PER_MOVE = (PARALLEL_MOVE_SIZE + 63) // 64  # 5
MOVE_WIRE_SIZE = BEATS_PER_MOVE * 64             # 320
MOVE_FLAG_DISCARD = 0x01

# ── geometry ────────────────────────────────────────────────────────────────
GRID_R, GRID_C = 16, 32
DETECT_R, DETECT_C = 16, 16
COMP_R0, COMP_R1 = 0, DETECT_R
COMP_C0 = (GRID_C - DETECT_C) // 2
COMP_C1 = COMP_C0 + DETECT_C
ZONE_R, ZONE_C = COMP_R1 - COMP_R0, COMP_C1 - COMP_C0

MAX_ATOM_SITES, IMAGE_PROJ_SIZE, IMAGE_PROJ_LOCAL = 2000, 100, 1000
FULL_IMAGE_SIZE, PIXEL = 1024 * 1024, 1024


def sha256(path):
    h = hashlib.sha256()
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


# ── protocol: decoding and checking (no pynq needed) ────────────────────────
def decode_move(raw):
    """Strictly decode one 320-byte packet. Returns dict or raises ValueError.

    Strict on purpose: a malformed packet must fail loudly rather than be
    silently dropped, which is how a partial move list could be mistaken for a
    successful run.
    """
    if len(raw) != MOVE_WIRE_SIZE:
        raise ValueError("packet is %d B, expected %d" % (len(raw), MOVE_WIRE_SIZE))
    sc = raw[STEPS_COUNT_OFF]
    if not 1 <= sc <= MAX_STEPS:
        raise ValueError("stepsCount=%d outside 1..%d" % (sc, MAX_STEPS))
    flags = raw[FLAGS_OFF]
    if flags & ~MOVE_FLAG_DISCARD:
        raise ValueError("unknown flag bits 0x%02x" % flags)
    steps = []
    for s in range(sc):
        o = s * STEP_SIZE
        cols = list(struct.unpack_from("<%dh" % MAX_SEL, raw, o))
        rows = list(struct.unpack_from("<%dh" % MAX_SEL, raw, o + 32))
        nc, nr = raw[o + 64], raw[o + 65]
        if nc > MAX_SEL or nr > MAX_SEL:
            raise ValueError("step %d selection count %d/%d exceeds %d" % (s, nc, nr, MAX_SEL))
        steps.append({"cols": cols[:nc], "rows": rows[:nr]})
    return {"steps": steps, "flags": flags,
            "discard": bool(flags & MOVE_FLAG_DISCARD)}


def audit_moves(moves, rows, cols):
    """Classify every move without changing it. Mirrors the C testbench audit."""
    out = {"total": len(moves), "executable": 0, "discard_flagged": 0,
           "empty_selection": 0, "count_mismatch": 0, "not_increasing": 0,
           "flag_disagrees_with_coords": 0}
    for mv in moves:
        st = mv["steps"]
        first, last = st[0], st[-1]
        empty = any(not s["cols"] or not s["rows"] for s in st)
        mismatch = (len(first["cols"]) != len(last["cols"]) or
                    len(first["rows"]) != len(last["rows"]))
        bad_order = any(
            any(sel[i] <= sel[i - 1] for i in range(1, len(sel)))
            for s in st for sel in (s["cols"], s["rows"]))
        off = any(v < -1 or v >= cols for v in last["cols"]) or \
              any(v < -1 or v >= rows for v in last["rows"])
        sentinel = -1 in last["cols"] or -1 in last["rows"]
        if empty:
            out["empty_selection"] += 1
        elif mismatch:
            out["count_mismatch"] += 1
        elif bad_order:
            out["not_increasing"] += 1
        else:
            out["executable"] += 1
        if mv["discard"]:
            out["discard_flagged"] += 1
        # The flag must agree with what the coordinates imply; a disagreement
        # means producer and host read the same packet differently.
        if not empty and mv["discard"] != (sentinel or off):
            out["flag_disagrees_with_coords"] += 1
    return out


def replay(state, moves, rows, cols):
    """Apply moves to a boolean grid, counting created/discarded atoms per move.

    Conservation is checked PER MOVE, not just in aggregate: a non-discard move
    must not change the population at all, and a discard move may only lose the
    atoms it actually carries off the grid.
    """
    g = [row[:] for row in state]
    created = lost_without_flag = 0
    for mv in moves:
        first, last = mv["steps"][0], mv["steps"][-1]
        before = sum(sum(r) for r in g)
        moving = []
        for ri, r0 in enumerate(first["rows"]):
            for ci, c0 in enumerate(first["cols"]):
                if 0 <= r0 < rows and 0 <= c0 < cols and g[r0][c0]:
                    moving.append((ri, ci))
                    g[r0][c0] = False
        for ri, ci in moving:
            if ri < len(last["rows"]) and ci < len(last["cols"]):
                rN, cN = last["rows"][ri], last["cols"][ci]
                if 0 <= rN < rows and 0 <= cN < cols:
                    g[rN][cN] = True
        after = sum(sum(r) for r in g)
        if after > before:
            created += after - before
        elif after < before and not mv["discard"]:
            lost_without_flag += before - after
    return g, created, lost_without_flag


def self_test():
    """Exercise the protocol logic without a board."""
    print("board_validation self-test")
    # A two-step move: rows 3,7 x col 9  ->  rows 1,5 x col -1 (parking)
    m = bytearray(MOVE_WIRE_SIZE)
    struct.pack_into("<h", m, 0, 9); m[64] = 1                    # step0 cols=[9]
    struct.pack_into("<2h", m, 32, 3, 7); m[65] = 2               # step0 rows=[3,7]
    struct.pack_into("<h", m, STEP_SIZE, -1); m[STEP_SIZE + 64] = 1
    struct.pack_into("<2h", m, STEP_SIZE + 32, 1, 5); m[STEP_SIZE + 65] = 2
    m[STEPS_COUNT_OFF] = 2
    m[FLAGS_OFF] = MOVE_FLAG_DISCARD
    mv = decode_move(bytes(m))
    assert mv["steps"][0] == {"cols": [9], "rows": [3, 7]}, mv
    assert mv["steps"][1] == {"cols": [-1], "rows": [1, 5]}, mv
    assert mv["discard"] is True
    print("  decode                     OK")

    for bad, why in ((b"\x00" * 100, "short packet"),
                     (bytes(MOVE_WIRE_SIZE), "stepsCount=0")):
        try:
            decode_move(bad); raise AssertionError("accepted " + why)
        except ValueError:
            pass
    m2 = bytearray(m); m2[FLAGS_OFF] = 0x80
    try:
        decode_move(bytes(m2)); raise AssertionError("accepted unknown flag")
    except ValueError:
        pass
    print("  rejects malformed packets  OK")

    a = audit_moves([mv], GRID_R, GRID_C)
    assert a["executable"] == 1 and a["discard_flagged"] == 1
    assert a["flag_disagrees_with_coords"] == 0, a
    print("  audit                      OK")

    grid = [[False] * GRID_C for _ in range(GRID_R)]
    grid[3][9] = grid[7][9] = True
    g, created, lost = replay(grid, [mv], GRID_R, GRID_C)
    assert created == 0, created
    assert lost == 0, "discard move: loss is expected and flagged"
    assert sum(sum(r) for r in g) == 0, "both atoms parked off-grid"
    print("  replay + conservation      OK")

    # A non-discard move that loses atoms must be reported
    mv_bad = json.loads(json.dumps(mv)); mv_bad["discard"] = False
    _, _, lost_bad = replay(grid, [mv_bad], GRID_R, GRID_C)
    assert lost_bad == 2, lost_bad
    print("  unflagged loss detected    OK")
    print("\nall protocol logic verified (no board involved)")
    return 0


# ── hardware run (needs pynq) ───────────────────────────────────────────────
def run_on_board(args):
    import numpy as np
    from pynq import Overlay, allocate, MMIO
    sys.path.insert(0, os.path.dirname(os.path.abspath(args.bit)) or ".")
    from input_read import (parse_input_file, parse_fullImage,
                            pack_floats_to_512bit, pack_fullimage_512bit)

    hwh = os.path.splitext(args.bit)[0] + ".hwh"
    # Hashed here, on the board, from the files actually programmed into the PL.
    prov = {"bit": {"path": args.bit, "sha256": sha256(args.bit)},
            "hwh": {"path": hwh, "sha256": sha256(hwh)} if os.path.exists(hwh) else None,
            "input": {f: sha256(f) for f in (args.input, args.full_image)
                      if os.path.exists(f)}}

    ol = Overlay(args.bit)
    ctrl = MMIO(ol.ip_dict["atomflow_controller_0"]["phys_addr"], 0x1000)
    fifo = MMIO(ol.ip_dict["axi_fifo_mm_s_0"]["phys_addr"], 0x1000)

    data, _ = parse_input_file(args.input)
    full_raw, _ = parse_fullImage(args.full_image)
    n = data["atomLocationsSize"]
    if n != ZONE_R * ZONE_C:
        raise SystemExit("input has %d sites, this build expects %d (%dx%d zone)"
                         % (n, ZONE_R * ZONE_C, ZONE_R, ZONE_C))

    bufs = {
        "atomLocations": allocate(shape=(MAX_ATOM_SITES * 2,), dtype=np.float32),
        "imageProjs": allocate(shape=(IMAGE_PROJ_SIZE,), dtype=np.float32),
        "imageProjs_local": allocate(shape=(IMAGE_PROJ_LOCAL * IMAGE_PROJ_SIZE,), dtype=np.float32),
        "imageProjs_local_size": allocate(shape=(IMAGE_PROJ_SIZE,), dtype=np.int32),
        "fullImage": allocate(shape=(FULL_IMAGE_SIZE,), dtype=np.float32),
        "emissions": allocate(shape=(MAX_ATOM_SITES,), dtype=np.float32),
        "targetGeometry": allocate(shape=(64 * 64,), dtype=np.uint8),
    }
    for i, (x, y) in enumerate(data["atomLocations"][:n]):
        bufs["atomLocations"][2 * i], bufs["atomLocations"][2 * i + 1] = x, y
    bufs["imageProjs"][:len(data["imageProjs"])] = data["imageProjs"]
    loc = pack_floats_to_512bit(data["imageProjs_local"], IMAGE_PROJ_LOCAL)
    bufs["imageProjs_local"][:len(loc)] = loc
    bufs["imageProjs_local_size"][:len(data["imageProjs_local_size"])] = data["imageProjs_local_size"]
    img = pack_fullimage_512bit(full_raw, data["fullImage_rows"], data["fullImage_cols"], PIXEL)
    bufs["fullImage"][:len(img)] = img

    tgt = np.zeros(ZONE_R * ZONE_C, dtype=np.uint8)
    half = ZONE_C // 2
    for r in range(ZONE_R):
        if r % 4 in (0, 1):
            for c in range(ZONE_C):
                if 1 <= c <= half - 2 or half + 1 <= c <= ZONE_C - 2:
                    tgt[r * ZONE_C + c] = 1
    bufs["targetGeometry"][:] = 0
    bufs["targetGeometry"][:ZONE_R * ZONE_C] = tgt
    for b in bufs.values():
        b.flush()

    def program(mode, threshold):
        ctrl.write(MODE_OFFSET, mode)
        ctrl.write(THRESHOLD_OFFSET, struct.unpack("<I", struct.pack("<f", threshold))[0])
        ctrl.write(ATOM_LOC_SIZE, n)
        ctrl.write(PROJ_SHAPE0, data["projShape0"]); ctrl.write(PROJ_SHAPE1, data["projShape1"])
        for lo, hi, buf in ((ADDR_ATOM_LOC_LO, ADDR_ATOM_LOC_HI, "atomLocations"),
                            (ADDR_PROJS_LOCAL_LO, ADDR_PROJS_LOCAL_HI, "imageProjs_local"),
                            (ADDR_IMAGE_PROJS_LO, ADDR_IMAGE_PROJS_HI, "imageProjs"),
                            (ADDR_PROJS_LOCAL_SZ_LO, ADDR_PROJS_LOCAL_SZ_HI, "imageProjs_local_size"),
                            (ADDR_FULL_IMAGE_LO, ADDR_FULL_IMAGE_HI, "fullImage"),
                            (ADDR_EMISSIONS_LO, ADDR_EMISSIONS_HI, "emissions"),
                            (ADDR_TARGET_GEO_LO, ADDR_TARGET_GEO_HI, "targetGeometry")):
            a = int(bufs[buf].physical_address)
            ctrl.write(lo, a & 0xFFFFFFFF); ctrl.write(hi, (a >> 32) & 0xFFFFFFFF)
        ctrl.write(PSF_SUPER, data["psfSupersample"])
        ctrl.write(IMG_PROJ_SIZE, data["imageProjectionSize"])
        ctrl.write(FULL_IMG_ROWS, data["fullImage_rows"])
        ctrl.write(FULL_IMG_COLS, data["fullImage_cols"])
        ctrl.write(GRID_ROWS, GRID_R); ctrl.write(GRID_COLS, GRID_C)
        ctrl.write(COMP_ROW_START, COMP_R0); ctrl.write(COMP_ROW_END, COMP_R1)
        ctrl.write(COMP_COL_START, COMP_C0); ctrl.write(COMP_COL_END, COMP_C1)

    def outputs():
        return (ctrl.read(MOVE_COUNT_REG), ctrl.read(STATUS_REG),
                ctrl.read(TARGETS_FILLED_REG), ctrl.read(TARGETS_REQUIRED_REG))

    def drain(pkts, t0):
        while fifo.read(FIFO_RDFO) > 0:
            occ = fifo.read(FIFO_RDFO); nb = fifo.read(FIFO_RLR)
            if nb == 0 or (nb + 3) // 4 > occ:
                break
            raw = bytearray()
            for _ in range((nb + 3) // 4):
                raw += struct.pack("<I", fifo.read(FIFO_RDFD))
            pkts.append((bytes(raw), time.perf_counter() - t0))

    # ── READOUT: emissions and adaptive threshold ──
    program(MODE_QUBIT_READOUT, 0.0)
    while not ctrl.read(CTRL) & AP_IDLE:
        pass
    t0 = time.perf_counter(); ctrl.write(CTRL, AP_START)
    while not ctrl.read(CTRL) & AP_DONE:
        if time.perf_counter() - t0 > 30:
            raise SystemExit("READOUT timed out")
    t_read = (time.perf_counter() - t0) * 1e3
    _, st_read, _, _ = outputs()
    bufs["emissions"].invalidate()
    em = np.copy(bufs["emissions"][:n])
    lo = float(np.min(em[em > 0])) if np.any(em > 0) else 0.0
    threshold = (float(np.max(em)) + lo) / 2.0
    occ_zone = (em > threshold).reshape(ZONE_R, ZONE_C)
    state = [[False] * GRID_C for _ in range(GRID_R)]
    for r in range(ZONE_R):
        for c in range(ZONE_C):
            state[COMP_R0 + r][COMP_C0 + c] = bool(occ_zone[r, c])

    # ── INITIALIZATION, repeated ──
    runs = []
    moves = None
    for k in range(args.runs):
        fifo.write(FIFO_RDFR, 0xA5); time.sleep(0.05)
        while fifo.read(FIFO_RDFO) > 0:
            fifo.read(FIFO_RDFD)
        program(MODE_INITIALIZATION, threshold)
        while not ctrl.read(CTRL) & AP_IDLE:
            pass
        pkts = []
        t0 = time.perf_counter(); ctrl.write(CTRL, AP_START)
        t_first = None
        while True:
            drain(pkts, t0)
            if t_first is None and pkts:
                t_first = pkts[0][1] * 1e3
            if ctrl.read(CTRL) & AP_DONE:
                drain(pkts, t0)
                break
            if time.perf_counter() - t0 > 60:
                raise SystemExit("INITIALIZATION timed out on run %d" % k)
        t_total = (time.perf_counter() - t0) * 1e3
        mc, st, tf, tr = outputs()
        deadline = time.perf_counter() + 1.0
        while len(pkts) < mc and time.perf_counter() < deadline:
            drain(pkts, t0)
        runs.append({"run": k, "total_ms": t_total, "first_move_ms": t_first,
                     "move_count": mc, "packets": len(pkts), "status": st,
                     "targets_filled": tf, "targets_required": tr,
                     "packet_sizes": sorted(set(len(p) for p, _ in pkts))})
        if k == 0:
            moves = [decode_move(p) for p, _ in pkts[:mc]]
            first_run_pkts = pkts

    # ── verdict on the first run ──
    a = audit_moves(moves, GRID_R, GRID_C)
    final, created, lost_unflagged = replay(state, moves, GRID_R, GRID_C)
    filled = sum(1 for r in range(ZONE_R) for c in range(ZONE_C)
                 if tgt[r * ZONE_C + c] and final[COMP_R0 + r][COMP_C0 + c])
    mismatched = sum(1 for r in range(ZONE_R) for c in range(ZONE_C)
                     if bool(tgt[r * ZONE_C + c]) != final[COMP_R0 + r][COMP_C0 + c])
    r0 = runs[0]
    totals = sorted(x["total_ms"] for x in runs)

    checks = {
        "status_ok": r0["status"] == STATUS_OK,
        "packets_match_move_count": r0["packets"] == r0["move_count"],
        "all_packets_320B": r0["packet_sizes"] == [MOVE_WIRE_SIZE],
        "no_empty_selection": a["empty_selection"] == 0,
        "no_count_mismatch": a["count_mismatch"] == 0,
        "no_out_of_order": a["not_increasing"] == 0,
        "flags_agree_with_coords": a["flag_disagrees_with_coords"] == 0,
        "no_atoms_created": created == 0,
        "no_unflagged_atom_loss": lost_unflagged == 0,
        "host_replay_matches_controller": filled == r0["targets_filled"],
        "target_fully_filled": r0["targets_filled"] == r0["targets_required"] > 0,
        "zone_exact": mismatched == 0,
    }
    return {
        "generated_utc": datetime.now(timezone.utc).isoformat(timespec="seconds"),
        "host": os.uname().nodename,
        "provenance": prov,
        "config": {"grid": [GRID_R, GRID_C], "zone_rows": [COMP_R0, COMP_R1],
                   "zone_cols": [COMP_C0, COMP_C1], "sites": n,
                   "atoms_detected": int(occ_zone.sum()),
                   "threshold": threshold,
                   "beats_per_move": BEATS_PER_MOVE,
                   "move_wire_size": MOVE_WIRE_SIZE},
        "readout": {"latency_ms": t_read, "status": st_read},
        "runs": runs,
        "latency_ms": {"p50": statistics.median(totals),
                       "p95": totals[min(len(totals) - 1, int(0.95 * len(totals)))],
                       "min": totals[0], "max": totals[-1]},
        "audit": a,
        "replay": {"atoms_initial": sum(sum(r) for r in state),
                   "atoms_final": sum(sum(r) for r in final),
                   "atoms_created": created,
                   "atoms_lost_without_discard_flag": lost_unflagged,
                   "targets_filled": filled,
                   "targets_required": int(tgt.sum()),
                   "zone_cells_mismatched": mismatched},
        "checks": checks,
        "verdict": "PASS" if all(checks.values()) else "FAIL",
    }


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--bit", default="design_1.bit")
    ap.add_argument("--input", default="restoutput.txt")
    ap.add_argument("--full-image", default="fullImage_output.txt")
    ap.add_argument("--runs", type=int, default=5)
    ap.add_argument("--out", default="board_validation.json")
    ap.add_argument("--self-test", action="store_true",
                    help="verify the protocol logic offline; no board required")
    args = ap.parse_args()

    if args.self_test:
        return self_test()

    result = run_on_board(args)
    with open(args.out, "w", encoding="utf-8") as f:
        json.dump(result, f, indent=2, sort_keys=True)
        f.write("\n")

    r0 = result["runs"][0]
    print("bitstream : %s" % result["provenance"]["bit"]["sha256"][:16])
    print("status    : %d (%s)  targets=%d/%d" % (
        r0["status"], ATOMFLOW_STATUS.get(r0["status"], "?"),
        r0["targets_filled"], r0["targets_required"]))
    print("moves     : %d in %d packets" % (r0["move_count"], r0["packets"]))
    print("latency   : p50=%.1f ms  p95=%.1f ms  (%d runs)" % (
        result["latency_ms"]["p50"], result["latency_ms"]["p95"], len(result["runs"])))
    print("replay    : %d/%d filled, %d cells differ, %d created, %d lost unflagged" % (
        result["replay"]["targets_filled"], result["replay"]["targets_required"],
        result["replay"]["zone_cells_mismatched"], result["replay"]["atoms_created"],
        result["replay"]["atoms_lost_without_discard_flag"]))
    for k, v in sorted(result["checks"].items()):
        if not v:
            print("  FAILED: %s" % k)
    print("\n%s -> %s" % (result["verdict"], args.out))
    return 0 if result["verdict"] == "PASS" else 1


if __name__ == "__main__":
    sys.exit(main())
