
; Ejercicio 17: Comparación de dos números
section .text
    global _start

_start:
    mov ax, 10      ; Primer número
    mov bx, 15      ; Segundo número
    cmp ax, bx      ; Comparar AX con BX
    jg ax_mayor     ; Si AX > BX, saltar
    mov cx, bx      ; Si no, almacenar BX en CX
    jmp fin
ax_mayor:
    mov cx, ax      ; Si AX es mayor, almacenar AX en CX
fin:
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
