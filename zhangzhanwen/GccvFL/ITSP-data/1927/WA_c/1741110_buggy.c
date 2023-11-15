#include <bits/stdc++.h>
#include<iostream>
#include<algorithm>
using namespace std;
int main()
{
    int n;
    cin >> n;
    while(n--)
    {
        int a, b;
        cin >> a >> b;
        int min, max;
        min = a > b ? b : a;
        max = a > b ? a : b;
        int temp = 0;
        while(max % min != 0)
        {
            temp = max % min;
            min = max;
            max = temp;
        }
        cout << min << endl;
    }
    return 0;
}
