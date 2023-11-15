#include<bits/stdc++.h>
#include<stack>
#include<iostream>
#include<cstdio>
#include<cmath>
#include<algorithm>
#include<cstdlib>
#include<cstring>
#include<vector>
#include<queue>
#include<cstdarg>
using namespace std;
int main()
{
    int n;
    cin >> n;
    while(n--)
    {
        int x, y;
        cin >> x >> y;
        int max, min;
        if(x == y) cout << x << endl;
        else
        {
            if(x > y)
            {
                max = x;
                min = y;
            }
            else
            {
                max = y;
                min = x;
            }
            int yu = max % min;
            int a = min;
            int b;
            if(yu == 0) 
				b = min;
            while(yu != 0)
            {
                b = yu + 1;
                yu = a % yu;
                a = b;
            }

            cout << b << endl;

        }
    }
}
