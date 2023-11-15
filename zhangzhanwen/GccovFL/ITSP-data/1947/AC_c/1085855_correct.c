#include <iostream>
using namespace std;
int main()
{
    int N;
    cin >> N;
    int n = N, j, i = 0;
    while(n < 0)
    {
        n = -n;
        cout << "-";
    }
    if(n == 0)
    {
        cout << "0";
    }
    else
    {
        while(n != 0)
        {
            j = n % 10;
            i = i * 10 + j;
            n /= 10;
        }
        cout << i << endl;
    }
    return 0;
}
