
; Ejercicio 4: Comparación de dos números
section .text
    global _start

_start:
    mov ax, 8      ; Primer número
    mov bx, 10     ; Segundo número
    cmp ax, bx     ; Comparar AX con BX
    jg mayor       ; Saltar a 'mayor' si AX > BX
    mov cx, 0      ; Si AX <= BX, CX = 0
    jmp fin
mayor:
    mov cx, 1      ; Si AX > BX, CX = 1
fin:
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
