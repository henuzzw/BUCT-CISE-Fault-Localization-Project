#include<stdio.h>

int main()
{
    char ch;
    scanf("%c",&ch);
    if(ch<='Z'&&ch>='A')
    {
        printf("Capital letter");
    }

    if(ch<='z'&&ch>='a')
    {
        printf("Small Letter");
    }

    if(ch>='1'&&ch<='9')
    {
        printf("Digit");
    }

    return 0;
}
