
bits 32
 section .multiboot ; according to multiboot spec
 	dd 0x1BADB002  ;set magic number for bootloader
 	dd 0x0 		;set flags
 	dd - (0x1BADB002 + 0x0) ;set checksum
 
 section .text
 global start
 extern main    ; main func is defined in c file
 
 start:
 	cli ;clear/block interupts
 	mov esp, stack_space ;set stack pointer
 	call main
 	hlt   ; halt the cpu
 
 section .bss 
 resb 8192      ;8KB for stack
 stack_space:
