section .data
    num1 db 4
    num2 db 6
    result dw 0         ; El resultado será un word (16 bits) porque la multiplicación puede dar un valor mayor a 8 bits.

section .text
    global _start

_start:
    mov al, [num1]      ; Cargar primer número
    mov bl, [num2]      ; Cargar segundo número
    mul bl              ; Multiplicar AL por BL, el resultado se almacena en AX
    mov [result], ax    ; Almacenar el resultado

    ; Mostrar el resultado (en un entorno adecuado)

    mov eax, 1
    int 0x80
