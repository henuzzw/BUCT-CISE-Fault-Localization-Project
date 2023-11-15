#include<stdio.h>
int main()
{
    int a;
    while(scanf("%d", &a) != EOF)
    {
        int m, n, sum;
        sum = 0;
        m = a;
        while(m > 0)
        {
            n = m % 10;
            sum = sum + n * n * n * n * n * n * n;
            m = m / 10;
        }
        if(a == sum)
            printf("Y\n");
        else
            printf("N\n");

    }
    return 0;
}
