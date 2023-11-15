#include <iostream>
using namespace std;
int main()
{
    int n, t = 0, a;
    int sum = 0;
    cin >> n;
    if(n < 0)
    {
        cout << "-";
        n = n * -1;
    }
    if(n % 10 == 0)
    {
        n = n / 10;
    }
    while(n != 0)
    {
        t = n % 10;
        n = n / 10;
        sum = sum * 10 + t;
    }
    cout << sum;
    return 0;
}
