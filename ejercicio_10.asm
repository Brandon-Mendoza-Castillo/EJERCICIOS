
; Ejercicio 10: Comprobación de paridad
section .text
    global _start

_start:
    mov ax, 11      ; Valor a comprobar
    test ax, 1      ; Comprobar si el último bit está encendido (impar)
    jz es_par       ; Si es cero, el número es par
    mov bx, 0       ; Impar: guardar 0 en BX
    jmp fin
es_par:
    mov bx, 1       ; Par: guardar 1 en BX
fin:
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
