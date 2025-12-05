#include <stdio.h>
#include <stdlib.h>

extern int suma2(int a, int b);
extern void incrementar(int *num);
extern int multi(int);
extern int doble(int);
extern void incrementar5(int *num);
extern int suma3(int a, int b);
extern int mezclar(int a, int b, int c);
extern int mezclar2(int a, int b, int c);
extern int cuadrado(int x);
extern void invertir_signo(int *num);
extern void swap(int *a, int *b);
extern int triple(int x);
extern int cuadrado_mas_cinco(int x);

// nasm –f elf <archivoASM.asm>
// gcc –m32 –c <archivoC.c>
// gcc –m32 <archivoASM.o> <archivoC.o> -o <nombre_ejecutable>

int main(){
    system("clear");

    /*
    // Sumar 2 valores y retornar el resultado
    int a = 12, b = 5;
    printf("La suma es: %d \n", suma2(a, b));
    */

    /*
    // Incrementar
    int num = 10;
    
    printf("EL numero %d incrementado es: ", num);
    incrementar(&num);
    printf("%d \n", num);
    */
    
    /*
    // Multiplicar por 3
    int num3 = 5;
    printf("El numero %d multiplicado por 3 es: %d \n", num3, multi(num3));
    */

    /*
    // Regresar el doble de un numero
    int num4 = 15;
    printf("El doble de %d es %d \n", num4, doble(num4));
    */

    /*
    // Incrementar 
    int num5 = 100;
    printf("El numero %d incrementado es:", num5);
    incrementar5(&num5);
    printf("%d \n", num5);
    */

    /*
    int num1 = 10;
    int num2 = 20;
    printf("La suma de %d + %d + 3 = %d \n", num1, num2, suma3(num1, num2));
    */

    /*
    int a = 10, b = 20, c = 30;
    // debe regresar:  (a * 2) + (b * 3) + c
    printf("La mezcla es: %d \n", mezclar(a, b, c));
    */

    /*
    int a = 10, b = 20, c = 30;
    // debe regresar:  (a * 2) + (b * 3) + c
    printf("La mezcla es: %d \n", mezclar2(a, b, c));
    */

    /*
    int num = 7;
    printf("El cuadrado de %d es %d \n", num, cuadrado(num));
    */

    /*
    int num = -1222;
    invertir_signo(&num);
    printf("El numero ya invertido es: %d \n", num);
    */

    /*
    int num1 = 10;
    int num2 = 20;
    printf("num1 = %d num2 = %d \n", num1, num2);
    swap(&num1, &num2);
    printf("Nuevos: \nnum1 = %d num2 = %d \n", num1, num2);
    */

    /*
    int num = 5;
    //printf("El tripe de %d es %d \n", num, triple(num));
    */
    
    int r = cuadrado_mas_cinco(4);  // r = 21
    printf("%d \n", r);
    
    return 0;
}