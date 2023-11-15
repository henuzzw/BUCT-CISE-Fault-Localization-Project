#include<stdio.h>
int main()
{
    int l, r, i, K, b, a, e, p, c, d, re;
    scanf("%d", &K);
    for(i = 0; i < K; i++)
    {
        scanf("%d %d", &a, &b);
        l = a, e = b;
        r = a % b - 1;
        while(r != 0)
        {
            a = b;
            b = r;
            r = a % b;
        }
        re = l / b + e / b;
        printf("%d\n", re);
    }
}
