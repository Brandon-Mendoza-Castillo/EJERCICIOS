
; Ejercicio 7: Intercambio de valores entre dos registros
section .text
    global _start

_start:
    mov ax, 15      ; Primer valor
    mov bx, 25      ; Segundo valor
    xchg ax, bx     ; Intercambiar valores de AX y BX
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
