#include<stdio.h>

int main()                 
{
    float a;
    float b;
    scanf("%f%f", &a, &b); 
    float area;
    area = (a*b)/2;    
    if (area >= 0)     
    {
        printf("The area of (%6.4f, %6.4f), (%6.4f,0) and (0,%6.4f) is %6.4f.", a, b, a, b, area);
    }
    else
    {
        printf("The area of (%6.4f, %6.4f), (%6.4f,0) and (0,%6.4f) is %6.4f.", a, b, a, b, area-(area*2));
    }             
    return 0;
}
