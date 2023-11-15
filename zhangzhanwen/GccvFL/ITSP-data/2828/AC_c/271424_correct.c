
#include<stdio.h>

int main()
{
    char C;
    scanf("%c", &C);
    if ('A' <= C &&  C <= 'Z')
    {
        printf("Capital Letter");
    }
    else if ('a' <= C && C <= 'z')
    {
        printf("Small Letter");
    }
    else if ('0' <= C && C <= '9')
    {
        printf("Digit");
    }
    return 0;
}
