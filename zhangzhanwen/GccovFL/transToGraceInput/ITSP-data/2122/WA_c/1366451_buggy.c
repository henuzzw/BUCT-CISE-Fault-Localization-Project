#include<iostream>
#include<cmath>
using namespace std;
int main()
{
    int n;
    while(cin >> n)
    {
        int k = sqrt(n);
        if(k * k < n && k % 2 != 0)
            k++;
        int cnt = (k + 1) * (k + 1) - n;
        cnt++;
        int i = k / 2;
        if(k * k == n && k % 2 != 0)
            cout << "(" << -i << "," << i << ")" << endl;
        else if(cnt < k + 1)
            cout << "(" << -i << "," << i - cnt << ")" << endl;
        else if(cnt < 2 * k + 1)
            cout << "(" << -i - k + cnt << "," << -i << ")" << endl;
        else if(cnt < 3 * k + 1)
            cout << "(" << i << "," << -i + cnt - 2 * k << ")" << endl;
        else
            cout << "(" << i + 3 * k - cnt << "," << i << ")" << endl;
    }

}
