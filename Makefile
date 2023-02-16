all:
	rm -rf bin
	mkdir -p bin
	i686-elf-as src/kernal/boot.s -o bin/boot.o
