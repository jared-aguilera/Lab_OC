%include "../LIB/pc_iox.inc"

extern pBin_n
extern pBin_b
extern pBin_w
extern pBin_dw


section .text

    global _start

_start:

    ; ---------- Inciso A

    mov eax, 0x22446688
    ror eax, 4
    call pHex_dw

    mov al, 10
    call putchar
    call putchar 


    ; ---------- Inciso B

    mov cx, 0x3F48
    shl cx, 3
    mov ax, cx
    call pHex_w

    mov al, 10
    call putchar
    call putchar 


    ; ---------- Inciso C

    mov esi, 0x20D685F3
    mov eax, esi
    call pBin_dw
    mov al, 10
    call putchar
    xor esi, 0x40042021
    mov eax, esi
    call pBin_dw

    mov al, 10
    call putchar
    call putchar 

    ; ---------- Inciso D

    push esi


    ; ---------- Inciso E 
    mov ch, 0xA7
    mov al, ch
    call pBin_b

    mov al, 10
    call putchar

    or ch, 0x48
    mov al, ch
    call pBin_b

    mov al, 10
    call putchar 
    call putchar 


    ; ---------- Inciso F 
    mov bp, 0x67DA
    





    ; ----- Fin del programa
    mov eax, 1
    mov ebx, 0
    int 0x80

