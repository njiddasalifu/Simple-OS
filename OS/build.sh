nasm -f elf32 boot.asm -o boot.o
gcc -m32 -c kernel.c -o kernel.o
ld -m elf_i386 linker.ld -o kernel boot.o kernel.o
# qemu -kernel kernel
# grub-mkrescue -o name.iso then directory
