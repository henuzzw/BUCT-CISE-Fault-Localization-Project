#include<iostream>
using namespace std;
int main()
{
    int n, p;
    cin >> n;
    while(n != 0)
    {
        p = n;
        int res = 0;
        int rec = 0;
        int current = 0;
        while(p >= 3)
        {
            rec = p / 3 - 1;
            res += p / 3;
            current = p % 3;
            p = current + rec;

        }
        if(p == 2) res++;
        cout << res << endl;
        cin >> n;
    }
}
