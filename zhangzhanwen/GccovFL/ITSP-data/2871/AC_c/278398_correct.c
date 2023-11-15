#include<stdio.h>

int main()
{
    int n, w, h, x, y;
    scanf("%d %d %d", &n, &w, &h);
    for(x = h; x >= 1; x--)
    {
        for(y = w; y >= 1; y--)
        {
            if(x == 1 || y == 1 || x == h || y == w)
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
