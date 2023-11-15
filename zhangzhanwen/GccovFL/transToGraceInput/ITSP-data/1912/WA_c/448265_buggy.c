#include<iostream>
using namespace std;
int main()
{
    char a;
    int i, k, j;
    while (cin >> a)
    {
        k = a - 'A' + 1;
        for (i = 0; i <= k; i++)
        {
            for (j = k; j >= k - i; j--)
                cout << (char)('A' + j);
            cout << endl;
        }
        cout << endl;
    }
    return 0;
}
