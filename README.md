# AtomFlow

## Overview

AtomFlow is an FPGA-based neutral atom controller implemented in Vitis HLS 2024.2 and verified on ZCU216.

The system takes raw camera emission data (currently with simulated data stored in memory), reconstructs which trap sites are occupied, computes a move list to rearrange atoms into a target geometry, and streams the moves to a waveform generator.

---

## System Architecture

```
Camera (atom position image)
      ↓  raw emissions (via PS/DMA, m_axi)
┌─────────────────────────────────────┐
│      atomflow_controller (HLS)      │
│  ┌─────────────┐                    │
│  │ reconstruct │  ← emissions data │
│  └──────┬──────┘                    │
│         │  ← Mode Control          │
│  ┌──────▼─────────────────────────┐│
│  │ sortLatticeByRowParallel_HLS   │ │
│  └──────┬─────────────────────────┘ │
│         │ moveStream (AXI-Stream)   │
└─────────┼───────────────────────────┘
          ↓
  AXI4-Stream FIFO (PL-side buffer)
          ↓
  PS (simulation stage — decodes moves)
```

PS controls the controller via **AXI-Lite** (start, parameters, status).
Moves are streamed out via **AXI-Stream** (no PS involvement in the real-time path).

---

## Remarks

### 1. AXI-Stream output
- Moves are streamed directly to a PL-side FIFO as they are generated
- Enables pipeline overlap between sorting and waveform generation
- AXI-Lite is slave-only (PS reads);


### 2. Parking space requirement
- Sorting algorithm needs columns outside the computation zone to park atoms temporarily
- Image detection covers only the central 16×16 computation zone; the controller embeds those
  256 zone-local results into a 16×32 physical state grid with empty parking columns
- 16×16 full-zone: no parking → partial sort (89/96 filled). The older 92/96
  figure predates the atom-conservation fixes and is not reproducible.
- **16×32 lattice with computation zone [0,16)×[8,24)** → 8 parking cols each
  side → **96/96 filled, verified on hardware**

### 2b. Build and release
```bash
./build.sh all      # testbench → HLS+IP → block design → bitstream → manifest
```
Products land in `release/` (`design_1.bit`, `design_1.hwh`, `manifest.json`).
The manifest records the source commit, tool versions and artifact SHA256s, and
fails the build if the C++, Python and block-design views of the move wire
format disagree. Only the manifest is tracked by git; ship the binaries via a
release or Git LFS.

### 3. Target geometry pattern
- Rows r%4 ∈ {0,1}: pattern `oxxxxxxooxxxxxxo` (cols 1-6 and 9-14 filled, 0/7/8/15 empty)
- Rows r%4 ∈ {2,3}: empty
- This repeating pattern provides natural parking space in empty rows

---

## Resource Utilization (new result — differs from paper)

Post-implementation, whole design (`design_1_wrapper`, placed), Vivado 2024.2,
ZCU216 (`xczu49dr-ffvf1760-2-e`). Build of 2026-09-03 from source `e63d72e`;
the report and `release/design_1.bit` share SHA256 `3c619620…`. Configuration:
16×32 physical grid, 16×16 computation zone, `MAX_ROWS = MAX_COLS = 32`.

| Resource        | Used    | Available | Utilization | Paper (16×16) |
|-----------------|--------:|----------:|------------:|--------------:|
| LUT             | 125,455 |   425,280 |     29.50 % | 126,036 (29.6 %) |
| FF              | 178,623 |   850,560 |     21.00 % | 179,273 (21.1 %) |
| **BRAM (36K tiles)** | **226** | 1,080 | **20.93 %** | **46 (4.3 %)** |
| — RAMB36        |     202 |           |             |               |
| — RAMB18        |      48 |           |             |               |
| DSP             |     473 |     4,272 |     11.07 % | 475 (11.1 %) |
| URAM            |       0 |        80 |      0.00 % | —             |


<!-- ### Timing

| Metric | Value |
|---|---|
| Clock target | 100 MHz (10 ns) |
| Post-route WNS | **+0.793 ns** — all constraints met |
| Post-route WHS | +0.010 ns |
| Post-route Fmax (1 / (10 − WNS)) | ≈ 108.6 MHz |
| HLS estimated Fmax (IP only) | 134.79 MHz |

The HLS estimate is optimistic; the post-route figure is the one that holds on
the board. -->

<!-- ### HLS estimate (IP only, for reference)

Vitis HLS 2024.2 C synthesis of `atomflow_controller` alone. HLS overestimates
LUTs by about 66 % relative to implementation, so use the table above for
anything quantitative.

| Resource | Estimate |
|---|---:|
| BRAM_18K | 468 |
| DSP      | 467 |
| FF       | 172,445 |
| LUT      | 208,696 |

