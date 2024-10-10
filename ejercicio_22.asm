
; Ejercicio 22: Dividir dos números
section .text
    global _start

_start:
    mov ax, 20      ; Dividendo
    mov bx, 3       ; Divisor
    xor dx, dx      ; Limpiar DX antes de la división
    div bx          ; Dividir AX entre BX, cociente en AX, residuo en DX
    ; El cociente estará en AX y el residuo en DX
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
