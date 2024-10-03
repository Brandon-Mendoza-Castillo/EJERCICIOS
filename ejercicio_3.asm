
; Ejercicio 3: Multiplicación de dos números
section .text
    global _start

_start:
    mov ax, 6      ; Primer número
    mov bx, 7      ; Segundo número
    imul bx        ; Multiplicar AX por BX
    mov cx, ax     ; Almacenar el resultado en CX
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
