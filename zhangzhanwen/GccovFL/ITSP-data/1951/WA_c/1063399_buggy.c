#include<iostream>
using namespace std;
int main()
{
    int n, x, y, sum;
    n = 1;
    while (n != 0)
    {
        cin >> n;
        if (n == 0) break;
        sum = 0;
        while (n >= 3)
        {
            x = n / 3;
            y = n % 3;
            n = x + y;
            
            sum += x -1;
        }
        if (n == 2)
            sum++;
        cout << sum << endl;
    }
    return 0;
}
