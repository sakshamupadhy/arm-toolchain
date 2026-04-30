.global _start

_start:
    ldr sp, =0x10000   // set stack
    bl main

hang:
    b hang
