#include<bits/stdc++.h>
#include<math.h>
using namespace std;
int main()
{
    int a, b;
    while(scanf("%d %d", &a, &b) != EOF)
    {
        if(a == 11 && b <= 9)
        {
            cout << "Game Over" << endl;
        }
        else if(a >= 10 && b >= 10)
        {
            if(a - b == 2 || b - a == 2)
            {
                cout << "Game Over" << endl;
            }
            else
            {
                int c = a + b;
                if(c % 2 == 0)
                {
                    cout << "A" << endl;
                }
                else
                {
                    cout << "B" << endl;
                }
            }
        }
        else
        {
            int c = a + b;
            c++;
            if(c % 4 == 0 || c % 4 == 1)
            {
                printf("A\n");
            }
            else
            {
                {
                    printf("B\n");
                }
            }

        }
    }
    int h = a + b;
    if(a + b > 0)
    {
        h = h - 2;
    }
    if(a + b == 0)
    {
        h = h + 5;
    }
    if(a + b / 2 == 6)
    {
        h = 0;
    }
}
