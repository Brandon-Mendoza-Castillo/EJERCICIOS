section .data
    numbers db 1, 4, 7, 8, 12, 13
    count db 6
    pares db 0

section .text
    global _start

_start:
    xor cx, cx           ; CX = 0 (contador)
    xor bl, bl           ; BL = 0 (contador de pares)

check_loop:
    cmp cx, [count]
    je end_check
    mov al, [numbers + cx]
    test al, 1           ; Comprobar si el bit menos significativo es 0 (número par)
    jnz not_even
    inc bl               ; Incrementar contador de pares

not_even:
    inc cx               ; Incrementar contador
    jmp check_loop

end_check:
    mov [pares], bl

    ; Mostrar el resultado (en un entorno adecuado)

    mov eax, 1
    int 0x80
