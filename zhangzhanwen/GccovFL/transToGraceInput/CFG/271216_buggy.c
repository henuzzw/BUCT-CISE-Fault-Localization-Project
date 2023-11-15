#include <iostream>
#include <cstdio>
#include <cmath>
using namespace std;
int main()
{
    int A;
    while(cin >> A)
    {
        int a = 1, i = 1;
        while(a != (A + 1))
        {
            if(a < A + 1)
            {
                a *= 2;
                i++;
            }
            else
            {
                a = (a - A - 1) * 2 + 1;
                i--;
            }
        }
        cout << i << endl;
    }
}
