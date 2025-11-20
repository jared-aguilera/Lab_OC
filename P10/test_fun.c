#include <stdio.h>

extern int suma(int num1, int num2);
extern int strlen(char *str);
extern int getBit(int value, int numBit);

// nasm –f elf <archivoASM.asm>
// gcc –m32 –c <archivoC.c>
// gcc –m32 <archivoASM.o> <archivoC.o> -o <nombre_ejecutable>

int main(){
    // Funcion 1
    int a = 10, b = 12;
    printf("La suma es: %d \n\n", suma(a,b));

    // Funcion 2
    char str[] = "Jared";
    printf("El largo de la cadena es: %d \n\n", strlen(str));

    // Funcion 3
    int value = 22, numBit = 3;
    printf("El estado del bit %d del numero %d es: %d \n", numBit, value, getBit(value, numBit));


    return 0;
}