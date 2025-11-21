extern putchar 
global pBin8b
global pBin16b
global pBin32b
global pBin64b



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

imprimirGuion:
    push eax
    inc esi
    cmp esi, 4
    jnz seguir
        mov al, '-'
        call myPutchar
        mov esi, 0
    seguir:
    pop eax
ret


pBin8b:
    push ebp
    mov ebp, esp
    push edx
    push ecx
    push eax
    push esi
    mov dl, [ebp + 8]

    mov ecx, 8
    mov esi, 0

    ciclo1:
        shl dl, 1
        jc esUno_8b
        mov al, '0'
        call myPutchar
        jmp finCiclo1
        esUno_8b:
            mov al, '1'
            call myPutchar
        finCiclo1:
        call imprimirGuion
        loop ciclo1

    pop esi
    pop eax
    pop ecx
    pop edx
    pop ebp
ret

pBin16b:
    push ebp
    mov ebp, esp
    push edx
    push ecx
    push eax
    push esi
    mov dx, [ebp + 8]

    mov ecx, 16
    mov esi, 0

    ciclo2:
        shl dx, 1
        jc esUno_16b
        mov al, '0'
        call myPutchar
        jmp finCiclo2
        esUno_16b:
            mov al, '1'
            call myPutchar
        finCiclo2:
        call imprimirGuion
        loop ciclo2

    pop esi
    pop eax
    pop ecx
    pop edx
    pop ebp    
ret

pBin32b:
    push ebp
    mov ebp, esp
    push edx
    push ecx
    push eax
    push esi
    mov edx, [ebp + 8]

    mov ecx, 32
    mov esi, 0

    ciclo3:
        shl edx, 1
        jc esUno_32b
        mov al, '0'
        call myPutchar
        jmp finCiclo3
        esUno_32b:
            mov al, '1'
            call myPutchar
        finCiclo3:
        call imprimirGuion
        loop ciclo3

    pop esi
    pop eax
    pop ecx
    pop edx
    pop ebp    
ret

pBin64b:
    push ebp
    mov ebp, esp
    push edx
    push ecx
    push ebx
    push eax
    push edi
    push esi
    mov edi, [ebp + 8]
    mov edx, [ebp + 12]

    mov ecx, 32
    mov ebx, 1
    mov esi, 0 

    ciclo4:
        shl edx, 1
        jc esUno_64b
        mov al, '0'
        call myPutchar
        jmp finCiclo4
        esUno_64b:
            mov al, '1'
            call myPutchar
        finCiclo4:
        call imprimirGuion
        loop ciclo4

        cmp ebx, 0
        jz final
        mov ebx, 0
        mov ecx, 32
        mov edx, edi
        jmp ciclo4

    final:

    pop esi
    pop edi
    pop eax
    pop ebx
    pop ecx
    pop edx
    pop ebp
ret