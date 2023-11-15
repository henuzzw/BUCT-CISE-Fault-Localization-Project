#include<stdio.h>
#include<math.h>
#include<string.h>
#include<algorithm>
#include<queue>
#include <iostream>

using namespace std;
int main()
{
    int n;
    int f, g, h, x, z;
    f = 5;
    g = 8;
    h = 6;
    x = f + g;
    z = g + h;

    while(~scanf("%d", &n))
    {
        int sum = 0, i = 2;
        while(true)
        {
            if(i <= n)
                i = i * 2;
            else
                i = ((i - n) * 2) - 1;
            sum++;
            if(i == 2)
                break;
        }
        cout << sum << endl;
    }
}
