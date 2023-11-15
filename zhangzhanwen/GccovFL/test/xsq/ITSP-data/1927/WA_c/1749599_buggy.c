#include <bits/stdc++.h>
using namespace std;

int gcd(int a, int b)
{
    if(b)
    {
        return gcd(b, a % b);
    }
    else
        return a;
}

int main()
{
    int T;
    cin >> T;
    for(int i = 0; i < T; i++)
    {
        int x, y;
        cin >> x >> y;
        int t = gcd(x, y) + x + y;
        cout << t << endl;
    }

}
