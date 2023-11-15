#include <bits/stdc++.h>
using namespace std;
typedef long long ll;
ll n;
int main()
{
    while (scanf("%lld", &n) != EOF)
    {
        ll t = sqrt(n);
        t++;
        if (t & 1)
        {
            int tt = n - t * t;
            int x = t / 2, y = t / 2;
            if (tt == 0)
            {
                printf("(%d,%d)\n", -y, x);
            }
            else if (tt > 0 && tt <= t + 1)
            {
                printf("(%d,%d)\n", -(y - (tt - 1)), x + 1);
            }
            else
            {
                printf("(%d,%d)\n", y + 1, x - (tt - t - 2));
            }
        }
        else
        {
            int tt = n - t * t;
            int x = -(t / 2) + 1, y = -(t / 2);
            if (tt == 0)
            {
                printf("(%d,%d)\n", -y, x);
            }
            else if (tt > 0 && tt <= t + 1)
            {
                printf("(%d,%d)\n", -(y + (tt - 1)), x - 1);
            }
            else
            {
                printf("(%d,%d)\n", y, x + (tt - t - 2));
            }
        }
    }

    return 0;
}
