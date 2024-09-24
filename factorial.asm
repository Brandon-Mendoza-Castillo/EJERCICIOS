section .data
    num db 5
    result dw 1

section .text
    global _start

_start:
    mov cx, [num]        ; Número a calcular el factorial
    mov ax, 1            ; AX = 1 (resultado inicial)

factorial_loop:
    cmp cx, 1            ; Si CX <= 1, hemos terminado
    jbe end_factorial
    mul cx               ; AX = AX * CX
    loop factorial_loop  ; Decrementa CX y repite

end_factorial:
    mov [result], ax     ; Almacenar el resultado

    ; Mostrar el resultado (en un entorno adecuado)

    mov eax, 1
    int 0x80
