#include<stdio.h>
using namespace std;
#include<iostream>
int main()
{
    long long int k, n, m, d, e, f, r, i, x, y, sum;
    cin >> k;
    for(i = 0; i < k; i++)
    {
        cin >> m >> n;
        if(m < n)
        {
            d = m;
            m = n;
            n = d;
        }
        e = m;
        f = n;
        r = e % f;
        while(r)
        {
            e = f;
            f = r;
            r = e % f;
        }
        x = m / f;
        y = n / f;
        sum = x + y + 1;
        cout << sum << endl;

    }
}
