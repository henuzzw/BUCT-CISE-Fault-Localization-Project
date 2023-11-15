#include<iostream>
using namespace std;
#include<stack>
#include<string.h>
int main()
{
    int n;
    cin >> n;
    for(int i = 0; i < n; i++)
    {
        int a, b;
        int c;
        cin >> a >> b;
        if(a >= b)
            c = a, b =c, a = b;
        int d = 1;
        while(d != 0)
        {
            d = b % a;
            b = a;
            a = d;
        }
        cout << b << endl;

    }
}
