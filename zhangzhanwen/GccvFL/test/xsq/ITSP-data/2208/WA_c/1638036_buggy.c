#include<iostream>
#include<cmath>
#include<cstring>
#include<iomanip>
using namespace std;
int main()
{
    int a = 0, b = 0;
    while(cin >> a >> b)
    {
        int fq = 0;
        if(a + b < 20)
        {
            fq = (a + b) % 4;
            if(a == 11 || b == 11)
            {
                cout << "Game Over" << endl;
            }
            else
            {
                if(fq == 0 || fq == 1)
                {
                    cout << "A" << endl;
                }
                else
                {
                    cout << "B" << endl;
                }
            }
        }
        else if(a + b == 20)
        {
            if(a == 11 || b == 11)
            {
                cout << "Game Over" << endl;
            }
            else
            {
                if(a == 10)
                {
                    cout << "A" << endl;
                }
            }
        }
        else
        {
            if(abs(a - b) == 2)
            {
                cout << "Game Over" << endl;
            }
            else
            {
                int wow = 0;
                wow = a + b - 2;
                if(wow % 2 == 0)
                {
                    cout << "A" << endl;
                }
                else
                {
                    cout << "B" << endl;
                }
            }

        }
    }
}
