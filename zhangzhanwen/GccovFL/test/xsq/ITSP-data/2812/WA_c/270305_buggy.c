#include<stdio.h>

int main()
{
    float input;
    scanf("%f",&input);
    if(input==0) 
    {
        printf("input is zero");
    }
    else if(input > 0)
    {
        printf("%.4f is positive.",input);  
    }
    else if(input < 0)
    {
        printf("%.4f is negative",input);
    }
    return 0;
}
