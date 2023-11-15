#include <iostream>
#include <bits/stdc++.h>
#include <math.h>
#define MAX 2000
using namespace std;

int main()
{
    int t, m, n;
    cin >> t;
    while(t--)
    {
        cin >> m >> n;
        if(m < n)
        {
            int temp;
            temp = m;
            m = n;
            n = temp;
        }
        int z = n;
        while(m % n != 0)
        {
            z = m % n;
            m = n;
            n = z;
        }
        cout << z << endl;
    }
    return 0;
}
