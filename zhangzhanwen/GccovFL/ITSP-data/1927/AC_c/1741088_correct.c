#include<bits/stdc++.h>
using namespace std;
int measure(int x, int y)
{
    int z = y;
    while(x % y != 0)
    {
        z = x % y;
        x = y;
        y = z;
    }
    return z;
}

int main()
{
    int n;
    cin >> n;
    for(int i = 0; i < n; i++)
    {
        int x, y;
        cin >> x >> y;
        cout << measure(x, y) << endl;
    }
}
