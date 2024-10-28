
; Ejercicio 35: Comprobar si un número es múltiplo de otro
section .text
    global _start

_start:
    mov ax, 20         ; Número a verificar
    mov bx, 5          ; Posible divisor
    xor dx, dx         ; Limpiar el residuo
    div bx             ; Dividir AX entre BX
    cmp dx, 0          ; Verificar si hay residuo
    je es_multiplo     ; Si no hay residuo, es múltiplo
    mov cx, 0          ; Si hay residuo, CX = 0
    jmp fin
es_multiplo:
    mov cx, 1          ; Si es múltiplo, CX = 1
fin:
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
