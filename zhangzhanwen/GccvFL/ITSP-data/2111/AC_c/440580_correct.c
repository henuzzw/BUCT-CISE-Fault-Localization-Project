#include<stdio.h>
int main()
{
    int n, i = 0, sum = 0, t;
    while(scanf("%d", &n) != EOF)
    {
        for(i = 0; n >= 1; i++)
        {
            t = n % 2;
            if(t == 1)
            {
                sum = sum + 1;
            }
            n = (n - t) / 2;
        }
        printf("%d\n", sum);
        sum = 0;
    }
}
