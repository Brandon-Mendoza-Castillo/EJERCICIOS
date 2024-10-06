
; Ejercicio 20: Invertir los bits de un número
section .text
    global _start

_start:
    mov ax, 15      ; Número original en binario: 0000 1111
    not ax          ; Invertir todos los bits de AX
    ; El resultado será el complemento de AX
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
