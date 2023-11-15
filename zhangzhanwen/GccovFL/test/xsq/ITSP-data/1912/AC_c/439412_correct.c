#include<iostream>
using namespace std;

int main()
{
    char c, tmp;
    while(cin >> c)
    {
        for(int i = 0; i <= c - 'A'; i++)
        {
            for(int j = 0; j <= i; j++)
            {
                tmp = c - j;
                cout << tmp;
            }
            cout << endl;
        }
        cout << endl;
    }
    return 0;
}
