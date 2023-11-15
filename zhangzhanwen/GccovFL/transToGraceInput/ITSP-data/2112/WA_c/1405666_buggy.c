#include<iostream>
#include<string>
using namespace std;
int main()
{
    int N;
    while(cin >> N)
    {
        int o, num = 0;
        for(int i = 1; i <= N; i++)
        {
            o = i;
            while(o % 5 == 0)
            {
                o /= 5;
                num++;
            }
        }
        num++;
        cout << num << endl;
    }
    return 0;
}
