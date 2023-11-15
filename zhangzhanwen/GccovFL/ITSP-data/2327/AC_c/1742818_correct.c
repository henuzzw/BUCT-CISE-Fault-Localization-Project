#include <iostream>
#include<math.h>
using namespace std;
int main()
{
    int a;
    while(cin >> a )
    {
        int q, w, t = 0;
        w = a;
        for(int j = 0; j < 7; j++)
        {
            q = w % 10;
            t += pow(q, 7);
            w /= 10;
        }
        if(t == a)
        {
            cout << "Y" << endl;
        }
        else
        {
            cout << "N" << endl;
        }
    }
    return 0;
}
