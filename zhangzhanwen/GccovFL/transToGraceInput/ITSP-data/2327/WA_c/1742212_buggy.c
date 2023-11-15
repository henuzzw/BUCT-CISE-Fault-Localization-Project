#include<stdio.h>
#include<math.h>
int main()
{
    int n, a, b, c, d, e, f, g;
    while(~scanf("%d", &n))
    {
        a = n / 1000000;
        b = (n - a * 1000000) / 100000;
        c = (n - a * 1000000 - b * 100000) / 10000;
        d = (n - a * 1000000 - b * 100000 - c * 10000) / 1000;
        e = (n - a * 1000000 - b * 100000 - c * 10000 - d * 1000) / 100;
        f = (n - a * 1000000 - b * 100000 - c * 10000 - d * 1000 - e * 100) / 10;
        g = n - a * 1000000 - b * 100000 - c * 10000 - d * 1000 - e * 100 - f * 10 + 1;
        if(n == pow(a, 7) + pow(b, 7) + pow(c, 7) + pow(d, 7) + pow(e, 7) + pow(f, 7) + pow(g, 7))
        {
            printf("Y\n");
        }
        else printf("N\n");
    }
}
