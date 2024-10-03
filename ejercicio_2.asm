
; Ejercicio 2: Resta de dos números
section .text
    global _start

_start:
    mov ax, 10     ; Primer número
    mov bx, 4      ; Segundo número
    sub ax, bx     ; Resta de AX - BX
    mov cx, ax     ; Almacenar el resultado en CX
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
