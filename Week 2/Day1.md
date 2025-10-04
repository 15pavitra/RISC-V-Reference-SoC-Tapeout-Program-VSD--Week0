📘 BabySoC Fundamentals – Day 1
🔎 What is an SoC?

A System-on-Chip (SoC) is an integrated circuit that combines all major components of a computing system onto a single chip.
Instead of using separate ICs for CPU, memory, and peripherals, an SoC integrates everything in one silicon die, making it compact, efficient, and cost-effective.

🧩 Components of an SoC

CPU (Processor Core)

Executes instructions, controls flow of operations.

In BabySoC → simplified RISC-V core (rvmyth).

Memory

Stores instructions and data required by the CPU.

May include SRAM, cache, and external memory interfaces.

Peripherals

Support functionality like timers, GPIO, DAC/ADC, UART, SPI, etc.

In BabySoC → DAC module acts as an example peripheral.

Interconnects (Buses/Networks)

Provide communication between CPU, memory, and peripherals.

Example: AMBA, Wishbone, AXI in real SoCs.

🎯 Why BabySoC?

A simplified model of a real SoC, meant for learning fundamentals.

Keeps complexity low by focusing only on 3 blocks:

RISC-V CPU core (rvmyth)

PLL (clock generation)

DAC (output interface)

Helps students understand how components interact in a controlled environment.

Avoids overwhelming details of real industrial SoCs (billions of transistors, complex interconnects).

BabySoC acts as a training ground to:

Learn integration of IP blocks.

Practice simulation flows (pre-synthesis, post-synthesis).

Bridge the gap between theory (Digital Design) and practical SoC design.

🛠️ Role of Functional Modeling

Before moving to RTL design and physical design, we first do functional modeling:

Creates a high-level behavioral description of the system.

Ensures system correctness before investing effort in low-level RTL or layout.

Detects design issues early → saves cost and time.

🔗 Flow:

Functional Modeling → behavioral simulation of system idea.

RTL Design → Verilog/SystemVerilog representation of modules.

Physical Design → synthesis, floorplanning, routing, GDSII for fabrication.

Thus, functional modeling = the first safety net in SoC design.
