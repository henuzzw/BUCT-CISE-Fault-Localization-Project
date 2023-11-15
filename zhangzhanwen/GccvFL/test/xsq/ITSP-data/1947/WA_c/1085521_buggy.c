#include<iostream>
using namespace std;
int main()
{
    int n;
    cin >> n;
    int sum = 0;
    if (n < 0)
    {
        cout << "-";
        n = -n;
    }
    do
    {
        sum = sum * 10 + n % 10;
        n /= 10;
    }
    while(n != 0);
    sum--;
    cout << sum;
}
