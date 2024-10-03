
; Ejercicio 9: Desplazamiento a la izquierda
section .text
    global _start

_start:
    mov ax, 10      ; Valor inicial
    shl ax, 2       ; Desplazar a la izquierda 2 posiciones
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
