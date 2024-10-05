
; Ejercicio 12: Conversión de mayúsculas a minúsculas
section .text
    global _start

_start:
    mov al, 'A'     ; Letra a convertir
    cmp al, 'A'     ; Comparar si AL >= 'A'
    jb no_cambio    ; Si es menor, no cambiar
    cmp al, 'Z'     ; Comparar si AL <= 'Z'
    ja no_cambio    ; Si es mayor, no cambiar
    add al, 32      ; Convertir a minúscula sumando 32
no_cambio:
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
