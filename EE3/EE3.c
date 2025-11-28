#include <stdio.h>
#include <stdint.h>

extern uint32_t NotBit32b(uint32_t dato1, uint8_t numbit1);
extern uint32_t XchgBits(uint32_t dato2, uint8_t numbit21, uint8_t  numbit22);
extern int str_cnt_chr(char *str, char letra);
extern uint8_t  isPrime(uint32_t  dato3);
extern int shr_s(int dato4);

// nasm –f elf <archivoASM.asm>
// gcc –m32 –c <archivoC.c>
// gcc –m32 <archivoASM.o> <archivoC.o> -o <nombre_ejecutable>

int main(){

    // Funcion 1
    uint32_t dato1 = 0x00123456;
    uint8_t numbit1 = 1;
    printf("El numero %x con el bit %u invertido es: %x \n\n", dato1, numbit1, NotBit32b(dato1, numbit1));

    // Funcion 2
    uint32_t dato2 = 0x00123456;
    uint8_t numbit21 = 1;
    uint8_t numbit22 = 3;
    printf("El numero %x con los bits %d y %d intercambiados es: %x \n\n", dato2, numbit21, numbit22, XchgBits(dato2, numbit21, numbit22));

    // Funcion 3
    char str[] = "Holaa";
    char letra = 'a';
    printf("La letra %c en la palabra %s se encuentra un total de %d veces \n\n", letra, str, str_cnt_chr(str, letra));

    uint32_t dato3 = 9;
    printf("El numero %d es %d - ", dato3, isPrime(dato3));
    if(isPrime(dato3) == 1){
        printf("ES PRIMO\n\n");
    }else{
        printf("NO ES PRIMO\n\n");
    }

    // Funcion 4
    int a = -126;
    int b = shr_s(a);
    printf("El numero %d con corrimiento es: %d \n\n", a, b);

    return 0;
}