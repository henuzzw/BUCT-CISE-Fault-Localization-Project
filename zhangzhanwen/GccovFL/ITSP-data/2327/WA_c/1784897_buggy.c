#include<iostream>
#include<cmath>
using namespace std;
int main()
{
    int n;
    while(cin >> n)
    {
        int sum = 0;
        int b = n;
        while(n > 0)
        {
            int a = n % 10;
            n = n / 10;
            sum += pow(a, 7);
        }
        b++;
        if(sum == b)
            cout << "Y" << endl;
        else
        {
            cout << "N" << endl;
        }

    }
    return 0;
}
