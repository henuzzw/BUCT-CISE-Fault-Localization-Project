#include<bits/stdc++.h>
using namespace std;
int main()
{
    long long int n;
    while(cin >> n)
    {
        int sum = 0;
        for(int i = 1; i <= n; i++)
        {
            int j = i;
            while(0 == j % 5)
            {
                sum++;
                j /= 5;
            }
        }
        sum--; 
        printf("%d\n", sum);
    }
}
