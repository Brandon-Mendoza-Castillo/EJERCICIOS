
; Ejercicio 38: Hallar el máximo común divisor (MCD) de dos números
section .text
    global _start

_start:
    mov ax, 48         ; Primer número
    mov bx, 18         ; Segundo número

gcd:
    cmp bx, 0
    je end_gcd         ; Si BX es cero, terminamos y AX tiene el MCD
    xor dx, dx         ; Limpiar DX para la división
    div bx             ; AX = AX / BX, DX = residuo
    mov ax, bx         ; AX toma el valor de BX
    mov bx, dx         ; BX toma el residuo
    jmp gcd

end_gcd:
    ; AX contiene el MCD
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
