
#include<stdio.h>

int main()
{
    int n;
    int count = 0;
    scanf("%d", &n);
    for(int c = 1; c <= n; c++)
    {
        for(int b = c; b >= 1; b--)
        {
            for(int a = b; a >= 1; a--)
            {
                if((a + b) > c)
                {
                    count = count + 1;
                }
            }
        }
    }
    printf("Number of possible triangles is %d", count);
    return 0;
}
