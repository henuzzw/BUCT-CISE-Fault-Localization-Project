#include<stdio.h>
int main()
{
    int n;
    int a = 0, b = 0, sum = 0;
    while(scanf("%d", &n) != EOF)
    {
        sum = 0;
        if(n == 1)
        {
            printf("%d\n", 1);
        }
        else

        {
            while(n > 1)
            {
                a = n / 2;
                if(a == 1)
                    sum = sum + a;
                b = n % 2;
                n = a;
                sum = sum + b + a;
            }
            printf("%d\n", sum);
        }
    }
}
