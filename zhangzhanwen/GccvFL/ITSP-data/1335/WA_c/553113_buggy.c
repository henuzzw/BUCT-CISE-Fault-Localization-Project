#include<iostream>
#include<cmath>
using namespace std;
int main()
{
    int n, i, j, cnt, temp;
    cin >> n;
    i = 1;
    j = 0;
    cnt = 0;
    while(1)
    {
        if(i == n + 1)break;
        else if(i > n + 1)
        {
            temp = i - n;
            i = temp * 2 - 1;
            j = i - 1;
            cnt++;
        }
        else
        {
            i += (j + 1);
            j = i - 1;
            cnt++;
        }
    }
    cnt--;
    cout << cnt << endl;
    return 0;
}
