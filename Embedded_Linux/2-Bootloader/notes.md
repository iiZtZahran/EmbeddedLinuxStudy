## PRE-Requisites Info
-BIOS: check for basic hardware on the board (Self Test)
-**SRAM** is fast, low-power, and used for smaller memory requirements, but it is expensive and has low density.
-**DRAM** is slower and needs more power, but it is more cost-effective and better suited for high-capacity memory.
-**SPL**: init DRAM(controller + Memory) and prepare for the 3rd stage + Load 3rd Stage bootloader from ROM to DRAM

## Boot Sequence Overview

Initially, booting was straightforward, using a simple bootloader in non-volatile NOR flash memory. The bootloader’s jump instruction at the reset vector initiated boot-up, enabling DRAM setup and kernel loading. Today, however, the complexity of booting requires a multi-stage process involving several layers of loaders, each with a distinct function.

## Phase 1: ROM Code
- **Purpose**: Start the boot process immediately after reset, stored on-chip as proprietary code.
- **Operation**: Typically doesn't initialize DRAM; instead, it utilizes small on-chip SRAM.
- **Function**: Loads the secondary program loader (SPL) into SRAM from various sources (e.g., NAND flash, SPI, MMC, Ethernet).

## Phase 2: Secondary Program Loader (SPL)
- **Purpose**: Prepares essential components (like the memory controller) to load the next stage into DRAM.
- **Operation**: Executes in SRAM, loads the tertiary program loader (TPL) into DRAM.
- **Functionality**: Limited by SRAM size; may read known file names from storage devices.

## Phase 3: Tertiary Program Loader (TPL)
- **Purpose**: Provides a more capable bootloader environment, often with user interaction through a command-line interface.
- **Operation**: Runs in DRAM, loads the kernel, optionally appending device trees (FDT) or an initial RAM disk.
- **Final Step**: Transfers control to the kernel, making the embedded bootloader inactive during runtime.

Each phase builds on the last, transitioning control from a minimal ROM code to the fully operational TPL, where the kernel is loaded and ready to execute.

## BootLoader
-most embedded linux boards use u-boot becasue: - ez to use and configure -support different boards -small size
-dts: device tree system 
-dtb: device tree binary 
-after kernal takes over it passes kernel parameters aka device tree as dtb so that it can start the device drivers
-so uboot pass the dtb to kernel for device drivers














