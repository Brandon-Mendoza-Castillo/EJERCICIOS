
; Ejercicio 8: Suma de elementos de un arreglo
section .data
    numbers dw 1, 2, 3, 4, 5

section .text
    global _start

_start:
    mov ecx, 5        ; Número de elementos del arreglo
    mov rsi, numbers  ; Apuntar al primer elemento del arreglo
    xor ax, ax        ; Inicializar suma en AX

sum_loop:
    add ax, [rsi]     ; Sumar el valor actual al acumulador
    add rsi, 2        ; Mover al siguiente valor (tamaño de 2 bytes por cada número)
    loop sum_loop     ; Repetir hasta que ECX sea 0

    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
