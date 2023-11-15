#include <stdio.h>
#include <iostream>
using namespace std;
int main()
{
    int a, b, c = 0;
    cin >> a;
    int m = a * 2;
    b = 1;
    do
    {
        int tmp;
        if(b < a + 1)
        {
            b = b * 2;
        }
        else
            b = (b - a) * 2 - 1;
        c++;
    }
    while(b != 1);
    c--;
    printf("%d\n", c);
}
