section .data
    num1 db 7
    num2 db 3
    num3 db 5
    max db 0

section .text
    global _start

_start:
    mov al, [num1]      ; Cargar primer número
    mov bl, [num2]      ; Cargar segundo número
    cmp al, bl          ; Comparar AL y BL
    jge first_is_greater ; Si AL >= BL, AL sigue siendo el mayor
    mov al, bl          ; Si no, BL es el mayor

first_is_greater:
    mov bl, [num3]      ; Cargar tercer número
    cmp al, bl          ; Comparar AL con el tercer número
    jge store_result    ; Si AL >= BL, AL sigue siendo el mayor
    mov al, bl          ; Si no, BL (el tercero) es el mayor

store_result:
    mov [max], al       ; Almacenar el mayor en max

    ; Mostrar el resultado (en un entorno adecuado)

    mov eax, 1          ; syscall para salida
    int 0x80            ; Llamar a la interrupción para terminar
