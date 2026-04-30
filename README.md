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

---

Author

Saksham Upadhyay
=======
# arm-toolchain
cross compiler
