#include <stdint.h>
#include <stdio.h>

extern void pBin8b(uint8_t dato1) ;
//extern void pBin16b();
//extern void pBin32b();
//extern void pBin64b();

// nasm –f elf <archivoASM.asm>
// gcc –m32 –c <archivoC.c>
// gcc –m32 <archivoASM.o> <archivoC.o> -o <nombre_ejecutable>

int main(){

    // Funcion 1
    uint8_t dato1 = 4;
    printf("El valor %d de 8 bits en binario es: ", dato1);
    pBin8b(dato1);
    printf("\n\n");

    return 0;
}