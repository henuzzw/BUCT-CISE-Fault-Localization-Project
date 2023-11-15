#include<stdio.h>
#include<stdlib.h>
int main()
{
    long long int k, n, m, a, b, r, x, y;
    scanf("%lld", &k);
    while(k != 0)
    {
        scanf("%lld%lld", &m, &n);
        x = m;
        y = n;
        while(y != 0)
        {
            r = x % y;
            x = y;
            y = r;
        }
        a = m / x;
        b = n / x;
        printf("%lld\n", a + b);
        k--;
    }

}
