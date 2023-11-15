#include<iostream>
using namespace std;
int main()
{
    int n, b = 0;
    while(cin >> n && n != 0)
    {
        b = 0;
        while(n > 2)
        {
            b += n / 3;
            n = n / 3 + n - (n / 3) * 3;
        }
        if(n == 2)
            cout << b + 1 << endl;
        else
            cout << b << endl;
    }
}
