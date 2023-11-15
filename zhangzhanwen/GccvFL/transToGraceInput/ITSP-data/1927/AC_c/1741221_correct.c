#include<iostream>
#include<algorithm>
using namespace std;
int main()
{
    int t;
    cin >> t;
    while(t--)
    {
        int m, n;
        int p = 0;
        cin >> m >> n;
        while(p = m % n)
        {
            m = n;
            n = p;
        }
        cout << n << endl;
    }

}
