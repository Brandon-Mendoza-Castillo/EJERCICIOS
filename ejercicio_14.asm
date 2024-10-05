
; Ejercicio 14: Multiplicación por potencia de 2
section .text
    global _start

_start:
    mov ax, 3       ; Número base
    mov cl, 3       ; Potencia de 2 (2^3 = 8)
    shl ax, cl      ; Desplazar AX a la izquierda 3 posiciones (AX * 2^3)
    ; El resultado estará en AX
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
