
; Ejercicio 13: Factorial de un número
section .text
    global _start

_start:
    mov ax, 5       ; Número para calcular el factorial
    mov bx, ax      ; Copiar valor de AX a BX
    dec bx          ; Decrementar BX para empezar el cálculo
fact_loop:
    mul bx          ; AX = AX * BX
    dec bx          ; Decrementar BX
    cmp bx, 1       ; ¿BX es 1?
    jg fact_loop    ; Si es mayor que 1, repetir
    ; El factorial estará en AX
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
