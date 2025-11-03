%include "../LIB/pc_iox.inc"

section .text

    global _start

section .data

msgInicioA db "Ingresa un caracter entre a-z: ", 0
msgMenorM db "El caracter capturado es menor que m", 10, 0
msgNegA db "El caracter no es menor que m", 10, 0
msgIncisoB db "Ingresa un caracter entre 0-9 y A-Z: ", 0
msgEsLetra db "El caracter capturado es una letra mayuscula", 10, 0
msgEsNum db "El caracter capturado es un numero", 10, 0
msgNegB db "El caracter no es una letra mayuscula ni un numero", 10, 0
msgIncisoC db "Impresion de astericos: ", 10, 0
msgIncisoD db "Ingresa 10 caracteres: ", 10, 0
msgDatosCapt db "Datos Capturados: ", 10, 0
arreglo db 10 dup(0)


_start:

    ; ---------- Inciso A
    mov edx, msgInicioA
    call puts
    call getche

    cmp al, 'a'
    jge .verMenor
    jmp .msgNegA

.verMenor:
    cmp al, 'm'
    jl .esMenor
    jmp .msgNegA

.esMenor:    
    mov al, 10
    call putchar
    mov edx, msgMenorM
    call puts
    jmp .incsB

.msgNegA:
    mov al, 10
    call putchar
    mov edx, msgNegA
    call puts



.incsB:
    ; ---------- Inciso B
    mov al, 10
    call putchar 
    mov edx, msgIncisoB
    call puts
    call getche

    cmp al, 'Z'
    jle .verifLetra
    jmp .msgNegB

 .verifLetra:
    cmp al, 'A'
    jge .esLetra
    jmp .verifNum

.esLetra:
    mov al, 10
    call putchar
    mov edx, msgEsLetra
    call puts
    jmp .incC

 .verifNum:
    cmp al, '9'
    jle .verNum
    jmp .msgNegB

.verNum:
    cmp al, '0'
    jl .msgNegB
    mov al, 10
    call putchar
    mov edx, msgEsNum
    call puts
    jmp .incC

.msgNegB:
    mov al, 10
    call putchar
    mov edx, msgNegB
    call puts        



.incC:
    ; ---------- Inciso C 
    mov al, 10
    call putchar
    mov edx, msgIncisoC
    call puts
    mov cx, 5 ; Aqui pongo el valor 

    cmp cx, 10
    jle .paso2C
    jmp .msgNegC
.paso2C:
    cmp cx, 0
    jge .siguiente
    jmp .msgNegC

.siguiente:
    mov dx, cx


.cicloI:
    
    .cicloJ:

        mov al, '*'
        call putchar

    loop .cicloJ

    mov al, 10
    call putchar
    mov cx, dx
    dec dx

loop .cicloI


    ; Ejercicio resuelto en casa
.msgNegC:
    ; ---------- Inciso D 
    mov al, 10
    call putchar 
    mov cx, 10
    mov ebx, 0
    mov edx, msgIncisoD
    call puts

.capturar:
    call getche
    mov byte [arreglo + ebx], al
    inc ebx
    loop .capturar

    mov cx, 10
    mov ebx, 0
    mov al, 10
    call putchar
    mov edx, msgDatosCapt
    call puts

.desplegar:
    mov al, [arreglo + ebx]
    inc ebx
    call putchar
    mov al, 10
    call putchar
    loop .desplegar

    ; ----- Fin del programa
    mov eax, 1
    mov ebx, 0
    int 0x80
