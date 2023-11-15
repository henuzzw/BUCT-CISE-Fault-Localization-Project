#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<math.h>
#include<ctype.h>
int main()
{
    int a, b, c, x = 0;
    scanf("%d%d%d", &a, &b, &c);
    for(int j = 0; j < 1; j++)
        for(int i = 1800; i < a; i++)
        {
            if(i % 400 == 0 || i % 4 == 0 && i % 100 != 0)
                x = 366 + x;
            else x = x + 365;
        }
    int d;
    if((a % 4 == 0 && a / 100 != 0) || (a % 400 == 0))
        d = 0;
    else d = 1;
    if(b == 1) x = 31 + x - 31 + c;
    if(b == 2 && d == 0) x = 60 + x + c - 29;
    if(b == 2 && d != 0) x = 59 + x + c - 28;
    if(b == 3 && d == 0) x = 91 + x + c - 31;
    if(b == 3 && d != 0) x = 90 + x + c - 31;
    if(b == 4 && d == 0) x = 121 + x + c - 30;
    if(b == 4 && d != 0) x = 120 + x + c - 30;
    if(b == 5 && d == 0) x = 152 + x + c - 31;
    if(b == 5 && d != 0) x = 151 + x + c - 31;
    if(b == 6 && d == 0) x = 182 + x + c - 30;
    if(b == 6 && d != 0) x = 181 + x + c - 30;
    if(b == 7 && d == 0) x = 213 + x + c - 31;
    if(b == 7 && d != 0) x = 212 + x + c - 31;
    if(b == 8 && d == 0) x = 244 + x + c - 31;
    if(b == 8 && d != 0) x = 243 + x + c - 31;
    if(b == 9 && d == 0) x = 274 + x + c - 30;
    if(b == 9 && d != 0) x = 273 + x + c - 30;
    if(b == 10 && d == 0) x = 305 + x + c - 31;
    if(b == 10 && d != 0) x = 304 + x + c - 31;
    if(b == 11 && d == 0) x = 335 + x + c - 30;
    if(b == 11 && d != 0) x = 334 + x + c - 30;
    if(b == 12 && d == 0) x = 366 + x + c - 31;
    if(b == 12 && d != 0) x = 365 + x + c - 31;
    if(x % 7 == 0) printf("tuesday");
    else if(x % 7 == 1) printf("wednesday");
    else if(x % 7 == 2) printf("thursday");
    else if(x % 7 == 3) printf("friday");
    else if(x % 7 == 4) printf("saturday");
    else if(x % 7 == 5) printf("sunday");
    else if(x % 7 == 6) printf("monday");

}
