#include<iostream>
using namespace std;
int main()
{
    int T;
    scanf("%d", &T);
    for(int i = 0; i < T; ++i)
    {
        int a, b, c, d, e;
        scanf("%d%d", &a, &b);
        c = a, d = b;
        while(a != b)
        {
            if(a > b)
                a -= b;
            else
                b -= a;
        }
        e = (c / a) + d;
        printf("%d\n", e);
    }
}
