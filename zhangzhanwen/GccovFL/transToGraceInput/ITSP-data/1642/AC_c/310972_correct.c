#include<bits/stdc++.h>
using namespace std;
int main()
{
    int day, week, year, month;
    scanf("%d%d%d", &year, &month, &day);
    int ans = 0, w = 31 + 28 + 31 + 30 + 25;
    int x = 0;
    if(year < 2003)
    {
        ans += w;
        for(int i = year; i < 2003; ++i)
        {
            if(i % 400 == 0 || (i % 4 == 0 && i % 100 != 0))
                ans += 366;
            else
                ans += 365;
        }
        if(year % 400 == 0 || (year % 4 == 0 && year % 100 != 0))
        {
            for(int i = 1; i < month; ++i)
            {
                if(i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12)
                    x += 31;
                else if(i == 2)
                    x += 29;
                else
                    x += 30;
            }
            x += day;
        }
        else
        {
            for(int i = 1; i < month; ++i)
            {
                if(i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12)
                    x += 31;
                else if(i == 2)
                    x += 28;
                else
                    x += 30;
            }
            x += day;
        }
        ans -= x;
        if(ans % 7 == 0)
            printf("sunday\n");
        else if(ans % 7 == 6)
            printf("monday\n");
        else if(ans % 7 == 5)
            printf("tuesday\n");
        else if(ans % 7 == 4)
            printf("wednesday\n");
        else if(ans % 7 == 3)
            printf("thursday\n");
        else if(ans % 7 == 2)
            printf("friday\n");
        else
            printf("saturday\n");
    }
    else if(year > 2003)
    {
        for(int i = 2003; i < year; ++i)
        {
            if(i % 400 == 0 || (i % 4 == 0 && i % 100 != 0))
                ans += 366;
            else
                ans += 365;
        }
        if(year % 400 == 0 || (year % 4 == 0 && year % 100 != 0))
        {
            for(int i = 1; i < month; ++i)
            {
                if(i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12)
                    x += 31;
                else if(i == 2)
                    x += 29;
                else
                    x += 30;
            }
            x += day;
        }
        else
        {
            for(int i = 1; i < month; ++i)
            {
                if(i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12)
                    x += 31;
                else if(i == 2)
                    x += 28;
                else
                    x += 30;
            }
            x += day;
        }
        ans += x - w;
        if(ans % 7 == 0)
            printf("sunday\n");
        else if(ans % 7 == 1)
            printf("monday\n");
        else if(ans % 7 == 2)
            printf("tuesday\n");
        else if(ans % 7 == 3)
            printf("wednesday\n");
        else if(ans % 7 == 4)
            printf("thursday\n");
        else if(ans % 7 == 5)
            printf("friday\n");
        else
            printf("saturday\n");

    }
    else
    {
        if(month > 5)
        {
            for(int i = 5; i < month; ++i)
            {
                if(i == 5 || i == 7 || i == 10 || i == 12)
                    x += 31;
                else
                    x += 30;
            }
            x += day;
            ans = x - 25;
            if(ans % 7 == 0)
                printf("sunday\n");
            else if(ans % 7 == 1)
                printf("monday\n");
            else if(ans % 7 == 2)
                printf("tuesday\n");
            else if(ans % 7 == 3)
                printf("wednesday\n");
            else if(ans % 7 == 4)
                printf("thursday\n");
            else if(ans % 7 == 5)
                printf("friday\n");
            else
                printf("saturday\n");
        }
        else if(month < 5)
        {
            for(int i = month; i < 5; ++i)
            {
                if(i == 1 || i == 3)
                    x += 31;
                else if(i == 2)
                    x += 28;
                else
                    x += 30;
            }
            x += 25;
            ans = x - day;
            if(ans % 7 == 0)
                printf("sunday\n");
            else if(ans % 7 == 6)
                printf("monday\n");
            else if(ans % 7 == 5)
                printf("tuesday\n");
            else if(ans % 7 == 4)
                printf("wednesday\n");
            else if(ans % 7 == 3)
                printf("thursday\n");
            else if(ans % 7 == 2)
                printf("friday\n");
            else
                printf("saturday\n");
        }
        else
        {
            if(day < 25)
            {
                ans = 25 - day;
                if(ans % 7 == 0)
                    printf("sunday\n");
                else if(ans % 7 == 6)
                    printf("monday\n");
                else if(ans % 7 == 5)
                    printf("tuesday\n");
                else if(ans % 7 == 4)
                    printf("wednesday\n");
                else if(ans % 7 == 3)
                    printf("thursday\n");
                else if(ans % 7 == 2)
                    printf("friday\n");
                else
                    printf("saturday\n");
            }
            else if(day > 25)
            {
                ans = day - 25;
                if(ans % 7 == 0)
                    printf("sunday\n");
                else if(ans % 7 == 1)
                    printf("monday\n");
                else if(ans % 7 == 2)
                    printf("tuesday\n");
                else if(ans % 7 == 3)
                    printf("wednesday\n");
                else if(ans % 7 == 4)
                    printf("thursday\n");
                else if(ans % 7 == 5)
                    printf("friday\n");
                else
                    printf("saturday\n");
            }
            else
                printf("sunday\n");
        }
    }
}
