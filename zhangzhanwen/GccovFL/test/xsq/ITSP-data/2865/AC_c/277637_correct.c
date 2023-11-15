
#include<stdio.h>

int main()
{
    int i, N, j;
    scanf("%d", &N);
    for (j = 1; j <= N; j = j + 1)
    {
        for(i = N; i >= 1; i = i - 1)
            if(j == i)
            {
                printf("*");
            }
            else
            {
                printf("%d", i);
            }
        printf("\n");
    }
    return 0;
}
