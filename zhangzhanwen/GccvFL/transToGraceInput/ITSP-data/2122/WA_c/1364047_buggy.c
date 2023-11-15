#include<bits/stdc++.h>
using namespace std;
void print(int x, int y)
{
    printf("(%d,%d)\n", x, y);
}
int main()
{
    int n;
    while(scanf("%d", &n) != EOF)
    {
        int i = sqrt(n);
        int now = n - i * i;
        if(i % 2 == 0)
        {
            int x = i / 2, y = -1 * i / 2 + 1;
            x++;
            if(i * i == n)
            {
                print(x, y);
            }
            else if(now > i + 1)
            {
                print(-x, y + (now - (i + 1) - 1));
            }
            else
            {
                print(x - now + 1, y - 1);
            }
        }
        else
        {
            int x = -1 * i / 2, y = i / 2;
            if(i * i == n)
            {
                print(x, y);
            }
            else if(now > i + 1)
            {
                print(-(x - 1), y - (now - (i + 1)) + 1);
            }
            else
            {
                print(x + now - 1, y + 1);
            }
        }
    }
}
