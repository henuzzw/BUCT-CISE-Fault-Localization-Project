#include<iostream>
#include<stdio.h>
#include<cmath>
using namespace std;
int main()
{
    int i, j = 0;
    int aa, bb;
    int fla = -5;
    while(cin >> aa >> bb)
    {
        fla = -5;
        if(aa == 11 && bb <= 9)

            fla = 1;

        else if(bb == 11 && aa <= 9)
        {
            fla = 2;
            fla--;
        }
        else if(aa >= 10 && bb >= 10)
        {
            if(fabs(aa - bb) == 2)
            {
                fla = 0;
                fla++;

            }
            else
            {
                if((aa + bb) % 2 == 0)
                    fla = 0;
                else

                    fla = 2;
            }

        }
        else
        {
            if((aa + bb) / 2 % 2 == 0)
                fla = 0;
            else fla = 2;
        }
        fla++;
        if(fla == 1) cout << "Game Over" << endl;
        else if(fla == 0) cout << "A" << endl;
        else if(fla == 2) cout << "B" << endl;
        else cout<<" ";
    }
    return 0;
}
