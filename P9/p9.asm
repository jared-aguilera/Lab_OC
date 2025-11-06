%include "../LIB/pc_iox.inc"
N equ 5

section .text

    global _start

section .data

msgCapturar db "Ingresa valores 0 al 9: ", 10, 0
vec1 db '1','2','3','4','5','6','7','8','9','0'
vec2 db ''


_start:

    ;jmp .hexa
    ; ---------- Capturar vector 1
    mov edx, msgCapturar
    call puts
    mov ebx, vec1
    mov ecx, N
    call .capturar
    call .saltoLin

    ; ---------- Capturar vector 2
    mov edx, msgCapturar
    call puts
    mov ebx, vec2
    mov ecx, N
    call .capturar
    call .saltoLin

    .hexa:
    ; ---------- 
    call .saltoLin
    mov ebx, vec1
    mov ecx, N
    call .desplegar

    call .saltoLin

    call .sumar
    mov edx, ebx
    call puts


    call .saltoLin
    ; ----- Fin del programa
    mov eax, 1
    mov ebx, 0
    int 0x80


; -------------------------- Procedimientos

.saltoLin:
    push eax
    mov al, 10
    call putchar
    pop eax
ret


.capturar:
    mov edx, 0
    .cap1:
        call getch
        cmp al, '0'
        jb .cap1
        cmp al, '9'
        ja .cap1
        call putchar
        mov byte [ebx], al
        inc ebx
        inc edx
        cmp edx, 10
        jae .salir 
    loop .cap1
    .salir:
ret


.desplegar:
    .desp1:
        mov byte al, [ebx]
        call pHex_b
        inc ebx
    loop .desp1
ret


.sumar:
    mov ebx, vec1
    mov edx, vec2
    add ebx, edx
ret