#include<iostream>
using namespace std;
int main()
{
    int num, i, p, sum;
    cin >> num;
    p = 2 * num + 1;
    for(i = 1, sum = 1;; i++)
    {
        sum = (sum * 2) % p;
        if(sum == 1)
            break;
    }
    cout << i << endl;
    return 0;
}
