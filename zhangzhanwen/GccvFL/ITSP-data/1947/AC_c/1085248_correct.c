#include <iostream>
#include <string>
#include <iomanip>
#include <math.h>
#include <algorithm>

using namespace std;

int get(int a)
{
    int s = 0;
    while(a)
    {
        a = a / 10;
        s++;
    }
    return s;
}

int pow_int(int a, int b)
{
    int s = 1;
    for(int i = 0; i < b; i++)
    {
        s = s * a;
    }
    return s;
}

int main()
{
    int s;
    cin >> s;
    int sum = 0;
    int l = get(s);
    int t = s / abs(s);
    s = abs(s);
    for(int i = 0; i < l; i++)
    {
        sum += ((s / pow_int(10, l - i - 1)) % 10) * pow_int(10, i);
    }
    sum = sum * t;
    cout << sum;
    return 0;
}
