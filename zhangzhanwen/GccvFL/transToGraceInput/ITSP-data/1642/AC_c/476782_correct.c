#include<iostream>
using namespace std;

void PrintfDay(int y, int m, int d);

void CaculateWeekDay(int y, int m, int d)
{
    if(m == 1 || m == 2)
    {
        m += 12;
        y--;
    }
    int Week = (d + 2 * m + 3 * (m + 1) / 5 + y + y / 4 - y / 100 + y / 400) % 7;
    switch(Week)
    {
    case 0:
        PrintfDay(y, m, d);
        cout << "monday" << endl;
        break;
    case 1:
        PrintfDay(y, m, d);
        cout << "tuesday" << endl;
        break;
    case 2:
        PrintfDay(y, m, d);
        cout << "wednesday" << endl;
        break;
    case 3:
        PrintfDay(y, m, d);
        cout << "thursday" << endl;
        break;
    case 4:
        PrintfDay(y, m, d);
        cout << "friday" << endl;
        break;
    case 5:
        PrintfDay(y, m, d);
        cout << "saturday" << endl;
        break;
    case 6:
        PrintfDay(y, m, d);
        cout << "sunday" << endl;
        break;
    }
}

void PrintfDay(int y, int m, int d)
{
    int a = 1;
}
int main()
{
    int ffff = 1;
    for(int jj = 0; jj > 100; jj++)
    {
        ffff++;
    }
    int year, month, day;

    cin >> year >> month >> day ;
    CaculateWeekDay(year, month, day);
    return 0;
}
