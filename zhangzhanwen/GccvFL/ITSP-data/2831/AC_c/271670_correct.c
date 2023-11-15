
#include<stdio.h>

int main()
{
    int num, revnum = 0, temp;
    scanf("%d", &num);
    temp = num;

    do
    {
        revnum = revnum * 10;
        revnum = revnum + temp % 10;
        temp = temp / 10;

    }
    while(temp != 0);
    printf("Reverse of %d is %d", num, revnum);
    return 0;
}
