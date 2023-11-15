#include <cstdio>
#include <iostream>
#include <bits/stdc++.h>
using namespace std;
int ea(int m, int n)
{
    int a = n % m;
    if(a == 0) return m;
    else
        return ea(a, m);
}
int main()
{
    int t;
    long long int m, n;
    cin >> t;
    for(int i = 0; i < t; i++)
    {
        cin >> m >> n;
        cout << ea(m, n) << endl;
    }
}
