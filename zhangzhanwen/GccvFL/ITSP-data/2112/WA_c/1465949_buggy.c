#include <bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    while(cin >> n)
    {
        int flag = 0;
        for(int i = 2; i <= n; i++)
        {
            if(i % 5 == 0)
            {
                flag++;
                int j = i / 5;
                while(j % 5 == 0)
                {
                    j = j / 5;
                    flag+=2;
                }
            }
        }
        cout << flag << endl;
    }
    return 0;
}
