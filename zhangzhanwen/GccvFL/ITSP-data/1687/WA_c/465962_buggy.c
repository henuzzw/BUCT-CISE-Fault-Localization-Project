#include<bits/stdc++.h>
using namespace std;
int gcd(int a, int b)
{
    return b ? gcd(b, a % b) : a;
}
int main()
{
    int m, n, k;
    scanf("%d", &k);
    while(k--)
    {
        scanf("%d%d", &m, &n);
        int p = gcd(m, n);
        int q =  (m - n) / p;
        printf("%d\n", q);
    }
    return 0;
}
