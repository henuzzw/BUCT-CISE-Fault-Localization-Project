#include<stdio.h>
int main()
{
    int n, i, a, b, c, d, sum;
    scanf("%d", &n);
    for(i = 0; i < n; i++)
    {
        scanf("%d%d", &a, &b);
        c = a + 1;
        d = b - 1;
        while(a != b)
        {
            if(a > b)
                a = a - b;
            if(a < b)
                b = b - a;
        }
        sum = c / a + d / a;
        printf("%d\n", sum);
    }
}

