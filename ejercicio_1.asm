
; Ejercicio 1: Suma de dos números
section .text
    global _start

_start:
    mov ax, 5      ; Primer número
    mov bx, 3      ; Segundo número
    add ax, bx     ; Suma de AX y BX
    mov cx, ax     ; Almacenar el resultado en CX
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
