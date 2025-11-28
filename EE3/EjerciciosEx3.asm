global NotBit32b
global XchgBits
global str_cnt_chr
global isPrime
global shr_s



NotBit32b:
    push ebp
    mov ebp, esp
    push ebx
    push ecx

    mov eax, [ebp + 8]
    mov cl, [ebp + 12]

    cmp cl, 32
    ja _1salir
    
    mov ebx, 1
    shl ebx, cl
    
    xor eax, ebx
    
    _1salir:
    pop ecx
    pop ebx
    pop ebp
ret

XchgBits:
    push ebp
    mov ebp, esp
    push ebx
    push edx

    mov eax, [ebp + 8]
    mov cl, [ebp + 12]
    mov ebx, 1
    shl ebx, cl
    mov cl, [ebp + 16]
    mov edx, 1
    shl edx, cl
    xor eax, ebx
    xor eax, edx

    pop edx
    pop ebx
    pop ebp
ret

str_cnt_chr:
    push ebp
    mov ebp, esp
    push edx
    push ebx
    push ecx
    mov edx, [ebp + 8]
    mov ebx, [ebp + 12]
    mov eax, 0

    contar:
        mov cl, [edx] 
        cmp cl, 0
        je fin2

        cmp ecx, ebx
        jne sig2
        inc eax
        sig2:
            inc edx
            jmp contar

        
    fin2:
    pop ecx
    pop ebx
    pop edx
    pop ebp
ret


isPrime:
    push ebp
    mov ebp, esp
    push ebx
    push ecx
    push edx
    mov ebx, [ebp + 8]
    

    cmp ebx, 1
    je no_primo
    cmp ebx, 2
    je primo
    test ebx, 1
    jz no_primo
    mov ecx, 3
    mov eax, ebx

    ciclo3:
        mov edx, 0
        idiv ecx
        cmp edx, 0
        je no_primo
        inc ecx
        cmp ecx, eax
        jb ciclo3

    primo:
        mov eax, 1
        jmp salir3

    no_primo:
        mov eax, 0
        
    salir3:
    pop edx
    pop ecx
    pop ebx
    pop ebp
ret

shr_s:
    push ebp
    mov ebp, esp

    mov eax, [ebp + 8]
    sar eax, 1

    pop ebp
ret