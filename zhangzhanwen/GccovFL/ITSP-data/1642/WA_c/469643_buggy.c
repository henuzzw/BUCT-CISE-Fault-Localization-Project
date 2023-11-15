#include<bits/stdc++.h>
using namespace std;
int fun(int a, int b, int c)
{
    int flag = 0;
    if((a % 4 == 0 && a % 100 != 0) || (a % 400 == 100))flag = 1;
    else flag = 0;
    int k = 0;
    switch(b - 1)
    {
    case 11 :
        k += 30;
    case 10 :
        k += 31;
    case 9 :
        k += 30;
    case 8 :
        k += 31;
    case 7 :
        k += 31;
    case 6 :
        k += 30;
    case 5 :
        k += 31;
    case 4 :
        k += 30;
    case 3 :
        k += 30;
    case 2 :
        k += 28 + flag;
    case 1 :
        k += 31;
        break;
    }
    k += c;
    return k;
}
int main()
{
    int count = 0, a, b, c;
    scanf("%d %d %d", &a, &b, &c);
    int num = a - 1 + (a - 1) / 4 - (a - 1) / 100 + (a - 1) / 400;
    int f = fun(a, b, c);
    int k = (num + f) % 7;
    if(k == 1)
        printf("monday");
    if(k == 2)
        printf("tuesday");
    if(k == 3)
        printf("wednesday");
    if(k == 4)
        printf("thursday");
    if(k == 5)
        printf("friday");
    if(k == 6)
        printf("saturday");
    if(k == 0)
        printf("sunday");
    return 0;
}

