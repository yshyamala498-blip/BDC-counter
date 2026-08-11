# 🔢 BCD Counter using Verilog HDL

## 📌 Overview

This project implements a **BCD (Binary-Coded Decimal) Counter** using **Verilog HDL**.

The counter is designed as a **MOD-10 counter**, which counts from decimal **0 to 9** and then rolls over back to **0**.

### Counting Sequence

```text
0000 → 0001 → 0010 → 0011 → 0100
0101 → 0110 → 0111 → 1000 → 1001
                                      ↓
                                    0000
```