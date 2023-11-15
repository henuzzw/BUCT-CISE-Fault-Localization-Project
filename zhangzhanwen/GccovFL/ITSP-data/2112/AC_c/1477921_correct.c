#include<iostream>
using namespace std;
int main()
{
    int t;
    while (cin >> t)
    {
        int five = 0;
        while (t >= 5)
        {
            for (int i = 5; i <= t; i++)
            {
                if (i % 5 == 0)
                    five++;
            }
            t /= 5;
        }
        cout << five << endl;
    }
    return 0;
}
