
#include<stdio.h>

int main()
{
    char ch;
    scanf("%c", &ch);
    if(97 <= ch && ch <= 122)
    {
        printf("Small Letter");
    }
    if(65 <= ch && ch <= 90)
    {
        printf("Capital Letter");
    }
    if(48 <= ch && ch <= 57)
    {
        printf("Digit");
    }
    return 0;
}
