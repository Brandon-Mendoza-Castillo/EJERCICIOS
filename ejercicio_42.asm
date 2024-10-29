
; Ejercicio 42: Multiplicar elementos de dos arreglos
section .data
    array1 dw 1, 2, 3, 4
    array2 dw 5, 6, 7, 8
    result dw 0, 0, 0, 0

section .text
    global _start

_start:
    mov ecx, 4         ; Número de elementos
    mov rsi, array1    ; Apuntar al primer arreglo
    mov rdi, array2    ; Apuntar al segundo arreglo
    mov rdx, result    ; Apuntar al arreglo de resultados

multiply_arrays:
    mov ax, [rsi]      ; Leer elemento de array1
    imul ax, [rdi]     ; Multiplicar por elemento de array2
    mov [rdx], ax      ; Guardar resultado en arreglo result
    add rsi, 2         ; Avanzar en array1
    add rdi, 2         ; Avanzar en array2
    add rdx, 2         ; Avanzar en result
    loop multiply_arrays

    ; El arreglo result contiene los productos
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
