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

## Synthesis Results (Vitis HLS 2024.2, MAX_ROWS=MAX_COLS=32)

| Resource  | Used    | Available | Utilization |
|-----------|---------|-----------|-------------|
| BRAM_18K  | 391     | 2160      | 18%         |
| DSP       | 472     | 4272      | 11%         |
| FF        | 169,959 | 850,560   | 19%         |
| LUT       | 168,628 | 425,280   | 39%         |
| URAM      | 0       | 80        | 0%          |
| Fmax      | ~135 MHz (10 ns target, 7.4 ns estimated) | | |

---

## Latency Breakdown

FPGA measurement on ZCU216, 16×32 physical grid with a 16×16 computation zone
(zone `[0,16)×[8,24)`, 8 parking columns each side), 256 detection sites of
which 125 are occupied, 96 target sites.

| Stage                     | Latency (ms) | Source  |
|---------------------------|--------------|---------|
| Image analysis (READOUT)  | 2.9          | FPGA    |
| First move packet         | 3.9          | FPGA    |
| Sorting (26 moves)        | 22.0         | derived |
| — per move                | 0.78         | FPGA    |
| **Total (AP_DONE)**       | **24.9**     | FPGA    |

Verified end to end: the controller reports `status = OK` and `targets = 96/96`,
and replaying the 26 emitted moves on the host reproduces the controller's own
final lattice exactly (0 cells differ). All 26 raw moves are directly
executable — no host-side filtering.

### Previous baseline (superseded)

An earlier bitstream measured 100.3 ms over 30 moves on a 16×16 full-zone
configuration. That figure predates both the parking-grid fix and the
atom-conservation fixes and is not reproducible from the current source. An
intermediate 16×16 run measured 25.3 ms / 29 moves, but only 22 of those moves
were executable and the result left 7 cells mismatched.

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
