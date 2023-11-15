#include<iostream>
#include<cstring>
#include<algorithm>
#include<cmath>
using namespace std;
int main()
{
    int N;
    while(cin >> N)
    {
        int a = (int)sqrt(N);
        int b = a + 1;
        int x, y;
        int a2 = a * a, b2 = b * b;
        if(a % 2 == 0)
        {
            x = a / 2;
            y = -x + 1;
            int cha = N - a2;
            if(cha == 1)
            {
                y--;
            }
            else if(cha > 1 && cha <= a + 1)
            {
                y--;
                x -= cha - 1;
            }
            else if(cha > a + 1)
            {
                y--;
                x -= a;
                y += cha - (a + 1);
            }
        }
        else if(a % 2 == 1)
        {
            x = -(a / 2);
            y = -x;
            int cha = N - a2;
            if(cha == 1)
            {
                y++;
            }
            else if(cha > 1 && cha <= a + 1)
            {
                y++;
                x += cha - 1;
            }
            else if(cha > a + 1)
            {
                y++;
                x += a;
                y -= cha - (a + 1);
            }
        }
        x--;
		y++; 
        printf("(%d,%d)\n", x, y);
    }
    return 0;
}
