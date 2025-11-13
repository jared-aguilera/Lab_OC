%include "../LIB/pc_iox.inc"

global suma
;global getBit



; -------------------------- Procedimientos
suma:
    push ebp
    mov ebp, esp
    
    mov eax, [ebp + 8]
    add eax, [ebp + 12]

    pop ebp
ret

