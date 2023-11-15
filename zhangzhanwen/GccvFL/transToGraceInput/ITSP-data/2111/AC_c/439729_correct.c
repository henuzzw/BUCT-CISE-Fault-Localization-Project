#include<stdio.h>
int main()
{
    int n, i, j, k = 0;
    while(scanf("%d", &n) != EOF)
    {
        i = 0;
        k = 0;
        for(n; n >= 1;)
        {
            i = 0;
            i = n % 2;
            if(i == 1)
                k++;
            n = n / 2;
        }
        printf("%d\n", k);
    }
}
