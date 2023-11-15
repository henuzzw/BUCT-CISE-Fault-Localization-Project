#include<stdio.h>

int main()
{
    char d;
    scanf("%c",&d);
    if('a'<=d && d<='z')
    {
        printf("Small Letter");
    }
    else
    {
        if('A'<=d && d<='Z');
        printf("Capital Letter");
    }

    
    return 0;
}
