
; Ejercicio 23: Calcular la suma de los primeros N números
section .text
    global _start

_start:
    mov cx, 5       ; N = 5, queremos sumar los primeros 5 números
    xor ax, ax      ; Limpiar AX para usarlo como acumulador
sum_loop:
    add ax, cx      ; Sumar el valor de CX a AX
    dec cx          ; Decrementar CX
    jnz sum_loop    ; Repetir mientras CX no sea 0
    ; AX contendrá la suma de los primeros N números
    ; Terminar el programa
    mov eax, 60
    xor edi, edi
    syscall
