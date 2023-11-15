#include<stdio.h>

int main()
{
    int n, w, h, x, y;
    scanf("%d", &n);
    scanf("%d", &w);
    scanf("%d", &h);

    for (x = 1; x <= h; x++)
    {
        for(y = 1; y <= w; y++)
        {
            if(y == 1 || y == w || x == 1 || x == h)
            {
                printf("%d", n);
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
