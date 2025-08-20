section .data
    msg db "Hello, World!", 10
    len equ $ - msg

section .text
    global _start

_start:
    ; write(1, msg, len)
    mov rax, 1          ; syscall: write
    mov rdi, 1          ; fd = stdout
    mov rsi, msg
    mov rdx, len
    syscall

    ; exit(0)
    mov rax, 60         ; syscall: exit
    xor rdi, rdi
    syscall