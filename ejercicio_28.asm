
; Ejercicio 28: Convertir un número negativo a positivo
section .text
    global _start

_start:
    mov ax, -15      ; Número negativo
    cmp ax, 0        ; Comparar con 0
    jge fin          ; Si es mayor o igual a 0, ya es positivo
    neg ax           ; Si es negativo, convertir a positivo
fin:
    ; AX contendrá el número positivo
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
