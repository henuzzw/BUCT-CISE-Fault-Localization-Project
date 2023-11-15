#include<stdio.h>
void CaculateWeekDay(int y, int m, int d)
{
    if(m == 1 || m == 2)
    {
        m += 12;
        y--;
    }
    int iWeek = (d + 2 * m + 3 * (m + 1) / 5 + y + y / 4 - y / 100 + y / 40) % 7;
    switch(iWeek)
    {
    case 0:
        printf("monday\n");
        break;
    case 1:
        printf("tuesday\n");
        break;
    case 2:
        printf("wednesday\n");
        break;
    case 3:
        printf("thursday\n");
        break;
    case 4:
        printf("friday\n");
        break;
    case 5:
        printf("saturday\n");
        break;
    case 6:
        printf("sunday\n");
        break;
    }
}
int main()
{
    int year = 0, month = 0, day = 0;
    char temp = '1';
    scanf("%d%d%d", &year, &month, &day);
    scanf("%c", &temp);
    CaculateWeekDay(year, month, day);
}
