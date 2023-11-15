#include <bits/stdc++.h>
using namespace std;
#define ll long long

void F(int y, int m, int d)
{
    if(m == 1 || m == 2)
    {
        m += 12;
        y --;
    }
    int t = (d + 2 * m + 3 * (m + 1) / 5 + y + y / 4 - y / 100 + y / 400) % 7;
    switch(t)
    {
    case 0:
        printf("monday\n");
        break;
    case 1:
        printf("tuesday\n");
        break;
    case 2:
        printf("wednesday\n");
        break;
    case 3:
        printf("thursday\n");
        break;
    case 4:
        printf("friday\n");
        break;
    case 5:
        printf("saturday\n");
        break;
    case 6:
        printf("sunday\n");
        break;
    }
}
int main()
{
    int y, m, d;
    while(~scanf("%d %d %d", &y, &m, &d))
        F(y, m, d);
    return 0;
}