--- -->

## Latency (new result — differs from paper)

ZCU216, 16×32 physical grid with a 16×16 computation zone (zone
`[0,16)×[8,24)`, 8 parking columns each side), 256 detection sites of which 125
are occupied, 96 target sites. The current build emits 26 moves and fills
96/96 targets; the C testbench confirms this for the current source.

<!-- ### The measured total is dominated by the PS readout

The move stream enters an `axi_fifo_mm_s` that the PS drains word by word. That
drain only stands in for the AWG, which is not yet connected and would consume
the stream in hardware. The FIFO holds 512 words, about 6 packets, while a run
emits 26, so the sorter repeatedly waits for the PS. `AP_DONE` therefore
measures **controller plus PS readout**, not the controller alone.

Replacing `MMIO.read()` with a numpy view of the same register (still one
hardware read per word) cut the total by 3.5× without touching the bitstream:

| Readout method | Per-word read | Move interval | First move | **AP_DONE** |
|---|---:|---:|---:|---:|
| `MMIO.read()` | 7.60 µs | 0.7745 ms | 3.9 ms | 24.9 ms |
| **numpy view (current)** | **1.75 µs** | **0.16 ms** | **3.3 ms** | **7.2 ms** | -->

### Latency breakdown

Latest board run (2026-09-03, numpy readout), new optimized version.

| Stage | **Current** | Paper (16×16) |
|---|---:|---:|
| Image analysis | **2.4 ms** | 2.4 ± 0.0 ms |
| First move packet | **3.3 ms** | 4 ms |
| Move interval | **0.16 ms** | 1.01 ms |
| **Total (AP_DONE)** | **7.2 ms** | 25.3 ± 0.2 ms |
| Moves emitted | 26 | 22 (filtered from 29) |
| Directly executable | 26 / 26 | 22 / 29 |
| Target sites filled | 96 / 96 | not reported |

<!-- **What can and cannot be claimed.** Of the 7.2 ms, image analysis is 2.4 ms
and the PS readout is at least 26 × 0.145 ms = 3.78 ms. That leaves **at most
1.0 ms for control and rearrangement together** — a measured upper bound, not
an estimate. The paper attributes 22.3 ms to rearrangement; that figure was the
PS readout loop, not the FPGA. -->

<!-- The exact rearrangement latency is **not yet measured**. It needs the FIFO
deepened so the sorter never waits (see `optimization.md` §6.0.3). A polling
test that read only the occupancy register saw 6 packets arrive within 0.039 ms,
which suggests the sorter is much faster than 1.0 ms, but that test was limited
by its own 7.6 µs polling resolution and is not a measurement. -->

The paper's 22 moves came from filtering 29 raw moves on the host. The current
build emits 26 moves, all directly executable, with no host filtering.

Verified end to end: the controller reports `status = OK` and
`targets = 96/96`, and replaying the 26 emitted moves on the host reproduces
the controller's own final lattice exactly (0 cells differ).

<!-- ### Previous baseline (superseded)

An earlier bitstream measured 100.3 ms over 30 moves on a 16×16 full-zone
configuration. That figure predates both the parking-grid fix and the
atom-conservation fixes and is not reproducible from the current source. An
intermediate 16×16 run measured 25.3 ms / 29 moves, but only 22 of those moves
were executable and the result left 7 cells mismatched. -->

---

## File Structure

```
ATOMFLOW/
├── sorting-organized-main/
│   └── src/
│       ├── sortLatticeByRow.hpp   # HLSMoveList, HLSMoveStream, declarations
│       └── sortLatticeByRow.cpp   # sorting algorithm (templated on ML)
├── atomflow_controller/
│   ├── atomflow_controller.cpp    # HLS top-level function
│   ├── atomflow_control.py        # PYNQ SSH driver script
│   ├── atomflow_control.ipynb     # PYNQ Jupyter notebook
│   ├── src/
│   │   ├── atomflow_controller.hpp
│   │   └── tb_atomflow_controller.cpp   # testbench (Tests 1-3)
│   └── hls_run_atomflow_controller.py   # Vitis HLS run script
└── image_analysis/                # atom detection (reconstruct)
```

---

## Testbench

- **Test 1 (READOUT mode)**: reconstruct only, emissions output
- **Test 2 (SORT mode, 16×16)**: full pipeline, drains moveStream, prints all moves
- **Test 3 (SORT mode, 16×32)**: 16×32 lattice with zone [0,16)×[8,24), 8 parking cols each side

---

## Running on Board (SSH)

```bash
sudo -E /usr/local/share/pynq-venv/bin/python3 atomflow_control.py
```

Output files: `occupancy.png`, `atomflow_result.png`, `latency_breakdown.pdf`, `latency_table.tex`
