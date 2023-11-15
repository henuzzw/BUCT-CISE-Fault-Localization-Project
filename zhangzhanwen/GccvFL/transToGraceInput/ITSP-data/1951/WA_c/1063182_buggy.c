#include<bits/stdc++.h>
using namespace std;
int main()
{
    int a;
    while(scanf("%d", &a) != EOF)
    {
        if(a == 0)
            return 0;
        int s = 0;
        while(a >= 3)
        {
            int c;
            c = a / 3;
            a = a - c * 2;
            s = s + c + 1;
        }
        if(a == 2)
        {
            s = s + 1;
        }
        printf("%d\n", s);
    }
}
