; helloWorld.asm version 2
; Created by Aaron on 4th June 2024

global _start

section .text:

_start: 
    mov eax, 0x4                ; use to write syscall
    mov ebx, 1                  ; use stdout as fd
    mov ecx, message            ; use message as buffer
    mov edx, message_length     ; and supply the length
    int 0x80                    ; invoke syscall
    
    ; now exit
    mov eax, 0x1
    mov ebx, 0
    int 0x80
    
section .data:
    message: db "Hello World!", 0xA
    message_length equ $-message
