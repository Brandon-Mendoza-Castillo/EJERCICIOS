section .data
    num dw 0x1234        ; Número de 16 bits (0x1234)
    result dw 0

section .text
    global _start

_start:
    mov ax, [num]        ; Cargar número en AX
    xchg ah, al          ; Intercambiar los bytes
    mov [result], ax     ; Almacenar el número invertido

    ; Mostrar el resultado (en un entorno adecuado)

    mov eax, 1
    int 0x80
