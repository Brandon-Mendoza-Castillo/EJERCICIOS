section .data
    num1 db 20
    num2 db 4
    result db 0

section .text
    global _start

_start:
    mov al, [num1]       ; Cargar numerador
    mov bl, [num2]       ; Cargar denominador
    xor ah, ah           ; Limpiar AH para una división correcta
    div bl               ; Dividir AL por BL, el resultado se almacena en AL
    mov [result], al     ; Almacenar el cociente

    ; Mostrar el resultado (en un entorno adecuado)

    mov eax, 1
    int 0x80
