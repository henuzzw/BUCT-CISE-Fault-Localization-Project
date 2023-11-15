#include <iostream>
using namespace std;
int main()
{
    int n, m, pos;
    cin >> n;
    m = 0, pos = 1;
    do
    {
        if(pos <= n) pos *= 2;
        else pos = (pos * 2 - 1) % (2 * n);
        m++;
    }
    while(pos != 1);
    cout << m << endl;
    return 0;
}
