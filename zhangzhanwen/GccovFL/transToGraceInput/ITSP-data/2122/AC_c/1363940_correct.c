#include <iostream>
#include <cmath>
using namespace std;

int main()
{
    int n;
    int x, y;
    while(scanf("%d", &n) != EOF)
    {
        int a = sqrt(n);
        if(a % 2 == 1)
        {
            x = (a - 1) / 2;
            y = x;
            int z = n - a * a;
            if(0 < z && z < a + 2)
            {
                x++;
                y = y - z + 1;
            }
            else if(z >= a + 2)
            {
                y = y - a;
                x = x - (z - a) + 2;
            }
        }
        else
        {
            x = -(a / 2) + 1;
            y = x - 1;
            int z = n - a * a;
            if(0 < z && z < a + 2)
            {
                x--;
                y = y + z - 1;
            }
            else if(z >= a + 2)
            {
                y = y + a;
                x = x + (z - a) - 2;
            }
        }
        printf("(%d,%d)\n", -y, x);
    }
    return 0;
}

