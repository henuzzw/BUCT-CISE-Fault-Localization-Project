
#include<stdio.h>

int main()
{
    char ch = '\0';
    scanf("%c", &ch);
    if(ch >= 'A' && ch <= 'Z')
    {
        printf("Capital Letter");
    }
    else if(ch >= 'a' && ch <= 'z')
    {
        printf("Small Letter");
    }
    else if(ch >= '0' && ch <= '9')
    {
        printf("Digit");
    }
    return 0;
}
