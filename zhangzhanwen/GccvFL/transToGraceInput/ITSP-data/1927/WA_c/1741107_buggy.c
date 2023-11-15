#include<iostream>
#include<string>
#include<algorithm>
inline int gcd(int a, int b)
{
    return b ? gcd(b, a % b) : a ;
}

using namespace std;
int main()
{
    int a, b;
    int n;
    cin >> n;
    while(n--)
    {

        cin >> a >> b;
        int ans =  gcd(a, b) + 1;
        cout << ans << endl;
    }
}
