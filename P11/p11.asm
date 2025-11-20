extern putchar 
global pBin8b



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
    mov bl, 0

    ciclo1:
        push eax
        shl al, 1
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
        pop eax
        loop ciclo1

    pop ebx 
    pop edx 
    pop ecx
    pop ebp
ret