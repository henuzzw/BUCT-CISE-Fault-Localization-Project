/*numPass=6, numTotal=6
Verdict:ACCEPTED, Visibility:1, Input:"18", ExpOutput:"3
", Output:"3"
Verdict:ACCEPTED, Visibility:1, Input:"4", ExpOutput:"0
", Output:"0"
Verdict:ACCEPTED, Visibility:1, Input:"24", ExpOutput:"4
", Output:"4"
Verdict:ACCEPTED, Visibility:0, Input:"40", ExpOutput:"5
", Output:"5"
Verdict:ACCEPTED, Visibility:0, Input:"100", ExpOutput:"8
", Output:"8"
Verdict:ACCEPTED, Visibility:0, Input:"70", ExpOutput:"7
", Output:"7"
*/
#include<stdio.h>

int check_prime(int num)
{
    int i;
    for(i=2; i<=(num-1); i++)
    {
        if(num%i==0)
        {

            return 0;

        }

    }
    return 1;
}

int main()
{
    int i,N,count=0;
    scanf("%d",&N);

    for(i=2; i<=(N-2); i++)
    {
        if ((check_prime(i)==1)&&(check_prime(i+2)==1))
        {
            count++;
        }
    }
    printf("%d",count);
    return 0;
}