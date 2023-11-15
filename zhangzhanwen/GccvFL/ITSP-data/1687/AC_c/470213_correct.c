#include<stdio.h>
int main()
{
    int k, m, n, r, i, x, y;
    scanf("%d", &k);
    for(i = 0; i < k; i++)
    {
        scanf("%d%d", &m, &n);
        x = m;
        y = n;
        while(n != 0)
        {
            r = m % n;
            m = n;
            n = r;
        }
        printf("%d\n", x / m + y / m);
    }
    return 0;
}
