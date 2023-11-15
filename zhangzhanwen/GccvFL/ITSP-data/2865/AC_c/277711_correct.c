
#include<stdio.h>

int main()
{

    int i, j, N;

    scanf("%d", &N);

    i = 1;

    j = N;

    while(i <= N)
    {
        while(j > 0 && j > i)
        {
            printf("%d", j);

            j = j - 1;
        }
        printf("*");

        j = i - 1;

        while(j > 0)
        {
            printf("%d", j);

            j = j - 1;
        }
        i = i + 1;

        j = N;

        printf("\n");


    }
    return 0;
}
