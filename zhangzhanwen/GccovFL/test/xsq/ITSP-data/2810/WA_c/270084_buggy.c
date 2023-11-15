#include<stdio.h>
int main()
{
    float a,b;
    
    scanf("%f %f",&a,&b);
    float area=(1.0/2)*a*b; 
    if (area<0)
    {
        area=-area;
    }
    printf("The area of (%.4f,%.4f),(%.4f,0) and (0,%.4f) is %.4f.",a,b,a,b,area);
    return 0;
}
