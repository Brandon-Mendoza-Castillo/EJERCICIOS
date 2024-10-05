
; Ejercicio 11: Módulo (residuo de una división)
section .text
    global _start

_start:
    mov ax, 20      ; Dividendo
    mov bx, 6       ; Divisor
    xor dx, dx      ; Limpiar DX antes de la división
    div bx          ; Dividir AX entre BX, cociente en AX, residuo en DX
    ; DX contendrá el residuo (módulo)
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
