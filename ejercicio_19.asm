
; Ejercicio 19: Sumar dos arreglos
section .data
    array1 dw 1, 2, 3, 4
    array2 dw 5, 6, 7, 8
    result dw 0, 0, 0, 0

section .text
    global _start

_start:
    mov ecx, 4        ; Número de elementos en los arreglos
    mov rsi, array1   ; Apuntar al primer arreglo
    mov rdi, array2   ; Apuntar al segundo arreglo
    mov rdx, result   ; Apuntar al arreglo de resultado

sum_loop:
    mov ax, [rsi]     ; Cargar valor de array1
    add ax, [rdi]     ; Sumar valor correspondiente de array2
    mov [rdx], ax     ; Almacenar el resultado en el arreglo result
    add rsi, 2        ; Avanzar al siguiente elemento de array1
    add rdi, 2        ; Avanzar al siguiente elemento de array2
    add rdx, 2        ; Avanzar al siguiente elemento de result
    loop sum_loop     ; Repetir hasta que ECX sea 0

    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
