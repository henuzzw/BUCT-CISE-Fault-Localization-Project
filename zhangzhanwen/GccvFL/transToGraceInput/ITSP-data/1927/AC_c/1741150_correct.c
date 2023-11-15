#include<bits/stdc++.h>
using namespace std;

int main()
{
    int t;
    cin >> t;
    while(t--)
    {
        int m, n, temp = 0;
        cin >> m >> n;
        while(temp = m % n)
        {
            m = n;
            n = temp;
        }
        cout << n << endl;
    }
}
