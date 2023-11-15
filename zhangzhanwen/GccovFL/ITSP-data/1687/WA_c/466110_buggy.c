#include<bits/stdc++.h>
using namespace std;
int find(int x, int y)
{
    int u;
    while(x % y)
    {
        u = x % y;
        x = y;
        y = u;
    }
    return y;
}
int main()
{
    int n, a, b, sum;
    cin >> n;
    for (int i = 1; i <= n; i++)
    {
        sum = 0;
        cin >> a >> b;
        sum = a / find(a, b) + b / find(a, b) - 1;
        cout << sum << endl;
    }
}
