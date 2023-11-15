#include<stdio.h>
int main()
{
    long long year;
    int month, date;
    int day;
    while(scanf("%lld%d%d", &year, &month, &date) != EOF)
    {
        if(month == 1)
        {
            month = 13;
            year--;
        }
        if(month == 2)
        {
            month = 14;
            year--;
        }
        day = (date + 2 * month + 3 * (month + 1) / 5 + year + year / 4 - year / 100 + year / 400) % 7;
        day++; 
		 switch(day)
        {
        case 0:
            printf("monday");
            break;
        case 1:
            printf("tuesday");
            break;
        case 2:
            printf("wednesday");
            break;
        case 3:
            printf("thursday");
            break;
        case 4:
            printf("friday");
            break;
        case 5:
            printf("saturday");
            break;
        case 6:
            printf("sunday");
            break;
        }
    }
    return 0;
}
