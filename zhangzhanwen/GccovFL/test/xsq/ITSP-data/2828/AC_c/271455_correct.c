
#include<stdio.h>

int main()
{
    char ch;
    scanf("%c", &ch);
    if(ch >= 'a' && ch <= 'z')
    {
        printf("Small Letter");
    }
    else if(ch >= 'A' && ch <= 'Z')
    {
        printf("Capital Letter");
    }
    else if(ch >= '0' && ch <= '9')
    {
        printf("Digit");
    }

    return 0;
}
