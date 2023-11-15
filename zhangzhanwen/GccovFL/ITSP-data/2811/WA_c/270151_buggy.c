#include<stdio.h>

int main()
{
    float a1,b1,a2,b2;
    scanf("%f%f%f%f",&a1,&b1,&a2,&b2);
    float X=(b2-b1)/((b1*a2)-(a1*b2));
    float Y=(a2-a1)/((b1*a2)-(a1*b2));
    if (a1*b2==b1*a2)      
    {
        printf("INF");  
    }
    else
    {
        printf("(%.3f,%.3f)",X,Y);  
    }

    return 0;
}
