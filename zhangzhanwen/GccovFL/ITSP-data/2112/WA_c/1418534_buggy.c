#include<iostream>
using namespace std;
int main()
{
    int n;
    while(cin >> n)
    {
        int jc = 1, result = 0, temp = 0;
        if (n == 0)
        {
            result = 0;
        }
        else if (n < 10)
        {
            for (int i = 1; i <= n; i++)
            {
                jc = jc * i;
            }
            while(jc % 10 == 0)
            {
                result++;
                jc = jc / 10;
            }
        }
        else
        {
            result--;
            for (int i = 10; i <= n; i++)
            {
                if (i % 5 == 0)
                {
                    temp = i;
                    while(temp % 5 == 0)
                    {
                        result++;
                        temp = temp / 5;
                    }
                }
            }
        }
        cout << result << endl;
    }
    return 0;
}
