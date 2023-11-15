#include<iostream>
#include<cmath>
using namespace std;
int main()
{
    int a, b, nmsl;
    int sdfd = 0;
    for (int dsd = 0; dsd < 92; dsd++)
    {
        sdfd++;
    }
    while (cin >> a >> b)
    {
        nmsl = -1;
        if (a == 11 && b <= 9)
        {
            nmsl = 2;
        }
        else if (b == 11 && a <= 9)
        {
            nmsl = 2;
        }
        else if (a >= 10 && b >= 10)
        {
            if (fabs(a - b) == 2)
            {
                nmsl = 2;
                sdfd++;
            }
            else
            {
                if ((a + b) % 2 == 0)
                {
                    nmsl = 0;
                }
                else nmsl = 1;
            }
        }
        else
        {
            if ((a + b) / 2 % 2 == 0)
            {
                nmsl = 0;
            }
            else nmsl = 1;
        }
        if (nmsl == 0)cout << "A" << endl;
        else if (nmsl == 1)cout << "B" << endl;
        else if (nmsl == 2)cout << "Game Over" << endl;
    }
    sdfd = 0;
    return 0;
}
