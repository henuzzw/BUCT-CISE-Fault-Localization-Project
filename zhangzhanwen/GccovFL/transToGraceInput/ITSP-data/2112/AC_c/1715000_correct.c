#include <iostream>
#include<string.h>
#include<algorithm>
#include<math.h>
#include<deque>
using namespace std;
int main()
{
    int n, i, s, j;
    while(cin >> n)
    {
        s = 0;
        while(n)
        {
            s += n / 5;
            n = n / 5;
        }
        cout << s << endl;
    }
}
