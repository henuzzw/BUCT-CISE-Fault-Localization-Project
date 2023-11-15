#include<iostream>
#include<algorithm>
#include<string>
using namespace std;
int gcd(int a, int b)
{
    if(b == 0) return a;
    return gcd(b, a % b);
}
signed main()
{
    int T;
    cin >> T;
    while(T--)
    {
        int m, n;
        cin >> m >> n;
        if(m < n) swap(m, n);
        int G = gcd(m, n) + n;
        cout << G << endl;
    }
    return 0;
}
