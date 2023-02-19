all:
	rm -rf bin
	mkdir -p bin
	i686-elf-as src/kernel/boot.s -o bin/boot.o
	i686-elf-gcc -c src/kernel/kernel.c -o bin/kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
	i686-elf-gcc -T src/kernel/linker.ld -o bin/myos.bin -ffreestanding -O2 -nostdlib bin/boot.o bin/kernel.o -lgcc
