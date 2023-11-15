#include<bits/stdc++.h>
using namespace std;
int main()
{
    int a;
    int sum;
    while (cin >> a)
    {
        sum = 0;
        sum++;
        for (int i = a; i > 1; i--)
        {
            int j = i;
            while (j % 5 == 0)
            {
                sum++;
                j = j / 5;
            }
        }
        cout << sum << endl;
    }
    return 0;
}
