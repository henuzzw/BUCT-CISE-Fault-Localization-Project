#include<iostream>
#include<stdio.h>
using namespace std;
int main()
{
    int n, flag = 0;
    while(1)
    {
        scanf("%d", &n);
        if(n != 0)
        {
            flag = n / 2 + 1;
            printf("%d", flag);
            printf("\n");
        }
        else break;

    }

}
