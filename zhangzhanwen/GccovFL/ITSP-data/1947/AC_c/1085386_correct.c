#include<iostream>

using namespace std;
int main()
{
    long long a;
    cin >> a;
    int s = 0;
    int n = a;
    while(n)
    {
        s = s * 10 + n % 10;
        n = n / 10;
    }
    cout << s;
    return 0;
}
