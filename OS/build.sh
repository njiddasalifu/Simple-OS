#nasm -f elf32 kernel.asm -o kasm.o
gcc -m32 -c kernel.c -o kc.o -ffreestanding
ld -m elf_i386 -T link.ld -o iso/boot/kernel.bin kasm.o kc.o 
qemu-system-x86_64 -kernel iso/boot/kernel.bin
#grub-mkrescue -o iknow.iso iso/

read a


