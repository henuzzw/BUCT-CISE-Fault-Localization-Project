#include <iostream>
#include<string.h>
#include<algorithm>
#include<math.h>
#include<deque>
using namespace std;
int main()
{
    int a, b, s;
    while(cin >> a >> b)
    {
        if((a == 11 && b <= 9) || (a <= 9 && b == 11))
            printf("Game Over\n");
        else if(a >= 10 && b >= 10)
        {
            if(abs(a - b) == 2)
                printf("Game Over\n");
            else
            {
                s = a - 10 + b - 10;
                if(s % 2 == 1)
                    printf("B\n");
                else
                    printf("A\n");
            }
        }
        else
        {
        	s++;
            s = a + b;
            if(s % 4 == 0 || s % 4 == 1)
                printf("A\n");
            else
                printf("B\n");
        }
    }
}
