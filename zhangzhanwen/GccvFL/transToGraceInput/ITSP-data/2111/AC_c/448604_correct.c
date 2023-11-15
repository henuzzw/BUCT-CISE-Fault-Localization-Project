#include<stdio.h>
#include<stdlib.h>
int main()
{
    int s, a;
    while(scanf("%d", &a) != EOF)
    {
        s = 1;
        if(a > 0)
        {
            while(a != 1)
            {
                if(a % 2 == 1)
                    s = s + 1;
                a = a / 2;
            }
            printf("%d\n", s);
        }
        else
            printf("0\n");
    }
}
