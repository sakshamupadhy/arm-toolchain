CC = arm-none-eabi-gcc
LD = arm-none-eabi-ld

CFLAGS = -nostdlib -nostartfiles -ffreestanding
LDFLAGS = -T linker.ld

all: hello.elf

startup.o:
	$(CC) -c startup.s

hello.o:
	$(CC) -c hello.c

hello.elf: startup.o hello.o
	$(LD) $(LDFLAGS) startup.o hello.o -o hello.elf

run:
	qemu-system-arm -M versatilepb -nographic -kernel hello.elf

clean:
	rm -f *.o *.elf
