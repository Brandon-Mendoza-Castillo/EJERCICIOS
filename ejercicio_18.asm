
; Ejercicio 18: Multiplicación de dos números
section .text
    global _start

_start:
    mov ax, 7       ; Primer número
    mov bx, 6       ; Segundo número
    mul bx          ; Multiplicar AX por BX, resultado en DX:AX
    ; El resultado estará en DX:AX
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
