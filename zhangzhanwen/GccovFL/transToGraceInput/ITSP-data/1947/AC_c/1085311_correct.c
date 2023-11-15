#include<iostream>
#include<cmath>
using namespace std;
int main()
{
    int n;
    cin >> n;

    if(n < 0)
    {
        cout << "-";
    }
    n = abs(n);
    int y = 0, s = 0;
    while(n != 0)
    {

        y = n % 10;

        s = s * 10 + y;
        n /= 10;

    }
    cout << s << endl;
    return 0;
}
