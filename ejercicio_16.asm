
; Ejercicio 16: Encontrar el número más grande en un arreglo
section .data
    numbers dw 5, 9, 3, 12, 7

section .text
    global _start

_start:
    mov ecx, 5        ; Número de elementos en el arreglo
    mov rsi, numbers  ; Apuntar al primer número
    mov ax, [rsi]     ; Almacenar primer número como el mayor

find_max:
    add rsi, 2        ; Mover al siguiente número
    cmp ax, [rsi]     ; Comparar con el siguiente número
    jge no_change     ; Si AX >= número actual, no cambiar
    mov ax, [rsi]     ; Si AX < número actual, actualizar AX
no_change:
    loop find_max     ; Repetir hasta que ECX sea 0

    ; El mayor número estará en AX
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
