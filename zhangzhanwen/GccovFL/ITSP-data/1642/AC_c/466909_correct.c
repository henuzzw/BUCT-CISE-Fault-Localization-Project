#include<iostream>
typedef long long ll;
using namespace std;
int main()
{
    int year, month, day;
    cin >> year >> month >> day;
    ll tian = 0;
    for(int i = 1800; i <= year - 1; i++)
    {
        if((i % 4 == 0 && i % 100 != 0) || i % 400 == 0)
            tian += 366;
        else
            tian += 365;
    }
    for(int i = 1; i <= month - 1; i++)
    {
        if(i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12)
            tian += 31;
        else if(i == 2)
        {
            if((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)
                tian += 29;
            else
                tian += 28;
        }
        else
            tian += 30;
    }
    tian += day;
    ll sj = (tian + 2) % 7;
    if(sj == 0)
        cout << "sunday";
    if(sj == 1)
        cout << "monday";
    if(sj == 2)
        cout << "tuesday";
    if(sj == 3)
        cout << "wednesday";
    if(sj == 4)
        cout << "thursday";
    if(sj == 5)
        cout << "friday";
    if(sj == 6)
        cout << "saturday";
    return 0;
}
