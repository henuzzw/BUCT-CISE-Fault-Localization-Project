#include <iostream>
#include<bits/stdc++.h>
#include<stdio.h>
#include<stdlib.h>
#include<cstdio>
#include<math.h>
#include<stack>
#include<vector>
#include<queue>
#include<limits.h>
#include<cstring>
#include<algorithm>
using namespace std;
int F(int a, int b)
{
    int c = 0, d = 1;
    while(d)
    {
        c = a / b;
        d = a % b;
        a = b;
        b = d;
    }
    return a;
}
int main()
{
    int n, m, t;
    cin >> t;
    while(t--)
    {
        int num;
        cin >> m >> n;
        if(m > n)
            num = F(m, n) + 1;
        else
        {
            num = F(n, m) - 1;
        }
        cout << num << endl;
    }
    return 0;
}
