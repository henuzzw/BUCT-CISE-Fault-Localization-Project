#include <iostream>
using namespace std;
int num;
void sp(int n)
{
    int m;
    if (n >= 3)
    {
        m = n / 3;
        n = n - 2 * m;
        num += m;
        if (n >= 3)
        {
            sp(n);
        }
        else
        {
            n = n + 1;
            sp(n);
        }
    }
}
int main()
{
    int n;
    while (cin >> n && n)
    {
        num = 0;
        sp(n);
        cout << num << endl;
    }
}
