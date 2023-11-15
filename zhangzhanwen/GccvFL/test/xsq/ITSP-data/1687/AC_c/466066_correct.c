#include<iostream>
#include<cstdio>
#include<algorithm>
using namespace std;
long long findx(long long a, long long b)
{
    long long c, x, y;
    if(a >= b)
    {
        x = a;
        y = b;
    }
    else
    {
        x = b;
        y = a;
    }
    c = x % y;
    if(c == 0)
    {
        return y;
    }
    else
    {
        return findx(y, c);
    }
}
int main()
{
    int k;
    scanf("%d", &k);
    while(k--)
    {
        long long a, b;
        scanf("%lld %lld", &a, &b);
        long long p, x, y;
        p = findx(a, b);
        x = a / p;
        y = b / p;
        cout << x + y << endl;
    }
    return 0;
}
