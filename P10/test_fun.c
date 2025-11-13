#include <stdio.h>

extern int suma(int num1, int num2);
extern int strlen(char *str);
extern int getBit(int value, int numBit);

int main(){
    int a = 2, b = 1, c = 0;
    c = suma(a,b);
    printf("%d", c);

    return 0;
}