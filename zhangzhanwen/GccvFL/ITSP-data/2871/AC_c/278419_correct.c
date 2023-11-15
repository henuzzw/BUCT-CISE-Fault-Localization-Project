#include<stdio.h>

int main()
{
    int N, w, h;
    scanf("%d %d %d", &N, &w, &h);
    int i, j;
    if ((N == 1) && (w == 1) && (h == 1))
    {
        printf("%d", 1);
    }
    else
    {
        for (i = 1; i <= h; i++)
        {
            for (j = 1; j <= w; j++)
            {
                if (i == 1)
                {
                    printf("%d", N);
                }
                if ((i > 1) && (i < h))
                {
                    if ((j == 1) || (j == w))
                    {
                        printf("%d", N);
                    }
                    else
                    {
                        printf(" ");
                    }
                }

                if (i == h)
                {
                    printf("%d", N);
                }
            }
            printf("\n");
        }
    }
    return 0;
}
