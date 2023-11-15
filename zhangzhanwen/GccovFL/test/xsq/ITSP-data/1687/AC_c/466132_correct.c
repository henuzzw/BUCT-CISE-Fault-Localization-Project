#include<iostream>
#include<cstdio>
#include<cstring>
using namespace std;
int gcd(int a, int b)
{
    return b ? gcd(b, a % b) : a;
}
int main()
{
    int k;
    scanf("%d", &k);
    while(k--)
    {
        int m, n, ans = 0;
        scanf("%d%d", &m, &n);
        int q = gcd(m, n);
        ans = ans + m / q + n / q;
        printf("%d\n", ans);
    }
    return 0;
}

