; 64-bit nasm instructions for linux x86_64

section .data
    msg:    db "Hello, World", 0Ah
    description:   db "This line writed on assembly x86_64!", 0Ah
    mslen:  equ $-msg
    desclen:  equ $-description

section .text
        global _start
    _start:
        ; write(1, msg, msglen)
        mov rdi, 1 ; Вызов write
        mov rsi, msg ; msg в регистр rsi
        mov rdx, mslen ; msglen в rdx
        mov rax, 1 ; Вызов
        syscall ; Вызов ядра
        mov rsi, description ; description в rsi. Текст в регистр rsi
        mov rdx, desclen ; deslen в rdx. Длину строки в rdx
        syscall ; Вызов ядра
        ; exit
        mov rdi, 0
        mov rax, 60
        syscall