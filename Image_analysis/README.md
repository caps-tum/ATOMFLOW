<!-- # paper-2026-NADA-FPGA
Code release for DAC26 paper "Highly-Parallel Atom-Detection Accelerator for Tweezer-Based Neutral Atom Quantum Computers" -->

## 📌 Introduction

This project is the open source implementation of the paper "Highly-Parallel Atom-Detection Accelerator for Tweezer-Based Neutral Atom Quantum Computers" (DAC 2026). It is a HLS-based accelerator of an atom reconstruction algorithm. The experimental FPGA platform is ZCU216.

## 📂 Project Structure

```plaintext
├── src/          # HLS design files
├── test_cases/   # Different size of generated atom images 
    ├── ...               
```

## 🛠 Build

Tested with:
- Xilinx Vitis 2024.2
- Vivado 2024.2