
; Ejercicio 41: Contar números pares en un arreglo
section .data
    array dw 2, 3, 4, 5, 6, 7

section .text
    global _start

_start:
    mov ecx, 6         ; Número de elementos
    mov rsi, array     ; Apuntar al arreglo
    xor cx, cx         ; Contador de números pares

count_even:
    mov ax, [rsi]      ; Leer elemento del arreglo
    test ax, 1         ; Verificar si es par
    jnz skip           ; Si es impar, saltar
    inc cx             ; Incrementar contador si es par
skip:
    add rsi, 2         ; Avanzar al siguiente elemento
    loop count_even

    ; CX contiene la cantidad de números pares
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
