# ATOMFLOW

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


PS controls the controller via **AXI-Lite** (start, parameters, status).
Moves are streamed out via **AXI-Stream** (no PS involvement in the real-time path).

---

## Key Design Decisions

### 1. AXI-Stream output
- Moves are streamed directly to a PL-side FIFO as they are generated
- Enables pipeline overlap between sorting and waveform generation
- AXI-Lite is slave-only (PS reads);


### 4. Parking space requirement
- Sorting algorithm needs columns outside the computation zone to park atoms temporarily
- 16×16 full-zone test: no parking → partial sort (92/96 filled)
- Solution: 16×32 lattice with computation zone [0,16)×[8,24) → 8 parking cols each side → 96/96 filled

### 5. Target geometry pattern
- Rows r%4 ∈ {0,1}: pattern `oxxxxxxooxxxxxxo` (cols 1-6 and 9-14 filled, 0/7/8/15 empty)
- Rows r%4 ∈ {2,3}: empty
- This repeating pattern provides natural parking space in empty rows

---

## Synthesis Results (Vitis HLS 2024.2, after HLSMoveStream)

| Resource  | Used      | Available | Utilization |
|-----------|-----------|-----------|-------------|
| BRAM_18K  | 611       | 2160      | **28%**     |
| DSP       | 541       | 4272      | 12%         |
| FF        | 187,449   | 850,560   | 22%         |
| LUT       | 251,743   | 425,280   | 59%         |
| URAM      | 0         | 80        | 0%          |
| Fmax      | 134.79 MHz (estimated, 10 ns target, 0.12 ns slack) |

### Latency breakdown (16×16 test)
| Stage                   | Cycles      | Time (@ 100 MHz) |
|-------------------------|-------------|------------------|
| reconstruct             | 182,496     | 1.82 ms          |
| copy loop               | ~2,003      | 0.02 ms          |
| emissions_to_statearray | ~52,048     | 0.52 ms          |
| load_target_geometry    | ~312,165    | 3.12 ms          |
| sortRemainingRowsOrCols | ~9,383,973  | 93.8 ms          |

TODO: `load_target_geometry` iterates MAX_ROWS×MAX_COLS = 512×512 regardless of actual grid size — potential optimization target.

---

## File Structure

```
ATOMFLOW/
├── sorting-organized-main/
│   └── src/
│       ├── sortLatticeByRow.hpp   # HLSMoveList, HLSMoveStream, function declarations
│       └── sortLatticeByRow.cpp   # sorting algorithm (templated on ML)
├── atomflow_controller/
│   ├── atomflow_controller.cpp    # HLS top-level function
│   ├── src/
│   │   ├── atomflow_controller.hpp
│   │   └── tb_atomflow_controller.cpp   # testbench (Tests 1-3)
│   └── hls_run_atomflow_controller.py   # Vitis HLS run script
```

---

## Testbench (tb_atomflow_controller.cpp)

- **Test 1 (READOUT mode)**: reconstruct only, no sorting, no stream output
- **Test 2 (SORT mode, 16×16)**: full pipeline, drains moveStream, prints all moves + occupancy maps
- **Test 3 (SORT mode, 16×32)**: 16×32 lattice with zone [0,16)×[8,24), embeds real emissions in cols 8-23
