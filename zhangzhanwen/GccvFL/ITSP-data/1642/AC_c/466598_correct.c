#include<stdio.h>
int main()
{
    int a, b, c, ye = 0, fe = 0, i;
    scanf("%d %d %d", &a, &b, &c);
    for(i = 1800; i < a; i++)
    {
        if(i % 400 == 0 || (i % 4 == 0 && i % 100 != 0))
            ye = ye + 366;
        else
            ye = ye + 365;
    }
    if(a % 400 == 0 || (a % 4 == 0 && a % 100 != 0))
    {
        for(i = b - 1; i > 0; i--)
        {
            if(i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12)
                fe = fe + 31;
            else if(i == 4 || i == 6 || i == 9 || i == 11)
                fe = fe + 30;
            else if(i == 2)
                fe = fe + 29;
        }
    }
    else
    {
        for(i = b - 1; i > 0; i--)
        {
            if(i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12)
                fe = fe + 31;
            else if(i == 4 || i == 6 || i == 9 || i == 11)
                fe = fe + 30;
            else if(i == 2)
                fe = fe + 28;
        }
    }
    int x, y;
    x = fe + ye + c;
    y = x % 7;
    if(y == 6)
        printf("monday");
    else if(y == 0)
        printf("tuesday");
    else if(y == 1)
        printf("wednesday");
    else if(y == 2)
        printf("thursday");
    else if(y == 3)
        printf("friday");
    else if(y == 4)
        printf("saturday");
    else if(y == 5)
        printf("sunday");
}
