
; Ejercicio 29: Calcular la potencia de un número
section .text
    global _start

_start:
    mov ax, 2        ; Base
    mov bx, 3        ; Exponente
    mov cx, bx       ; Guardar el exponente en CX
    mov dx, ax       ; Guardar la base original en DX

power_loop:
    dec cx           ; Decrementar el contador de ciclos
    jz fin           ; Si CX es 0, terminar
    mul dx           ; Multiplicar AX por la base original
    jmp power_loop   ; Repetir el ciclo

fin:
    ; AX contendrá el resultado de la potencia
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
