global suma2
global incrementar
global multi
global doble
global incrementar5
global suma3
global mezclar
global mezclar2
global cuadrado
global invertir_signo
global swap
global triple
global cuadrado_mas_cinco


suma2:
    push ebp
    mov ebp, esp
    push ebx
    mov eax, [ebp + 8]
    mov ebx, [ebp + 12]
    add eax, ebx
    pop ebx
    pop ebp
ret

incrementar:

    push ebp
    mov ebp, esp
    mov eax, [ebp + 8]
    inc dword [eax]
    pop ebp

ret

multi:
    push ebp
    mov ebp, esp
    push ebx

    mov eax, [ebp + 8]
    mov ebx, 3
    mul ebx

    pop ebx
    pop ebp

ret

doble:
    push ebp
    mov ebp, esp

    mov eax, [ebp + 8]
    add eax, eax

    pop ebp

ret


incrementar5:

    push ebp
    mov ebp, esp
    mov eax, [ebp + 8]
    inc dword [eax]
    pop ebp

ret

suma3:

    push ebp
    mov ebp, esp
    push ebx
    mov eax, [ebp + 8]
    mov ebx, [ebp + 12]
    add eax, ebx
    add eax, 3
    pop ebx
    pop ebp

ret

mezclar:
    push ebp
    mov ebp, esp
    push ebx
    push ecx
    push edx

    mov eax, [ebp + 8]
    mov ebx, [ebp + 12]
    mov ecx, [ebp + 16]
    add eax, eax
    push eax
    mov edx, 3
    mov eax, ebx
    mul edx
    mov ebx, eax
    pop eax
    add eax, ebx
    add eax, ecx

    pop edx
    pop ecx
    pop ebx
    pop ebp

ret

mezclar2:
    push ebp
    mov ebp, esp
    push ebx
    push ecx

    mov eax, [ebp + 8]
    add eax, eax
    mov ecx, eax
    mov ebx, [ebp + 12]
    add ebx, ebx
    add ebx, [ebp + 12]
    add ecx, ebx
    mov eax, ecx
    add eax, [ebp + 16]
    pop ecx
    pop ebx
    pop ebp


ret


cuadrado:

    push ebp
    mov ebp, esp
    mov eax, [ebp + 8]
    mul eax
    pop ebp

ret

invertir_signo:
    push ebp
    mov ebp, esp

    mov eax, [ebp + 8]
    neg dword [eax]
    pop ebp

ret

swap:
    push ebp
    mov ebp, esp
    push ebx
    push ecx
    push edx
    
    mov eax, [ebp + 8]
    mov ebx, [eax]

    mov ecx, [ebp + 12]
    mov edx, [ecx]

    mov [eax], edx
    mov [ecx], ebx

    pop edx
    pop ecx
    pop ebx
    pop ebp


ret

triple:
    push ebp
    mov ebp, esp
    push ebx

    mov eax, [ebp + 8]
    mov ebx, 3
    imul ebx

    pop ebx
    pop ebp

ret

cuadrado_mas_cinco:
	push ebp
	mov ebp, esp
	mov eax, [ebp + 8]
	imul eax
	add eax, 5
	pop ebp

ret


EsPrimo:

	cmp eax, 1
	jle noPrimo
	cmp eax, 2
	je primo
	test eax, 1
	jz noPrimo

	mov ecx, 3
	mov ebx, eax

	ciclo:
		mov eax, ebx
		mov edx, 0
		idiv ecx
		cmp edx, 0
		je noPrimo
		inc ecx
		cmp ecx, ebx
		jl ciclo
	primo:
		mov al, 1
		jmp salir
	noPrimo:
		mov al, 0
	salir:
ret

bcdANum:
	mov bh, al
	and bh, 0xF0
	shr bh, 4
	
	mov bl, al
	and bl, 0x0F
	mov al, 10
	mul bh
	add al, bl
ret


