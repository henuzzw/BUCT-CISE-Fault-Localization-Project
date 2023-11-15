
#include<stdio.h>

int main()
{
    int a, n, N, i, j;
    scanf("%d", &N);
    for(j = 1; j <= N; j = j + 1)
    {
        for(i = 1; i <= N; i = i + 1)
        {
            if(i + j == N + 1)
            {
                printf("*");
            }
            else
            {
                a = N + 1 - i;
                printf("%d", a);
            }
        }
        printf("\n");
    }
    return 0;
}
