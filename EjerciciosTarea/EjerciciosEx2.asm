%include "../LIB/pc_iox.inc"

section .text

    global _start

section .data
    cadena db "Hola, soy Jared", 0

_start:

    mov ebx, cadena
    call PrintStr
    call SaltoLinea

    call InvertirStr
    call PrintStr
    call SaltoLinea

    mov cl, 3
    mov al, 0x08
    call TestBit
    call SaltoLinea

    mov edx, 127
    call EsPar
    add al, '0'
    call putchar
    call SaltoLinea

    ; ----- Fin del programa
    mov eax, 1
    mov ebx, 0
    int 0x80


; -------------------------- Procedimientos

SaltoLinea:
    push eax
    mov al, 10
    call putchar
    pop eax
ret

; Inciso 1 
PrintStr:

    push ebx
    push eax

    next:
        mov al, [ebx]
        cmp al, 0
        je salirPrint
        call putchar
        inc ebx
        jmp next

    salirPrint:
    pop eax
    pop ebx
ret

; Inciso 2
InvertirStr:
    push ebx
    push eax
    push edx
    push esi

    mov esi, ebx

    nextInv:
        mov al, [ebx]
        cmp al, 0
        je salirInv
        inc ebx
        jmp nextInv

    salirInv:
        dec ebx
        swap:
            mov al, [esi]
            mov dl, [ebx]
            mov [esi], dl
            mov [ebx], al
            inc esi
            dec ebx
            cmp esi, ebx
            jne swap

    pop esi
    pop edx
    pop eax
    pop ebx
ret

; Inciso 3
TestBit:
    push eax
    push ecx

    cmp cl, 0
    jl salirTB
    cmp cl, 7
    jg salirTB

    inc cl
    shr al, cl

    ; Esto es para comprobar que sí funciona TestBit
    ;jc esUno
    ;mov al, '0'
    ;call putchar
    ;jmp salirTB

    ;esUno:
    ;    mov al, '1'
    ;    call putchar
    ;    jmp salirTB


    salirTB:
    pop ecx
    pop eax
ret

; Inciso 4
EsPar:
    push edx

    test edx, 1
    jz SiEsPar
    mov al, 0
    jmp salirEsPar

    SiEsPar:
        mov al, 1

    salirEsPar:
    pop edx
ret