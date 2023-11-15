#include<stdio.h>

int check_prime(int num)
{
    int j,i;
    i=2;
    if(num==2)
    {
        return 1;
    }
    while (i<num)
    {
        j=num%i;
        if(j == 0)
        {
            return 0;    
        }
        i=i+1;
    }
    return 1;

}

int main()
{
    int num,i;
    scanf("%d",&num);
    int chk1,chk2;
    for(i=2; i<num; i++)
    {
        chk1=check_prime(i);           
        chk2=check_prime(num-i);
    }
    if((chk1==1)&&(chk2==1))
    {
        printf("Yes");   
    }
    else
    {
        printf("No");   
    }
    return 0;
}
