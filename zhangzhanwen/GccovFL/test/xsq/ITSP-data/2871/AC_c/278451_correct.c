#include<stdio.h>

int main()
{
    int N, w, h, i, j;
    scanf("%d %d %d", &N, &w, &h);
    for(i = 1; i <= h; i++)
    {
        for(j = 1; j <= w; j++)
        {
            if(i == 1)
            {
                printf("%d", N);
            }
            else if(i == h)
            {
                printf("%d", N);
            }
            else if(j == 1)
            {
                printf("%d", N);
            }
            else if(j == w)
            {
                printf("%d", N);
            }
            else
            {
                printf(" ");
            }
        }
        printf("\n");
    }

    return 0;
}
