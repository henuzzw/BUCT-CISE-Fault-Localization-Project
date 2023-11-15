#include<stdio.h>

int main()
{

    float n;
    scanf("%f", &n);
    if(n > 0)
    {
        printf("%.4f is positive", n);
    }
    else
    {
        if (n == 0)
        {
            printf("input is zero");
        }
        else
        {
            printf("%.4f is negative", n);
        }
    }



    return 0;
}
