section .data
    numbers db 3, 5, 7, 2, 8
    count db 5           ; Número de elementos en el arreglo
    sum db 0

section .text
    global _start

_start:
    xor cx, cx           ; CX = 0 (contador)
    xor al, al           ; AL = 0 (acumulador)

sum_loop:
    cmp cx, [count]      ; Comparar el contador con la cantidad de números
    je end_sum           ; Si ya se sumaron todos, salir del bucle
    add al, [numbers + cx] ; Sumar el siguiente número
    inc cx               ; Incrementar contador
    jmp sum_loop         ; Repetir

end_sum:
    mov [sum], al        ; Almacenar el resultado de la suma

    ; Mostrar el resultado (en un entorno adecuado)

    mov eax, 1
    int 0x80
