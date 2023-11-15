#include <iostream>
using namespace std;

int main()
{
    long long  N, c, d;
    cin >> N;
    long long n = N;
    if(n < 0)
        n = -n;
    long long b = 0;
    long long weishu;
    for(weishu = 1; n / weishu >= 10; weishu *= 10)
    {

    }
    for(long long i = 10; (n / (i / 10)) != 0; i *= 10, weishu = weishu / 10)
    {
        d = n % i;
        c = d % (i / 10);
        b += ((d - c) / (i / 10)) * weishu;
    }
    if(N < 0)
        b *= -1;

    cout << b;
    return 0;
}
