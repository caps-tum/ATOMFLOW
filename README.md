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
- 16×16 full-zone test: no parking → partial sort (92/96 filled)
- Solution: 16×32 lattice with computation zone [0,16)×[8,24) → 8 parking cols each side → 96/96 filled

### 3. Target geometry pattern
- Rows r%4 ∈ {0,1}: pattern `oxxxxxxooxxxxxxo` (cols 1-6 and 9-14 filled, 0/7/8/15 empty)
- Rows r%4 ∈ {2,3}: empty
- This repeating pattern provides natural parking space in empty rows

TODO: `load_target_geometry` iterates MAX_ROWS×MAX_COLS = 512×512 regardless of actual grid size — potential optimization target.
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

## Latency Breakdown (FPGA measurement, 16×16 grid, 30 moves)

| Stage                  | Latency (ms)   | % of Total | Source  |
|------------------------|----------------|------------|---------|
| Image Analysis         | 2.3 ± 0.1      | 2.3%       | FPGA    |
| Binary classif. + ctrl | 0.6            | 0.6%       | derived |
| Sorting (×30)          | 97.2           | 96.9%      | FPGA    |
| — per move             | 3.24           | —          | FPGA    |
| **Total**              | **100.3 ± 0.7**| 100%       | FPGA    |
| First-move latency     | 6.1            | —          | FPGA    |

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
