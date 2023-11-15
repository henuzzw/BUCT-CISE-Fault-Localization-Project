#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <iostream>
using namespace std;
int main()
{
    int n = 0;
    while(scanf("%d", &n) != EOF)
    {
        int count = 0;
        int ans = 1;
        for(int i = 1; i <= n; i++)
        {
            ans *= i;
            while(ans % 10 == 0)
            {
                count++;
                ans /= 10;
            }
            if(ans / 10000)
            {
                int ret = ans / 10000;
                ans -= ret * 10000;
            }
        }
        printf("%d\n", count);
    }
}
