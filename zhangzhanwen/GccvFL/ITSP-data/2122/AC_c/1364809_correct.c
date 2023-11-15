#include<iostream>
#include<bits/stdc++.h>
using namespace std;
int main()
{
    long long n;
    while(~scanf("%d", &n))
    {
        long long r = (int)sqrt(n);
        if(r % 2 == 0)
            r--;
        long long x0 = (-1) * (r - 1) / 2;
        long long y0 = -x0;
        long long temp = r + 1;
        long long x = x0;
        long long y = y0;
        n -= r * r;
        if(n == 0)
        {
            printf("(%lld,%lld)\n", x, y);
            continue;
        }
        else
        {
            y++;
            n--;
        }
        if(n <= temp - 1)
        {
            x += n;
        }
        else if(n <= 2 * temp - 1)
        {
            x += (temp - 1);
            y -= (n - temp + 1);
        }
        else if(n <= 3 * temp - 1)
        {
            x += (temp - 1);
            y -= temp;
            x -= (n - 2 * temp + 1);
        }
        else
        {
            x = x0 - 1;
            y -= temp;
            y += (n - 3 * temp + 1);
        }
        printf("(%d,%d)\n", x, y);

    }
}
