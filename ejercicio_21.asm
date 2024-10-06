
; Ejercicio 21: Contador de números pares
section .data
    numbers dw 1, 2, 3, 4, 5, 6

section .text
    global _start

_start:
    mov ecx, 6        ; Número de elementos en el arreglo
    mov rsi, numbers  ; Apuntar al primer número
    xor bx, bx        ; Inicializar contador de pares en BX

count_loop:
    mov ax, [rsi]     ; Cargar el valor actual
    test ax, 1        ; Comprobar si el número es impar (último bit)
    jnz no_increment  ; Si es impar, no incrementar
    inc bx            ; Si es par, incrementar BX
no_increment:
    add rsi, 2        ; Avanzar al siguiente número
    loop count_loop   ; Repetir hasta que ECX sea 0

    ; El número de pares estará en BX
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
