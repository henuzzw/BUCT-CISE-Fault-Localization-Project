#include<bits/stdc++.h>
using namespace std;

int main()
{
    long long n;
    while(~scanf("%lld", &n))
    {
        long long x = ceil(sqrt((double)n));
        x /= 2;
        long long p1 = pow(1 + 2 * x, 2), p2 = p1 - x * 2, p3 = p2 - x * 2, p4 = p3 - x * 2, p5 = p4 - x * 2 + 1;
        p1++;
        if(n <= p1 && n >= p2)
        {
            cout << "(" << -x << "," << -x + (n - p2) << ")" << endl;
        }
        if(n < p2 && n >= p3)
        {
            cout << "(" << x - (n - p3) << "," << -x << ")" << endl;
        }
        if(n < p3 && n >= p4)
        {
            cout << "(" << x << "," << x - (n - p4) << ")" << endl;
        }
        if(n < p4 && n >= p5)
        {
            cout << "(" << -x + 1 + (n - p5) << "," << x << ")" << endl;
        }
    }

}
