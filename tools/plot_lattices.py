#!/usr/bin/env python3
"""Plot the before/after/target lattices dumped by the testbench's Test 5.

Test 5 runs the complete controller on every real emission dataset in the repo
and writes build/lattices.txt. This renders one row per dataset so the sweep can
be inspected at a glance instead of read as numbers.

    ./build.sh test                 # produces build/lattices.txt
    tools/plot_lattices.py          # -> build/lattices.png

    tools/plot_lattices.py --in build/lattices.txt --out figure.png --dpi 200
"""

import argparse
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.dirname(HERE)


def parse(path):
    """Read the dump into [(header dict, {name: [[int]]})]."""
    sets = []
    with open(path, encoding="utf-8") as f:
        lines = [l.rstrip("\n") for l in f]
    i = 0
    while i < len(lines):
        if not lines[i].startswith("DATASET"):
            i += 1
            continue
        _, name, gR, gC, zr0, zr1, zc0, zc1, atoms, filled, req, moves = lines[i].split()
        hdr = dict(name=name, gR=int(gR), gC=int(gC), zr0=int(zr0), zr1=int(zr1),
                   zc0=int(zc0), zc1=int(zc1), atoms=int(atoms),
                   filled=int(filled), req=int(req), moves=int(moves))
        i += 1
        grids = {}
        for _ in range(3):
            which = lines[i].strip(); i += 1
            rows = [[int(ch) for ch in lines[i + r]] for r in range(hdr["gR"])]
            i += hdr["gR"]
            grids[which] = rows
        sets.append((hdr, grids))
    return sets


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--in", dest="src", default=os.path.join(REPO, "build", "lattices.txt"))
    ap.add_argument("--out", default=os.path.join(REPO, "build", "lattices.png"))
    ap.add_argument("--dpi", type=int, default=150)
    args = ap.parse_args()

    if not os.path.isfile(args.src):
        sys.exit("%s not found - run ./build.sh test first" % args.src)

    try:
        import matplotlib
        matplotlib.use("Agg")
        import matplotlib.pyplot as plt
        from matplotlib.patches import Rectangle
    except ImportError:
        sys.exit("matplotlib is required: pip install matplotlib")

    sets = parse(args.src)
    if not sets:
        sys.exit("no datasets found in %s" % args.src)

    fig, axes = plt.subplots(len(sets), 3, figsize=(11, 2.3 * len(sets)),
                             squeeze=False)
    for row, (h, g) in enumerate(sets):
        panels = [
            ("BEFORE", "Initial  (%d atoms)" % h["atoms"], "Blues"),
            ("AFTER",  "After %d moves  (%d/%d filled)" % (h["moves"], h["filled"], h["req"]), "Blues"),
            ("TARGET", "Target  (%d sites)" % h["req"], "Greens"),
        ]
        for col, (key, title, cmap) in enumerate(panels):
            ax = axes[row][col]
            ax.imshow(g[key], cmap=cmap, origin="upper",
                      interpolation="nearest", vmin=0, vmax=1)
            # Outline the computation zone; everything outside it is parking.
            ax.add_patch(Rectangle((h["zc0"] - .5, h["zr0"] - .5),
                                   h["zc1"] - h["zc0"], h["zr1"] - h["zr0"],
                                   fill=False, ec="crimson", lw=1.2, ls="--"))
            ax.set_title(title, fontsize=8)
            ax.set_xticks([]); ax.set_yticks([])
            if col == 0:
                ax.set_ylabel("%s\n%dx%d grid" % (h["name"], h["gR"], h["gC"]),
                              fontsize=8)
    fig.suptitle("AtomFlow rearrangement across datasets "
                 "(dashed red = computation zone, outside = parking)", fontsize=10)
    fig.tight_layout(rect=(0, 0, 1, 0.97))
    os.makedirs(os.path.dirname(os.path.abspath(args.out)), exist_ok=True)
    fig.savefig(args.out, dpi=args.dpi, bbox_inches="tight")
    print("wrote %s" % args.out)
    for h, _ in sets:
        ok = h["filled"] == h["req"]
        print("  %-7s %2dx%-2d grid  %4d atoms  %3d/%-3d filled  %2d moves  %s"
              % (h["name"], h["gR"], h["gC"], h["atoms"], h["filled"], h["req"],
                 h["moves"], "OK" if ok else "PARTIAL"))
    return 0


if __name__ == "__main__":
    sys.exit(main())
