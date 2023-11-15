#include <bits/stdc++.h>
using namespace std;
typedef long long ll;
int main()
{
    ll n;
    while(cin >> n)
    {
        ll i;
        ll m = floor(sqrt(n) + 0.5);
        if(m * m == n)
        {
            i = sqrt(n);
        }
        else
        {
            i = (ll)sqrt(n) + 1;
            if(i % 2 == 0)
                i++;
        }
        ll t = i / 2;
        ll t1 = -i / 2;
        t1--;
        ll shang = i * i - t, zuoshang = i * i - t * 2, zuo = i * i - t * 3, zuoxia = i * i - t * 4, xia = i * i - t * 5, youxia = i * i - t * 6, you = i * i - t * 7, youshang = i * i;
        if(n == youshang)
        {
            printf("(%d,%d)\n", t1, t);
        }
        else if(n == zuoshang)
        {
            printf("(%d,%d)\n", t1, t1);
        }
        else if(n == zuoxia)
        {
            printf("(%d,%d)\n", t, t1);
        }
        else if(n == youxia)
        {
            printf("(%d,%d)\n", t, t);
        }
        else if(n > zuoshang && n < youshang)
        {
            printf("(%d,%d)\n", t1, n - shang);
        }
        else if(n < zuoxia && n > youxia)
        {
            printf("(%d,%d)\n", t, xia - n);
        }
        else if(n < zuoshang && n > zuoxia)
        {
            printf("(%d,%d)\n", zuo - n, t1);
        }
        else if(n < youxia)
        {
            printf("(%d,%d)\n", n - you, t);
        }

    }
}
