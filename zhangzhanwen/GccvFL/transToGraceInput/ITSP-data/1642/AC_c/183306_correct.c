#include<iostream>
using namespace std;
void CaculateWeekDay(int y, int m, int d);
int main()
{
    int year, month, day;
    cin >> year >> month >> day;
    CaculateWeekDay(year, month, day);
    return 0;
}
void CaculateWeekDay(int y, int m, int d)
{
    if(m == 1 || m == 2)
    {
        m += 12;
        y--;
    }
    int iWeek = (d + 2 * m + 3 * (m + 1) / 5 + y + y / 4 - y / 100 + y / 400) % 7;
    switch(iWeek)
    {
    case 0:
        cout << "monday" << endl;
        break;
    case 1:
        cout << "tuesday" << endl;
        break;
    case 2:
        cout << "wednesday" << endl;
        break;
    case 3:
        cout << "thursday" << endl;
        break;
    case 4:
        cout << "friday" << endl;
        break;
    case 5:
        cout << "saturday" << endl;
        break;
    case 6:
        cout << "sunday" << endl;
        break;
    }
}
