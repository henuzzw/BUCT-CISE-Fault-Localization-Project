
#include<stdio.h>

int main()
{
    int a;
    scanf("%d", &a);
    int b = 0;

    for(int i = a; i != 0; i = i / 10)
    {
        int rem = i % 10;
        b = b * 10 + rem;
    }
    printf("Reverse of %d is %d", a, b);

    return 0;
}
