all:
	rm -rf bin
	mkdir -p bin
	i686-elf-gcc -std=gnu99 -ffreestanding -g -c src/kernel/boot.s -o bin/boot.o
	i686-elf-gcc -std=gnu99 -ffreestanding -g -c src/kernel/kernel.c -o bin/kernel.o	
	i686-elf-gcc -ffreestanding -nostdlib -g -T src/kernel/linker.ld bin/boot.o bin/kernel.o -o bin/vaporOS.elf -lgcc

