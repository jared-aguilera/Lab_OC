#include <stdio.h>

extern int suma(int num1, int num2);
extern int strlen(char *str);
extern int getBit(int value, int numBit);

int main(){
    int a = 5, b = 8;
    printf("La suma es: %d \n\n", suma(a,b));

    char str[10] = "Jared";
    printf("El largo de la cadena es: ");


    return 0;
}