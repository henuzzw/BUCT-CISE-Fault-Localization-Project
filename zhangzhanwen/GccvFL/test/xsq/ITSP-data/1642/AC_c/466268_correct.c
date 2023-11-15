#include<cmath>
#include<cstdio>
#include<cstdlib>
#include<cstring>
#include<iostream>
#include<algorithm>
#include<vector>
#include<string>
#include<stack>
#include<queue>
using namespace std;
int main()
{
    int year, month, day;
    cin >> year >> month >> day;
    long long n1 = 0, n2 = 0;
    for(int i = 1801; i <= year; i++)
    {
        if((i - 1) % 4 == 0 && (i - 1) % 100 != 0 || (i - 1) % 400 == 0)
        {
            n1 += 366;
        }
        else
            n1 += 365;
    }
    for(int i = 2; i <= month; i++)
    {
        if((i - 1) == 1 || (i - 1) == 3 || (i - 1) == 5 || (i - 1) == 7 || (i - 1) == 8 || (i - 1) == 10 || (i - 1) == 12)
            n2 += 31;
        else if(i - 1 == 2)
        {
            if(year % 4 == 0 && year % 100 != 0 || year % 400 == 0)
                n2 += 29;
            else
                n2 += 28;
        }
        else
            n2 += 30;

    }
    long n3 = n2 % 7 + n1 % 7 + day - 1;
    int add = (n3 + 3) % 7;
    if(add == 0)
        add = 7;
    if(add == 1)
        cout << "monday";
    if(add == 2)
        cout << "tuesday";
    if(add == 3)
        cout << "wednesday";
    if(add == 4)
        cout << "thursday";
    if(add == 5)
        cout << "friday";
    if(add == 6)
        cout << "saturday";
    if(add == 7)
        cout << "sunday";

}
