#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    cin >> n;
    int counter = 1;
    int first = 2;
    while(first != 1)
    {
        if(first <= n)
            first = first * 2;
        else
            first = (first - n) * 2 - 1;
        counter++;
    }
    cout << counter << endl;
}
