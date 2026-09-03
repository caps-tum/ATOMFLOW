#!/usr/bin/env bash
#
# Ship the current release to the board, validate it there, bring the result back.
#
# OPERATOR-RUN. Board access belongs to the project owner: this script programs
# the PL and needs root on the board. It is not invoked by automation.
#
#   ATOMFLOW_BOARD=xilinx@192.168.2.99 tools/run_board_validation.sh
#   ATOMFLOW_BOARD=... ATOMFLOW_BOARD_DIR=~/atomflow tools/run_board_validation.sh --runs 10
#
# The board computes the bitstream hash itself, so the result records what was
# actually programmed rather than what we believe we sent. The two hashes are
# compared here; a mismatch means the board is running a different bitstream.

set -euo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
RELEASE="$REPO/release"
BOARD="${ATOMFLOW_BOARD:-}"
BOARD_DIR="${ATOMFLOW_BOARD_DIR:-~/atomflow}"
BOARD_PY="${ATOMFLOW_BOARD_PYTHON:-/usr/local/share/pynq-venv/bin/python3}"

die() { printf 'ERROR: %s\n' "$*" >&2; exit 1; }

[ -n "$BOARD" ] || die "set ATOMFLOW_BOARD, e.g. ATOMFLOW_BOARD=xilinx@192.168.2.99 $0"
for f in design_1.bit design_1.hwh; do
  [ -f "$RELEASE/$f" ] || die "missing $RELEASE/$f -- run ./build.sh bitstream first"
done

echo "=== shipping to $BOARD:$BOARD_DIR ==="
ssh "$BOARD" "mkdir -p $BOARD_DIR"
scp -q "$RELEASE/design_1.bit" "$RELEASE/design_1.hwh" \
       "$REPO/tools/board_validation.py" \
       "$REPO/atomflow_controller/input_read.py" \
       "$BOARD:$BOARD_DIR/"

echo "=== validating on the board ==="
# sudo -E: PYNQ needs root for /dev/mem, -E keeps the venv environment.
ssh "$BOARD" "cd $BOARD_DIR && sudo -E $BOARD_PY board_validation.py \
    --bit design_1.bit --out board_validation.json $*" || {
  echo "board validation reported a failure; fetching the report anyway" >&2
  FAILED=1
}

echo "=== fetching report ==="
scp -q "$BOARD:$BOARD_DIR/board_validation.json" "$RELEASE/board_validation.json"

python3 - "$RELEASE" <<'PY'
import hashlib, json, sys, os
rel = sys.argv[1]
v = json.load(open(os.path.join(rel, "board_validation.json")))

def sha(p):
    h = hashlib.sha256()
    with open(p, "rb") as f:
        for c in iter(lambda: f.read(1 << 20), b""):
            h.update(c)
    return h.hexdigest()

print("\n=== provenance ===")
ok = True
for kind in ("bit", "hwh"):
    board = (v["provenance"].get(kind) or {}).get("sha256")
    local = sha(os.path.join(rel, "design_1.%s" % kind))
    same = board == local
    ok &= same
    print("  %-4s local=%s board=%s  %s" % (
        kind, local[:16], (board or "?")[:16], "match" if same else "MISMATCH"))
if not ok:
    print("  -> the board is not running the bitstream in release/")

mf = os.path.join(rel, "manifest.json")
if os.path.exists(mf):
    m = json.load(open(mf))
    g = m.get("git", {})
    print("  source commit: %s%s" % (g.get("describe"),
          "" if g.get("clean") else "   (DIRTY: cannot identify the exact source)"))
    art = (m.get("artifacts") or {}).get("bit", {}).get("sha256")
    if art and art != sha(os.path.join(rel, "design_1.bit")):
        print("  -> manifest describes a DIFFERENT bit than release/design_1.bit")
        ok = False

print("\n=== verdict: %s ===" % v["verdict"])
for k, val in sorted(v["checks"].items()):
    if not val:
        print("  FAILED: %s" % k)
sys.exit(0 if (ok and v["verdict"] == "PASS") else 1)
PY
