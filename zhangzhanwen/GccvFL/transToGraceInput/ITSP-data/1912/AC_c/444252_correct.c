#include<algorithm>
#include<iostream>
#include<cstring>
#include<cstdio>
#include<string>
#include<cmath>
#include<map>
#include<queue>
#include<set>
using namespace std;
int main()
{
    char n;
    while(scanf("%s", &n) != EOF)
    {
        if(n == '\n')
            continue;
        int i, j, m;
        char f = 'A', g;
        m = n - f + 1;
        g = n;
        for(i = 1; i <= m; i++)
        {
            n = g;
            for(j = 1; j <= i; j++)
            {

                printf("%c", n);
                n = n - 1;
            }
            printf("\n");
        }
        printf("\n");

    }
    return 0;
}
