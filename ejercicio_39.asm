
; Ejercicio 39: Ordenar dos números
section .text
    global _start

_start:
    mov ax, 20         ; Primer número
    mov bx, 15         ; Segundo número

    cmp ax, bx
    jle end_sort       ; Si AX es menor o igual, no hacemos nada
    xchg ax, bx        ; Intercambiar AX y BX

end_sort:
    ; AX contiene el menor y BX el mayor
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
