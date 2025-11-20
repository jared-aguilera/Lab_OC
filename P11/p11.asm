extern putchar 
global pBin8b
global pBin16b



; -------------------------- Procedimientos
myPutchar:
    push edx
    push ecx
    push eax
    call putchar
    pop eax
    pop ecx
    pop edx
ret

pBin8b:
    push ebp
    mov ebp, esp
    mov al, [ebp + 8]
    push ecx
    push edx
    push ebx

    mov edx, 9

    ciclo1:
        ;mov bl, al
        shl al, 1
        mov bl, al
        jc esUno
        mov eax, '0'
        call myPutchar
        jmp fin1

        esUno:
            mov eax, '1'
            call myPutchar
        fin1:
        dec edx
        mov ecx, edx
        mov al, bl
        loop ciclo1

    pop ebx 
    pop edx 
    pop ecx
    pop ebp
ret


pBin16b:
    push ebp
    mov ebp, esp
    mov ax, [ebp + 8]
    push ecx
    push edx
    push ebx

    mov edx, 17

    ciclo2:
        ;mov bl, al
        shl ax, 1
        mov bx, ax
        jc esUno2
        mov eax, '0'
        call myPutchar
        jmp fin2

        esUno2:
            mov eax, '1'
            call myPutchar
        fin2:
        dec edx
        mov ecx, edx
        mov ax, bx
        loop ciclo2

    pop ebx 
    pop edx 
    pop ecx
    pop ebp
ret