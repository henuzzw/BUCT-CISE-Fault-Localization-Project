
#include<stdio.h>

int main()
{
    char x;
    scanf("%c", &x);
    if ((x >= 'A') && (x <= 'Z'))
    {
        printf("Capital Letter");
    }
    else if((x >= 'a') && (x <= 'z'))
    {
        printf("Small Letter");
    }
    else if((x >= 48) && (x <= 57))
    {
        printf("Digit");
    }
    return 0;
}
