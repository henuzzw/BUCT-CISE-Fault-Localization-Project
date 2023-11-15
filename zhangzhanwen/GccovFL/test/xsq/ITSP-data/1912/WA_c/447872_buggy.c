#include<stdio.h>
int main()
{
    char m, sum;
    int i, n, j;
    while(scanf("%s", &m) != EOF)
    {
        n = m - 'A' + 1;
        for(i = 1; i <= n; i++)
        {
            for(j = 1; j <= i; j++)
            {
                sum = m - j;
                printf("%c", sum);
            }
            printf("\n");

        }
        printf("\n");
    }
    return 0;
}
