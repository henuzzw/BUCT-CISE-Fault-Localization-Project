
#include<stdio.h>

int main()
{
    int a, b, c;
    scanf("%d %d %d", &a, &b, &c);
    if(a >= b)
    {
        int x;
        x = a;
        a = b;
        b = x;
    }
    if(c <= b)
    {
        int y;
        y = b;
        b = c;
        c = y;
    }
    if(a + b <= c)
    {
        printf("Invalid Triangle");
    }
    else
    {
        if(a * a + b * b == c * c)
        {
            printf("Right Triangle");
        }
        else if(a * a + b * b > c * c)
        {
            printf("Acute Triangle");
        }
        else
        {
            printf("Obtuse Triangle");
        }
    }


    return 0;
}
