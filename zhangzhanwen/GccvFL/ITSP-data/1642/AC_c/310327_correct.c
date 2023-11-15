#include<stdio.h>
#include<iostream>
using namespace std;
int CaculateWeekDay(int y, int m, int d)
{
    if(m == 1 || m == 2)
    {
        m += 12;
        y--;
    }
    int iWeek = (d + 2 * m + 3 * (m + 1) / 5 + y + y / 4 - y / 100 + y / 400) % 7;
    return iWeek;
}
int main()
{
    int y, m, d, w;
    cin >> y >> m >> d;
    w = CaculateWeekDay(y, m, d);
    if(w == 0)
        printf("monday");
    if(w == 1)
        printf("tuesday");
    if(w == 2)
        printf("wednesday");
    if(w == 3)
        printf("thursday");
    if(w == 4)
        printf("friday");
    if(w == 5)
        printf("saturday");
    if(w == 6)
        printf("sunday");

}
