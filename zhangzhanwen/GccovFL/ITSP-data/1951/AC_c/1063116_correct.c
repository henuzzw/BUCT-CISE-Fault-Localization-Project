#include<bits/stdc++.h>
#define ll long long
using namespace std;
int main()
{
    int n;
    while(cin >> n)
    {
        if(n == 0) break;
        int num = 0;
        while(n >= 3)
        {
            num += n / 3;
            n = n / 3 + n % 3;
        }
        if(n == 2) num++;
        cout << num << endl;
    }
    return 0;
}
