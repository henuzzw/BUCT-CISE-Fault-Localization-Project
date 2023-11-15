#include<stdio.h>

int main()
{
    int N, width, height;
    scanf("%d %d %d", &N, &width, &height);
    int i, j;
    for(i = 1; i <= height; i++)
    {
        for(j = 1; j <= width; j++)
        {
            if(j == width || j == 1 || i == 1 || i == height)
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


