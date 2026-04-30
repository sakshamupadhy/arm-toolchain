arm-none-eabi-gcc -c startup.s
arm-none-eabi-gcc -c hello.c

arm-none-eabi-ld -T linker.ld startup.o hello.o -o hello.elf
