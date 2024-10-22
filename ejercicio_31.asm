
; Ejercicio 31: Factorial de un número
section .text
    global _start

_start:
    mov cx, 5        ; Número para calcular factorial
    mov ax, 1        ; Inicializar AX con 1

factorial_loop:
    mul cx           ; Multiplicar AX por CX
    dec cx           ; Decrementar CX
    jnz factorial_loop ; Repetir hasta que CX sea 0

    ; AX contendrá el factorial del número
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
