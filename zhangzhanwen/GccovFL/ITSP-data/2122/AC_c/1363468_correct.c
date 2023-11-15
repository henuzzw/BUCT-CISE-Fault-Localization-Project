#include<bits/stdc++.h>
using namespace std;
int main()
{
    long long int n, dx, x, s;
    while(scanf("%lld", &n) != EOF)
    {
        x = sqrt((n) * 1.0);
        if(x % 2 == 0)
        {
            x--;
        }
        dx = n - x * x;
        s = (x - 1) >> 1;
        if(dx == 0) printf("(%lld,%lld)\n", -s, s);
        else switch (dx / (x + 1))
            {
            case 0:
                printf("(%lld,%lld)\n", -(s - dx + 1), (s + 1));
                break;
            case 1:
                printf("(%lld,%lld)\n", -(-s - 1), (s + 1 - (dx - x - 1)));
                break;
            case 2:
                printf("(%lld,%lld)\n", -(-s - 1 + (dx - (x + 1) * 2)), (-s - 1));
                break;
            case 3:
                printf("(%lld,%lld)\n", -(s + 1), (-s - 1 + (dx - (x + 1) * 3)));
                break;
            }
    }
}
