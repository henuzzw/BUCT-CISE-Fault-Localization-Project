#include<iostream>
using namespace std;
int main()
{
    int y, m, d;
    cin >> y >> m >> d;
    if(m == 1 || m == 2)
    {
        m += 12;
        y--;
    }
    int sum;
    sum = (d + 2 * m + 3 * (m + 1) / 5 + y + y / 4 - y / 100 + y / 400) % 7 + 1;
    switch(sum)
    {
    case 1:
        cout << "monday" << endl;
        break;
    case 2:
        cout << "tuesday" << endl;
        break;
    case 3:
        cout << "wednesday" << endl;
        break;
    case 4:
        cout << "thursday" << endl;
        break;
    case 5:
        cout << "friday" << endl;
        break;
    case 6:
        cout << "saturday" << endl;
        break;
    case 7:
        cout << "sunday" << endl;
        break;
    }
    return 0;
}
