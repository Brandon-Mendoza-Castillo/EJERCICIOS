
; Ejercicio 15: Invertir un arreglo de 4 elementos
section .data
    numbers dw 1, 2, 3, 4

section .text
    global _start

_start:
    mov ecx, 2        ; Contador para intercambios (mitad de 4)
    mov rsi, numbers  ; Apuntar al primer número
    mov rdi, numbers + 6  ; Apuntar al último número (4 elementos, cada uno de 2 bytes)

swap_loop:
    mov ax, [rsi]     ; Cargar primer número
    mov bx, [rdi]     ; Cargar último número
    mov [rsi], bx     ; Intercambiar último con primero
    mov [rdi], ax     ; Intercambiar primero con último
    add rsi, 2        ; Avanzar al siguiente
    sub rdi, 2        ; Retroceder al anterior
    loop swap_loop    ; Repetir hasta que ECX sea 0

    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
