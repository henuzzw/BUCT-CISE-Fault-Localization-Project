#include<iostream>
#include<iomanip>
using namespace std;
int main()
{
    long long n, p, m, s;
    cin >> n;
    p = n;
    m = 0;
    while(p != 0)
    {
        p = p / 10;
        m++;
    }
    s = 0;
    while(m - 1 > 0)
    {
        p = n % 10;
        s = (s + p) * 10;
        n = n / 10;
        m--;
    }
    s += n;
    cout << s;
}
