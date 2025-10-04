🛠️ VSDBabySoC – Day 2 Submission
🔎 Overview

The VSDBabySoC is a simple System-on-Chip (SoC) integrating:

RISC-V processor (rvmyth)

PLL (Phase-Locked Loop) module

DAC (Digital-to-Analog Converter) module

This project demonstrates integration of IP cores and simulation verification using pre-synthesis and post-synthesis simulations.

📂 Project Structure
VSDBabySoC/
├── src/
│   ├── include/       # Header files (*.vh)
│   ├── module/        # Verilog modules
│   │   ├── vsdbabysoc.v    # Top-level SoC
│   │   ├── rvmyth.v        # RISC-V core
│   │   ├── avsdpll.v       # PLL
│   │   ├── avsddac.v       # DAC
│   │   └── testbench.v     # Testbench
├── output/             # Simulation outputs
└── compiled_tlv/       # Intermediate compiled files

🧩 Modules Description
vsdbabysoc.v (Top-Level SoC)

Integrates CPU, PLL, DAC modules.

Inputs: reset, VCO_IN, ENb_CP, ENb_VCO, REF, VREFH

Outputs: OUT (analog output from DAC)

Connection: 10-bit RV_TO_DAC bus & PLL clock (CLK)

rvmyth.v (RISC-V Core)

Simplified RISC-V processor generating 10-bit digital output for DAC.

Inputs: CLK, reset

Output: 10-bit OUT

avsdpll.v (PLL)

Generates stable clock for CPU synchronization.

Inputs: VCO_IN, ENb_CP, ENb_VCO, REF

Output: CLK

avsddac.v (DAC)

Converts 10-bit digital signal to analog output.

Inputs: D[9:0], VREFH

Output: OUT

🧪 Testbench

Initializes signals, generates clock, and dumps waveform files.

Produces pre_synth_sim.vcd and post_synth_sim.vcd for viewing in GTKWave.

Testbench is included; simulation commands are prepared.

▶️ Simulation Steps
Pre-Synthesis Simulation
iverilog -o output/pre_synth_sim/pre_synth_sim.out -DPRE_SYNTH_SIM \
-I src/include -I src/module \
src/module/testbench.v src/module/vsdbabysoc.v
cd output/pre_synth_sim
./pre_synth_sim.out


Waveform can be viewed using GTKWave later.

Post-Synthesis Simulation
iverilog -o output/post_synth_sim/post_synth_sim.out -DPOST_SYNTH_SIM \
-I src/include -I src/module \
src/module/testbench.v output/synthesized/vsdbabysoc.synth.v
cd output/post_synth_sim
./post_synth_sim.out

🛠️ Troubleshooting / Notes

Module Redefinition: Ensure modules are included only once.

Path Issues: Verify paths specified with -I are correct.

Commands are prepared; full waveform generation and RTL validation to be done later.

📦 Day 2 Deliverables

Project setup: Directories, header files, module placeholders.

Module overview: CPU, PLL, DAC description.

Simulation plan: Pre-synthesis and post-synthesis commands prepared.
