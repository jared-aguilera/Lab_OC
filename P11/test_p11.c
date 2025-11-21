#include <stdint.h>
#include <stdio.h>

extern void pBin8b(uint8_t dato1) ;
extern void pBin16b(uint16_t dato2);
extern void pBin32b(uint32_t dato3);
extern void pBin64b(uint64_t dato4);

// nasm –f elf <archivoASM.asm>
// gcc –m32 –c <archivoC.c>
// gcc –m32 <archivoASM.o> <archivoC.o> -o <nombre_ejecutable>

int main(){

    // Funcion 1
    uint8_t dato1 = 0xAA;
    printf("El valor %u de 8 bits en binario es: ", dato1);
    pBin8b(dato1);
    printf("\n\n");

    // Funcion 2
    uint16_t dato2 = 0xAAAA;
    printf("El valor %u de 16 bits en binario es: ", dato2);
    pBin16b(dato2);
    printf("\n\n");

    // Funcion 3
    uint32_t dato3 = 0xAAAAAAAA;
    printf("El valor %u de 32 bits en binario es: ", dato3);
    pBin32b(dato3);
    printf("\n\n");

    // Funcion 4
    uint64_t dato4 = 0xAAAAAAAAAAAAAAAA;
    printf("El valor %llu de 64 bits en binario es: ", dato4);
    pBin64b(dato4);
    printf("\n\n");

    return 0;
}