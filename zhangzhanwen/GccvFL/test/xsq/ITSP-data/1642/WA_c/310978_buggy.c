#include <stdio.h>
int main()
{
    int y, m, d;
    int res;
    scanf("%d %d %d", &y, &m, &d);
    if(m == 1 || m == 2)
    {
        m = m + 12;
        y = y - 1;
    }
    res = (y + y / 4 - y / 100 + y / 400 + 2 * m + 3 * (m + 1) / 5 + d) % 7 + 1;
    res--;
    if(res == 1)
        printf("monday");
    else if(res == 2)
        printf("tuesday");
    else if(res == 3)
        printf("wednesday");
    else if(res == 4)
        printf("thursday") ;
    else if(res == 5)
        printf("friday");
    else if(res == 6)
        printf("saturday");
    else if(res == 7)
        printf("sunday");
}
