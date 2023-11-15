#include<stdio.h>
int main()
{
    int n, y, r, a, b, c, t = -1, i, j, d = 0;
    n = 1800, y = 1, r = 1;
    while(scanf("%d%d%d", &a, &b, &c) != EOF)
    {
        t = -1;
        d = 0;

        for(i = n; i < a; i++)
        {
            if(i % 4 == 0 && i % 100 != 0)
                t += 366;
            else if(i % 400 == 0)
                t += 366;
            else
                t += 365;
        }
        for(j = y; j < b; j++)
        {
            if(j == 1 || j == 3 || j == 5 || j == 7 || j == 8 || j == 10 || j == 12)
                t += 31;
            else if(j == 2)
            {
                if(i % 4 == 0 && i % 100 != 0)
                    t += 29;
                else if(i % 400 == 0)
                    t += 29;
                else
                    t += 28;
            }
            else
                t += 30;
        }
        t += c;
        d = t % 7 + 2;
        d = d % 7;
        if(d == 1)
            printf("monday\n");
        if(d == 2)
            printf("tuesday\n");
        if(d == 3)
            printf("wednesday\n");
        if(d == 4)
            printf("thursday\n");
        if(d == 5)
            printf("friday\n");
        if(d == 6)
            printf("saturday\n");
        if(d == 0)
            printf("sunday\n");
    }
}
