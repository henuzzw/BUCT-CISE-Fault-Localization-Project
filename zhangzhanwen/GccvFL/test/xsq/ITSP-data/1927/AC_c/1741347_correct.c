#include <stdio.h>
#include<iostream>
using namespace std;

int gcd2(long a, long b)
{
    long n = max(a, b);
    long m = min(a, b);
    if (n % m == 0)
    {
        return m;
    }
    return gcd2(n % m, m);
}

int gcd1(long m, long n)
{
    if (n > m)
    {
        long t;
        t = m;
        m = n;
        n = t;
    }
    long a, b;
    while (n != 0)
    {
        a = m / n;

        m = a, n = b;
    }
    cout << m << endl;


    return 1;
}
int main()
{
    int T;
    cin >> T;
    for (int i = 0; i < T; i++)
    {
        long m, n;
        cin >> m >> n;
        long ans = gcd2(m, n);
        cout << ans << endl;
    }
}
