#include<bits/stdc++.h>
using namespace std;

int maxyue(int m, int n)
{
    int i = n;
    while(m % n != 0)
    {
        i = m % n;
        m = n;
        n = i;
    }
    return i;
}
int main()
{
    int t;
    cin >> t;
    while(t--)
    {
        int m, n;
        cin >> m >> n;
        int ans = maxyue(m, n);
        cout << ans << endl;
    }

}
