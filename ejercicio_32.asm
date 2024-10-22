
; Ejercicio 32: Contar cuántos números negativos hay en un arreglo
section .data
    array dw -1, 2, -3, 4, -5, 6

section .text
    global _start

_start:
    mov ecx, 6        ; Número de elementos en el arreglo
    mov rsi, array    ; Apuntar al primer valor
    xor bx, bx        ; Inicializar contador de negativos

count_negatives:
    mov ax, [rsi]     ; Cargar el valor actual
    cmp ax, 0         ; Comparar con 0
    jge no_increment  ; Si es mayor o igual a 0, no incrementar
    inc bx            ; Si es negativo, incrementar BX
no_increment:
    add rsi, 2        ; Avanzar al siguiente valor
    loop count_negatives ; Repetir hasta que ECX sea 0

    ; BX contendrá el número de valores negativos
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
