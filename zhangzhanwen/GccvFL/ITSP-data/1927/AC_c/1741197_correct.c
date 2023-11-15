#include <bits/stdc++.h>
#define int long long
#define INF 0x3f3f3f3f3f3f3f3f
#define lowbit(x) (x & -x)
#define mem(a, b) memset(a, b, sizeof(a))
using namespace std;

int gcd(int a, int b)
{
    if (a < b)
    {
        swap(a, b);
    }
    if (b == 0)
    {
        return a;
    }
    return gcd(b, a % b);
}

signed main()
{
    int T, ans;
    cin >> T;
    while (T--)
    {
        int a, b;
        cin >> a >> b;
        ans = gcd(a, b);
        cout << ans << endl;
    }

    return 0;
}
