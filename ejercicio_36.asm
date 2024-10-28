
; Ejercicio 36: Sumar números en posiciones impares de un arreglo
section .data
    array dw 3, 5, 7, 9, 11, 13

section .text
    global _start

_start:
    mov ecx, 3         ; Número de posiciones impares
    mov rsi, array     ; Apuntar al arreglo
    add rsi, 2         ; Apuntar a la primera posición impar
    xor ax, ax         ; Limpiar AX para la suma

sum_impares:
    add ax, [rsi]      ; Sumar el valor en posición impar
    add rsi, 4         ; Saltar a la siguiente posición impar
    loop sum_impares   ; Repetir hasta que ECX sea 0

    ; AX contendrá la suma de posiciones impares
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
