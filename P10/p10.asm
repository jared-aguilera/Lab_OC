%include "../LIB/pc_iox.inc"

global suma
global strlen
global getBit



; -------------------------- Procedimientos
suma:
    push ebp
    mov ebp, esp
    
    mov eax, [ebp + 8]
    add eax, [ebp + 12]

    pop ebp
ret


strlen:
    push ebp
    mov ebp, esp
    push edi
    push ebx

    mov ebx, [ebp + 8]
    mov edi, 0

    next:
        mov al, [ebx + edi]
        cmp al, 0
        je salir
        inc edi
        jmp next

    salir:
        mov eax, edi
    
    pop ebx
    pop edi
    pop ebp
ret


getBit:
    push ebp
    mov ebp, esp

    mov eax, [ebp + 8]
    mov ecx, [ebp + 12]

    shr eax, cl
    and eax, 1

    pop ebp
ret