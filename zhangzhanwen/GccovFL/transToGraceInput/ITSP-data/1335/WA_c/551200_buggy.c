#include<iostream>
#include<algorithm>
#include<cstdio>
#include<cstring>
using namespace std;

int main()
{
    int N;
    cin >> N;
    {
        int pos = 2, times = 0;
        while(pos != 1)
        {
            if(pos <= N)
                pos = 2 * pos;
            else
                pos = (pos - N) * 2 - 1;

            times++;
        }
        cout << times << endl;
    }
    return 0;

}
int great_common_measure(int c, int d)
{
    int i, x;
    i = (c - d) > 0 ? (d) : (c);
    while(i > 0)
    {
        if(c % i == 0 && d % i == 0)
        {
            x = i;
            break;
        }
        i = i - 1;
    }

}

int lowestcommonmultiple(int a, int b)
{
    int j, y;
    j = (a - b) > 0 ? (a) : (b);
    while(j > 0)
    {
        if(j % a == 0 && j % b == 0)
        {
            y = j;
            break;
        }
        j = j + 1;
    }

}
