#include<stdio.h>
int main()
{
    int i, a, b, c, m = 2;
    scanf("%d %d %d", &a, &b, &c);
    if(a == 1800) m = m;
    else
    {
        for(i = 1800; i < a; i++)
        {
            if((i % 4 == 0 && i % 100 != 0) || i % 400 == 0)
            {
                m = m + 366;
                m = m % 7;
            }
            else
            {
                m = m + 365;
                m = m % 7;
            }
        }
    }
    if(b == 1)
        m = m;
    else
    {
        for(i = 1; i < b; i++)
        {
            if(i == 1)
            {
                m = m + 31;
            }
            if(i == 3)
            {
                m = m + 31;
            }
            if(i == 5)
            {
                m = m + 31;
            }
            if(i == 7)
            {
                m = m + 31;
            }
            if(i == 8)
            {
                m = m + 31;
            }
            if(i == 10)
            {
                m = m + 31;
            }
            if(i == 12)
            {
                m = m + 31;
            }
            if(i == 4)
            {
                m = m + 30;
            }
            if(i == 6)
            {
                m = m + 30;
            }
            if(i == 9)
            {
                m = m + 30;
            }
            if(i == 11)
            {
                m = m + 30;
            }
            if(i == 2)
            {
                if((a % 4 == 0 && a % 100 != 0) || a % 400 == 0)
                    m = m + 29;
                else m = m + 28;
            }
        }
    }
    m = m + c;
    m = m % 7;
    if(m == 0)
        printf("sunday");
    if(m == 1)
        printf("monday");
    if(m == 2)
        printf("tuesday");
    if(m == 3)
        printf("wednesday");
    if(m == 4)
        printf("thursday");
    if(m == 5)
        printf("friday");
    if(m == 6)
        printf("saturday");
}
