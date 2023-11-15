#include<stdio.h>

int main()
{
    float a;
    scanf("%f\n", &a);      
    if(a<0)     
    {
        printf("%.4f is negative.\n", a);   
    }
    else        
    {
        if(a>0)     
        {
            printf("%.4f is positive.\n", a);    
        }
        else
        {
            printf("input is zero.\n");   
        }
    }
    return 0;
}
