
; Ejercicio 37: Buscar un número en un arreglo
section .data
    array dw 2, 4, 6, 8, 10, 12

section .text
    global _start

_start:
    mov ax, 8          ; Número a buscar
    mov ecx, 6         ; Número de elementos en el arreglo
    mov rsi, array     ; Apuntar al arreglo
    mov bx, -1         ; Inicializar posición en -1

find_number:
    cmp ax, [rsi]      ; Comparar número a buscar con elemento actual
    je found           ; Si se encuentra, saltar a "found"
    add rsi, 2         ; Avanzar al siguiente elemento
    loop find_number   ; Repetir hasta que ECX sea 0
    jmp fin

found:
    sub rsi, array     ; Calcular la posición
    shr rsi, 1         ; Convertir en índice (cada elemento es de 2 bytes)
    mov bx, si         ; Guardar la posición en BX

fin:
    ; BX contendrá la posición o -1 si no se encontró
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
