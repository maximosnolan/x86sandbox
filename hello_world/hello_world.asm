; hello_world.asm
;
; Author: Maximos Nolan
; Date: 21-Jan-2023

global _start

section .text:

_start:
    mov eax, 0x4    ;write syscall
    mov ebx, 1      ;stdout
    mov ecx, msg    ;add msg to out
    mov edx, msgLen ;add len
    int 0x80        ;perform syscall
    mov eax, 0x1    ;exit syscall
    mov ebx, 0x0    ;exit with status 0
    int 0x80        ;perform syscall

section .data:
; 0xA is newline char
    msg: db "Hello World!", 0xA
    msgLen equ $-msg

