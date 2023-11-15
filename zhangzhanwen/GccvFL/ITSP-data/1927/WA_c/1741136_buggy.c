#include <bits/stdc++.h>
using namespace std;

void gcd(int a, int b)
{
    int c;
    c = a % b;
    while (c)
    {
        a = b;
        b = c;
        c = a % b;
    }
    b++;
    cout << b << endl;
}

int main()
{
    int	n;
    cin >> n;
    for (int i = 0; i < n; i++)
    {
        int a, b;
        cin >> a >> b;
        gcd(a, b);
    }
}
