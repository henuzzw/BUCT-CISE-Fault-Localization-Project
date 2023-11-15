#include <iostream>
#include<cstring>
#include <cstdio>
using namespace std;
int main()
{
    int i, n, a;

    while(cin >> n)
    {
        int sum = 0;
        for(i = 5; i <= n; i++)
        {
            a = i;
            while(1)
            {
                if(a % 5 == 0)
                {
                    a /= 5;
                    sum++;
                }
                else
                    break;
            }
        }
        cout << sum << endl;
    }
    return 0;
}
