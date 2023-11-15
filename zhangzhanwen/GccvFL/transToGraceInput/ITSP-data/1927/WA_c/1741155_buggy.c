#include <bits/stdc++.h>
using namespace std;

long long bcd(long long m, long long n)
{
    if(n == 0)return m;
    else
        return bcd(n, m % n);
}

int main()
{
    int T;
    cin >> T;
    while(T--)
    {
        long long m, n;
        cin >> m >> n;
        printf("%lld\n", bcd(m, n) + 1);
    }
    return 0;
}
