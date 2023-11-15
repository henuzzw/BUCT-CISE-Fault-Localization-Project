
#include<stdio.h>

int main()
{
    int n, count = 0, a, b, c;
    scanf("%d", &n);
    for(a = 1; a <= n; a++)
    {
        for(b = a; b <= n; b++)
        {
            for(c = b; c <= n; c++)
            {
                if((a + b) > c && (a + c) > b && (b + c) > a)
                {
                    count++;
                }
            }
        }
    }
    printf("Number of possible triangles is %d", count);
    return 0;
}
