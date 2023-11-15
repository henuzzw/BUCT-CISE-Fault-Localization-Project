#include<stdio.h>

int main()
{
    
    float a,b;

    scanf("%f%f",&a,&b);
    float height,base,aot;
    height=b;
    base=a;
    aot=1.0000/2*height*base;
    printf("The area of (%.4f,%.4f), (%.4f,0) and (0,%.4f) is %.4f.",a,b,a,b,aot);


    return 0;
}
