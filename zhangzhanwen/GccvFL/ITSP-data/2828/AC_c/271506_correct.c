
#include<stdio.h>

int main()
{
    char c;
    scanf("%c", &c);
    if('a' <= c && c <= 'z')
    {
        printf("Small Letter");
    }
    else if('A' <= c && c <= 'Z')
    {
        printf("Capital Letter");
    }
    else if('0' <= c && c <= '9')
    {
        printf("Digit");
    }
    return 0;
}
