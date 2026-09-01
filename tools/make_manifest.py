#!/usr/bin/env python3
"""Record exactly what went into a bitstream.

The board-verified `design_1.bit` that this project relied on for months had no
record of the source it was built from, so a partial result could never be
attributed to either a code change or a build drift.  This writes that record.

Usage:
    tools/make_manifest.py --bit path/to/design_1.bit --hwh path/to/design_1.hwh
                           [--out release/manifest.json] [--extra k=v ...]

Everything is derived from the repository the script lives in, so it can be run
from any working directory.
"""

import argparse
import hashlib
import json
import os
import re
import subprocess
import sys
from datetime import datetime, timezone

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.dirname(HERE)


def sh(*cmd, cwd=REPO):
    """Run a command, returning stripped stdout or None if it fails."""
    try:
        out = subprocess.run(cmd, cwd=cwd, capture_output=True, text=True, timeout=60)
        return out.stdout.strip() if out.returncode == 0 else None
    except (OSError, subprocess.SubprocessError):
        return None


def sha256(path):
    h = hashlib.sha256()
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


def git_state():
    commit = sh("git", "rev-parse", "HEAD")
    status = sh("git", "status", "--porcelain")
    # A dirty tree means the manifest cannot identify the source exactly; record
    # which files differ so the gap is at least visible.
    dirty = [l[3:] for l in status.splitlines()] if status else []
    return {
        "commit": commit,
        "branch": sh("git", "rev-parse", "--abbrev-ref", "HEAD"),
        "describe": sh("git", "describe", "--always", "--dirty"),
        "clean": not dirty,
        "modified_files": sorted(dirty),
    }


def grep1(relpath, pattern, cast=str):
    """First regex capture from a repo file, or None."""
    try:
        with open(os.path.join(REPO, relpath), encoding="utf-8") as f:
            m = re.search(pattern, f.read(), re.M)
        return cast(m.group(1)) if m else None
    except (OSError, ValueError):
        return None


def protocol_constants():
    """The values that must agree across C++, Python and the block design.

    A mismatch here is what silently broke the tracked driver (20 steps / 21
    beats) against the 4-step / 5-beat bitstream running on the board.
    """
    steps = grep1("sorting-organized-main/src/sortLatticeByRow.hpp",
                  r"^#define MAX_MOVE_STEPS\s+(\d+)", int)
    col = grep1("sorting-organized-main/src/sortLatticeByRow.hpp",
                r"^#define AOD_COL_LIMIT\s+(\d+)", int)
    row = grep1("sorting-organized-main/src/sortLatticeByRow.hpp",
                r"^#define AOD_ROW_LIMIT\s+(\d+)", int)
    py_steps = grep1("atomflow_controller/atomflow_control.py",
                     r"^MAX_STEPS\s*=\s*(\d+)", int)
    tcl_tlast = grep1("atomflow_controller/create_bd.tcl",
                      r"CONFIG\.DEFAULT_TLAST\s*\{(\d+)\}", int)

    derived = {}
    if None not in (steps, col, row):
        step_size = col * 2 + row * 2 + 2
        move_size = step_size * steps + 2          # stepsCount + flags
        move_size += move_size % 2                 # int16 alignment
        beats = (move_size + 63) // 64
        derived = {"step_size_bytes": step_size,
                   "parallel_move_bytes": move_size,
                   "beats_per_move": beats}

    consistent = (derived.get("beats_per_move") == tcl_tlast and
                  steps == py_steps and steps is not None)
    return {
        "cpp": {"MAX_MOVE_STEPS": steps, "AOD_COL_LIMIT": col, "AOD_ROW_LIMIT": row},
        "python": {"MAX_STEPS": py_steps},
        "block_design": {"DEFAULT_TLAST": tcl_tlast},
        "derived": derived,
        # False means the C++, Python and BD views of the wire format disagree:
        # the bitstream and driver will not interoperate.
        "consistent": bool(consistent),
    }


def tool_versions():
    v = {}
    for name, cmd in (("vitis_hls", ("vitis_hls", "-version")),
                      ("vivado", ("vivado", "-version"))):
        out = sh(*cmd, cwd=None)
        if out:
            v[name] = out.splitlines()[0].strip()
    v["python"] = sys.version.split()[0]
    return v


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--bit", help="path to the .bit file")
    ap.add_argument("--hwh", help="path to the .hwh file")
    ap.add_argument("--out", default=os.path.join(REPO, "release", "manifest.json"))
    ap.add_argument("--extra", action="append", default=[], metavar="KEY=VALUE",
                    help="extra key=value to record (repeatable)")
    args = ap.parse_args()

    artifacts = {}
    missing = []
    for kind, path in (("bit", args.bit), ("hwh", args.hwh)):
        if not path:
            continue
        if not os.path.isfile(path):
            missing.append(path)
            continue
        artifacts[kind] = {
            "path": os.path.relpath(os.path.abspath(path), REPO),
            "bytes": os.path.getsize(path),
            "sha256": sha256(path),
        }
    if missing:
        sys.stderr.write("ERROR: not found: %s\n" % ", ".join(missing))
        return 1

    proto = protocol_constants()
    manifest = {
        "generated_utc": datetime.now(timezone.utc).isoformat(timespec="seconds"),
        "host": os.uname().nodename,
        "git": git_state(),
        "tools": tool_versions(),
        "protocol": proto,
        "artifacts": artifacts,
        "extra": dict(kv.split("=", 1) for kv in args.extra if "=" in kv),
    }

    os.makedirs(os.path.dirname(os.path.abspath(args.out)), exist_ok=True)
    with open(args.out, "w", encoding="utf-8") as f:
        json.dump(manifest, f, indent=2, sort_keys=True)
        f.write("\n")

    print("manifest -> %s" % args.out)
    print("  commit    : %s%s" % (manifest["git"]["describe"],
                                  "" if manifest["git"]["clean"] else "  (DIRTY)"))
    for kind, a in artifacts.items():
        print("  %-9s : %s  %s" % (kind, a["sha256"][:16], a["path"]))
    d = proto["derived"]
    print("  protocol  : %s steps, %s B/move, %s beats, DEFAULT_TLAST=%s -> %s" % (
        proto["cpp"]["MAX_MOVE_STEPS"], d.get("parallel_move_bytes"),
        d.get("beats_per_move"), proto["block_design"]["DEFAULT_TLAST"],
        "consistent" if proto["consistent"] else "MISMATCH"))

    if not manifest["git"]["clean"]:
        print("\nWARNING: %d uncommitted file(s); this manifest cannot identify the\n"
              "         exact source. Commit before a build you intend to keep."
              % len(manifest["git"]["modified_files"]))
    if not proto["consistent"]:
        print("\nERROR: C++ / Python / block-design wire formats disagree.\n"
              "       The driver will not decode this bitstream's move stream.")
        return 2
    return 0


if __name__ == "__main__":
    sys.exit(main())
