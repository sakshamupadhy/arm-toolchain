<<<<<<< HEAD
ARM Cross Compiler Toolchain and Bare-Metal Hello World

Overview

This project demonstrates how to use a custom-built ARM cross compiler toolchain to run a simple bare-metal program on an emulated ARM system using QEMU.

The program runs without any operating system and prints output using memory-mapped UART.

---

Toolchain

- Target: arm-none-eabi
- Compiler: GCC 13.2.0 (built from source)
- C Library: Newlib
- Emulator: QEMU (versatilepb board)

---

Project Structure

.
├── hello.c
├── startup.s
├── linker.ld
├── Makefile
├── screenshots/
│   └── output.png
└── README.md

---

Build Instructions

Run the following command:

make

This will compile the source files and generate the final ELF binary.

---

Run Instructions

make run

Or manually:

qemu-system-arm -M versatilepb -nographic -kernel hello.elf

---

Output

Hello rtems!

---

Description

- "startup.s" initializes the stack pointer and transfers control to the main function.
- "hello.c" contains the UART-based print logic.
- "linker.ld" defines the memory layout and entry point.

The program uses memory-mapped I/O to write directly to the UART register at address "0x101f1000".

---

Learning Outcomes

- Understanding of cross compilation
- Basics of bare-metal programming
- Linker script usage
- Low-level hardware interaction
- Running ARM binaries on QEMU

- # ARM Bare-Metal Toolchain and QEMU Execution

This project demonstrates how to build an ARM cross-compilation toolchain from source and run a simple bare-metal program on QEMU.

---

## Overview

- Built ARM cross compiler: `arm-none-eabi-gcc`
- Built and integrated:
  - binutils
  - gcc
  - newlib
- Created a bare-metal program using:
  - `startup.s`
  - `linker.ld`
  - `hello.c`
- Compiled and executed on QEMU (versatilepb)

- step1
- CREATE WORKING DIRECTORY
- mkdir arm-toolchain
- cd arm-toolchain


step2
DOWNLOAD SOURCES
STEP3
build binutils
STEP4
build GCC

---

## Prerequisites

Install required packages:

```bash
sudo apt update
sudo apt install build-essential git wget \
libgmp-dev libmpfr-dev libmpc-dev texinfo \
libisl-dev qemu-system-arm

---

Author

Saksham Upadhyay
=======
# arm-toolchain
cross compiler
