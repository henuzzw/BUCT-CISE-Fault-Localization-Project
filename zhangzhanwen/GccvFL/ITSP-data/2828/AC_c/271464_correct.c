
#include<stdio.h>

int main()
{
    char ch;
    ch = 0;
    scanf("%c", &ch);
    if (ch >= 'A' && ch <= 'Z')
    {
        printf("Capital Letter");
    }
    else if (ch >= 'a' && ch <= 'z')
    {
        printf("Small Letter");
    }
    else
    {
        printf("Digit");
    }

    return 0;
}
