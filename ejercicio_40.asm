
; Ejercicio 40: Dividir un número de 32 bits entre un número de 16 bits
section .text
    global _start

_start:
    mov dx, 0x0001     ; Parte alta de 32 bits
    mov ax, 0x0000     ; Parte baja de 32 bits
    mov bx, 10         ; Divisor

    div bx             ; AX = cociente, DX = residuo

    ; AX contiene el cociente y DX el residuo
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
