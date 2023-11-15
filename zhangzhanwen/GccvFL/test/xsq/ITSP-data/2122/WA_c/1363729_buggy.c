#include <algorithm>
#include <iostream>
#include <cstring>
#include <vector>
#include <cstdio>
#include <cstdio>
#include <stack>
#include <queue>
#include <cmath>
#include <set>
using namespace std;

int main()
{
    long long n;
    while(cin >> n)
    {
        int i, j;
        long long a = sqrt(n);
        if(a * a == n && a % 2 != 0)
        {
            i = a / 2;
            j = -i;
        }
        else if(a * a == n && a % 2 == 0)
        {
            i = 1 - a / 2;
            j = a / 2;
        }
        else if(a % 2 == 0)
        {
            long long b = n - a * a;
            long long c = a + 1;
            if(b >= c)
            {
                j = -a / 2;
                i = -a / 2 + (b - c);
            }
            else
            {
                i = -a / 2;
                j = a / 2 - b + 1;
            }
        }
        else
        {
            long long b = n - a * a;
            long long c = a + 1;
            if(b >= c)
            {
                j = c / 2;
                i = c / 2 - (b - c);
            }
            else
            {
                i = c / 2;
                j = -a / 2 + b - 1;
            }
        }
        j++;
        printf("(%d,%d)\n", j, i);
    }

    return 0;
}
