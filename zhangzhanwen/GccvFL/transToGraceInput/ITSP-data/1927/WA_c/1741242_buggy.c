#include <iostream>
#include <algorithm>
#include <map>
#include <vector>
#include <set>
using namespace std;
int gcd(int a, int b)
{
    if(b) return gcd(b, a % b);
    else return a;
}
signed main()
{
    int t;
    cin >> t;
    while(t--)
    {
        int a, b;
        int ans = 0;
        cin >> a >> b;
        ans = gcd(a, b);
        ans--;
        cout << ans << endl;
    }
}
