
#include<stdio.h>

int main()
{
    int n, c = 0, i, j, k, d = 0;
    scanf("%d", &n);
    for(i = n; i >= 1; i--)
    {
        for(j = i; j >= 1; j--)
        {
            for(k = j; k >= 1; k--)
            {
                if(j + k > i)
                {
                    c++;
                }
                else
                {
                    d++;
                }
            }
        }
    }
    printf("Number of possible triangles is %d", c);
    return 0;
}
