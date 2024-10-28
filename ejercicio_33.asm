
; Ejercicio 33: Invertir los bits de un número
section .text
    global _start

_start:
    mov ax, 0b10101010   ; Número de ejemplo
    not ax               ; Invertir todos los bits de AX
    ; AX ahora contiene los bits invertidos
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
