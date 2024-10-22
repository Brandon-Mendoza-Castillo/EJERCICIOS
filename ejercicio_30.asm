
; Ejercicio 30: Encuentra el valor mínimo en un arreglo
section .data
    array dw 12, 4, 7, 9

section .text
    global _start

_start:
    mov rsi, array   ; Apuntar al arreglo
    mov ax, [rsi]    ; Cargar el primer valor
    mov cx, 4        ; Número de elementos en el arreglo

find_min:
    add rsi, 2       ; Avanzar al siguiente valor
    cmp ax, [rsi]    ; Comparar el valor actual con el siguiente
    jle no_change    ; Si el actual es menor o igual, no cambiar
    mov ax, [rsi]    ; Si el siguiente es menor, actualizar AX
no_change:
    loop find_min    ; Repetir hasta que CX sea 0

    ; AX contendrá el valor mínimo
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
