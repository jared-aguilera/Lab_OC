%include "../LIB/pc_iox.inc"

section .text

    global _start

_start:

    ; ----- Ejercicio Inciso A)

    mov ebx, 0x5C4B2A60
    add ebx, 0x02218995
    mov eax, ebx
    call pHex_dw
    

    mov al, 10
    call putchar
    call putchar ; Llamo 2 veces a putchar para doble salto en la terminal


    ; ----- Ejercicio Inciso B)

    mov eax, esp
    call pHex_dw
    
    mov al, 10
    call putchar

    push bx
    mov eax, esp
    call pHex_dw


    mov al, 10
    call putchar
    call putchar ; Llamo 2 veces a putchar para doble salto en la terminal

    ; ----- Ejercicio Inciso C)

    mov al, bl
    mov cl, 8
    mul cl
    mov [N], ax
    call pHex_w


    mov al, 10
    call putchar
    call putchar ; Llamo 2 veces a putchar para doble salto en la terminal

    ; ----- Ejercicio Inciso D)

    inc word [N]
    mov ax, [N]
    call pHex_w


    mov al, 10
    call putchar
    call putchar ; Llamo 2 veces a putchar para doble salto en la terminal

    ; ----- Ejercicio Inciso E)

    mov ax, bx
    mov cl, 0xFF
    div cl
    call pHex_b

    mov al, 10
    call putchar

    mov al, ah
    call pHex_b


    mov al, 10
    call putchar
    call putchar ; Llamo 2 veces a putchar para doble salto en la terminal

    ; ----- Ejercicio Inciso F)

    mov bx, [N]
    add bl, ah
    mov al, 0
    adc bh, al
    mov [N], bx
    mov ax, [N]
    call pHex_w


    mov al, 10
    call putchar
    call putchar ; Llamo 2 veces a putchar para doble salto en la terminal


    ; ----- Ejercicio Inciso G)
    
    dec word [N]
    mov ax, [N]
    call pHex_w

    mov al, 10
    call putchar

    pushfd
    pop eax
    call pHex_dw

    mov al, 10
    call putchar
    call putchar ; Llamo 2 veces a putchar para doble salto en la terminal    

    ; ----- Ejercicio Inciso H)

    pop ax
    call pHex_w

    mov al, 10
    call putchar

    ; ----- 
    mov eax, 1
    mov ebx, 0
    int 0x80


section .data
N dw 0