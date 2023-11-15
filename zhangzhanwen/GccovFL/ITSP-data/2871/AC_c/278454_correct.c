#include<stdio.h>

int main()
{
    int n, w, h;
    int i, j, k;
    scanf("%d%d%d", &n, &w, &h);

    for(i = 1; i <= h; i++)
    {
        if((i == 1) || (i == h))
        {
            for(j = 1; j <= w; j++)
            {
                printf("%d", n);
            }
        }
        else
        {
            for(k = 1; k <= w; k++)
            {
                if((k == 1) || (k == w))
                {
                    printf("%d", n);
                }
                else
                {
                    printf(" ");
                }
            }
        }

        printf("\n");
    }



    return 0;
}
