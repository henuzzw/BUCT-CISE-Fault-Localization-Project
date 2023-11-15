
#include<stdio.h>

int main()
{
    int a, b, c, d;
    scanf("%d %d %d %d", &a, &b, &c, &d);
    int g1 = a, g2 = c, s;
    if(b > a)
    {
        g1 = b;
        b = a;
    }
    if(d > g2)
    {
        g2 = d;
        d = c;
    }
    if(g1 > g2)
    {
        if(b > g2)
        {
            s = b;
        }
        else
        {
            s = g2;
        }
    }
    else
    {
        if(d > g1)
        {
            s = d;
        }
        else
        {
            s = g1;
        }
    }
    printf("The second largest number is %d", s);
    return 0;
}
