#include <bits/stdc++.h>
#define ll long long
using namespace std;
int main()
{
    int n;
    while(cin >> n)
    {
        int cnt = 0;
        do
        {
            n /= 5;
            cnt += n+1;
        }
        while(n);
        cout << cnt << endl;
    }
}
