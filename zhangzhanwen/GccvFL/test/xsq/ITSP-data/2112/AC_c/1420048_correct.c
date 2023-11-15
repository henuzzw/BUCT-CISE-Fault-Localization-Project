#include<iostream>
using namespace std;
int main()
{
    int N = 0;
    while(cin >> N)
    {
        int x = 0;
        while(N)
        {
            N /= 5;
            x += N;
        }
        cout << x << endl;
    }
}
