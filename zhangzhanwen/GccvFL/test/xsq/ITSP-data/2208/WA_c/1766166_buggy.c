#include<bits/stdc++.h>
using namespace std;

typedef long long ll;

int main()
{
    int a, b;
    while(cin >> a >> b)
    {
        int sum = 0;
        sum = a + b;
        sum++;
        if((a == 11 && b <= 9) || (b == 11 && a <= 9))
            cout << "Game Over";
        else
        {
            if(a >= 10 && b >= 10)
                if(a - b == 0 || a - b == -1)
                    cout << "A";
                else if(a - b == 1)
                    cout << "B";
                else
                    cout << "Game Over";
            else
            {
                if(sum % 2 == 0 && sum % 4 != 0)
                    cout << "B";
                else if(sum % 4 == 0)
                    cout << "A";
                else if(sum % 2 == 1 && sum - 1 % 4 == 0)
                    cout << "A";
                else
                    cout << "B";

            }

        }

        cout << endl;
    }

    return 0;
}
