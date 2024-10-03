
; Ejercicio 5: Bucle para imprimir números del 1 al 5
section .data
    numbers db 1, 2, 3, 4, 5

section .text
    global _start

_start:
    mov ecx, 5          ; Contador de bucles
    mov rsi, numbers    ; Apuntar a la lista de números

print_loop:
    mov al, [rsi]       ; Obtener el número actual
    ; Aquí iría la rutina para imprimir (omitida en este ejemplo)
    inc rsi             ; Mover al siguiente número
    loop print_loop     ; Repetir hasta que ECX sea 0

    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
