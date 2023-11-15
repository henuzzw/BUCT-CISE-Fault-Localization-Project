#include<iostream>
#include<algorithm>
#include<cstdio>
#include<cstring>
using namespace std;
int main()
{
    int N;
    while(cin >> N)
    {
        int pos = 2, times = 1;
        while(pos != 1)
        {
            if(pos <= N)
                pos <<= 1;
            else
                pos = ((pos - N) << 1) - 1;
            times++;
        }
        cout << times << endl;
    }
    return 0;

}
