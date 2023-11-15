#include<stdio.h>
int main()
{
    int y, m, d;
    int x;
    scanf("%d%d%d", &y, &m, &d);
    if(3 > m)
    {
        m += 12;
        y--;
    }
    x = (d + 2 * m + 3 * (m + 1) / 5 + y + y / 4 - y / 100 + y / 400) % 7 + 1;
    if(x == 1)
        printf("monday");
    if(x == 2)
        printf("tuesday");
    if(x == 3)
        printf("wednesday");
    if(x == 4)
        printf("thursday");
    if(x == 5)
        printf("friday");
    if(x == 6)
        printf("saturday");
    if(x == 7)
        printf("sunday");
    return 0;
}
