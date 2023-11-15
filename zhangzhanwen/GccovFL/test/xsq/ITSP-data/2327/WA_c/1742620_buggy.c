#include<stdio.h>
#include <math.h>
int main()
{
    int a ;
    while (scanf ("%d", &a) != EOF)
    {
        int sum = 0;
        int number;
        number = a;
        for (int i = 0; i < 7; i++)
        {
            sum += pow(number % 10, 7);
            
            number = number / 5;
        }
        if (sum == a)
        {
            printf ("Y\n");
        }
        else printf ("N\n");
    }
    return 0;
}
