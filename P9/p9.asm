%include "../LIB/pc_iox.inc"
N equ 5

section .text

    global _start

section .data

    msgCapturar db "Ingresa valores 0 al 9: ", 10, 0
    msgDesplegar db "La suma de los 2 vectores en formato HEX es: ", 10, 0
    msgEscalar db "El producto escalar de los 2 vectores es: ", 0
    vec1 db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    vec2 db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0


_start:

    mov ecx, N
    cmp ecx, 0
    je fin_programa
    ; ---------- Capturar vector 1
    mov edx, msgCapturar
    call puts
    mov ebx, vec1
    call capturar
    call saltar
    call saltar

    ; ---------- Capturar vector 2
    mov edx, msgCapturar
    call puts
    mov ebx, vec2
    call capturar
    call saltar
    call saltar

    ; ---------- Producto Escalar
    mov eax, 0
    mov ebx, 0
    mov edx, msgEscalar
    call puts
    mov esi, vec1
    mov edi, vec2
    call calcularProdEsc
    call saltar
    call saltar

    ; ---------- Sumar vectores
    mov ebx, vec1
    mov edx, vec2
    call sumar

    ; ---------- Desplegar suma
    mov edx, msgDesplegar
    call puts
    call desplegar
    call saltar
    call saltar

    fin_programa:
    ; ----- Fin del programa
    mov eax, 1
    mov ebx, 0
    int 0x80


; -------------------------- Procedimientos

saltar:
    push eax
    mov al, 10
    call putchar
    pop eax
ret

espacio:
    push eax
    mov al, 32
    call putchar
    call putchar
    pop eax
ret


; ---------- Inciso A
capturar:
    push ecx
    push eax
    push ebx

    cap:
        call getch
        cmp al, '0'
        jb cap
        cmp al, '9'
        ja cap
        call putchar
        sub al, '0'
        call espacio
        mov [ebx], al
        inc ebx
        loop cap

    pop ebx
    pop eax
    pop ecx
ret


; ---------- Inciso B
desplegar:
    push eax
    push ebx
    push ecx

    cmp ecx, 0
    je fin_desp
    cmp ecx, 10
    ja fin_desp

    sig:
        mov al, [ebx]
        call pHex_b
        inc ebx
        call espacio
        loop sig

    fin_desp: 
        pop ecx
        pop ebx
        pop eax
ret


; ---------- Inciso C
sumar:
    push eax
    push ebx
    push ecx
    push edx

    sig_sum:
        mov al, [edx]
        add [ebx], al
        inc ebx
        inc edx
        loop sig_sum

    pop edx
    pop ecx
    pop ebx
    pop eax
ret

; ---------- Producto Escalar
calcularProdEsc:
    push eax
    push ebx
    push ecx
    push esi
    push edi


    sig_pe:
        mov al, [esi]
        mul byte [edi]
        add bx, ax
        inc esi
        inc edi
        loop sig_pe
        mov ax, bx
        call pHex_w

    pop edi
    pop esi
    pop ecx
    pop ebx
    pop eax
ret