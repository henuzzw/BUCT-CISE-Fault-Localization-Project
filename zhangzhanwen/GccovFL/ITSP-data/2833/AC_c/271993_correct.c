
#include<stdio.h>

int main()
{
    int n, a, b, c, x = 0;
    scanf("%d", &n);
    for(a = 1; a <= n; a++)
    {
        for(b = a; b <= n; b++)
        {
            for(c = b; c <= n; c++)
            {
                if((a + b) > c && (a + c) > b && (b + c) > a)
                {
                    x++;
                }
            }
        }
    }
    printf("Number of possible triangles is %d", x);
    return 0;
}
