
; Ejercicio 34: Convertir grados Celsius a Fahrenheit
section .text
    global _start

_start:
    mov ax, 25         ; Grados Celsius
    imul ax, 9         ; AX * 9
    mov bx, 5          ; Divisor para la conversión
    div bx             ; AX = (AX * 9) / 5
    add ax, 32         ; AX + 32 para la conversión a Fahrenheit
    mov bx, ax         ; Guardar el resultado en BX
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
