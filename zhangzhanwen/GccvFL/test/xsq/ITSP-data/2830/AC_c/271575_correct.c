
#include<stdio.h>

int main()
{
    int a, b, c, d;
    scanf("%d%d%d%d", &a, &b, &c, &d);
    if (a >= b && a >= c && a >= d)
    {
        if (b >= c && b >= d)
        {
            printf("The second largest number is %d \n", b);
        }
        else if (c >= b && c >= d)
        {
            printf("The second largest number is %d \n", c);
        }
        else if (d >= b && d >= c)
        {
            printf("The second largest number is %d \n", d);
        }
    }
    else if (b >= a && b >= c && b >= d)
    {
        if (a >= c && a >= d)
        {
            printf("The second largest number is %d \n", a);
        }
        else if (c >= a && c >= d)
        {
            printf("The second largest number is %d \n", c);
        }
        else if (d >= c && d >= a)
        {
            printf("The second largest number is %d \n", d);
        }
    }
    else if (c >= a && c >= b && c >= d)
    {
        if (d >= a && d >= b)
        {
            printf("The second largest number is %d \n", d);
        }
        else if (a >= b && a >= d)
        {
            printf("The second largest number is %d \n", a);
        }
        else if (b >= a && b >= d)
        {
            printf("The second largest number is %d \n", b);
        }
    }
    else if (d >= a && d >= b && d >= c)
    {
        if (c >= a && c >= b)
        {
            printf("The second largest number is %d \n", c);
        }
        else if (a >= c && a >= b)
        {
            printf("The second largest number is %d \n", a);
        }
        else if (b >= a && b >= c)
        {
            printf("The second largest number is %d \n", b);
        }
    }
    return 0;
}
