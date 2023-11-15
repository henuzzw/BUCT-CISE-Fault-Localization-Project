#include<stdio.h>
#include<string.h>

int fun(int year)
{
    if((year%4==0&&year%100!=0)||year%400==0)
        return 1;
    return 0;
}
int f1(int year,int month,int day)
{
    int i,sum=0;
    for(i=1;i<month;i++)
    {
        if(i==1||i==3||i==5||i==7||i==8||i==10||i==12)sum+=31;
        else if(i!=2)sum+=30;
        else sum+=28;
    }
    sum+=day;
    if(((year%4==0&&year%100!=0)||(year%400==0))&&month>2)sum+=1;
    return sum;
}
void swap(int *a,int *b)
{
    int temp;
    temp=*a;
    *a=*b;
    *b=temp;
}
int main(int argc, char *argv[])
{
    int year1,month1,day1,sum,year2,month2,day2,i,j,temp;
    while(~scanf("%d:%d:%d",&year1,&month1,&day1))
    {
        scanf("%d:%d:%d",&year2,&month2,&day2);
        if(year1>year2)
        {
            swap(&year1,&year2),swap(&month1,&month2),swap(&day1,&day2);
            printf("%d:%d:%d\n%d:%d:%d\n",year1,month1,day1,year2,month2,day2);
        }
        else if(year1==year2)
        {
            if(month1>month2)swap(&month1,&month2),swap(&day1,&day2);
            else if(month1==month2)
            {
                if(day1>day2)swap(&day1,&day2);
            }
        }
        sum=0;
        for(i=year1;i<year2;i++)
            sum+=fun(i);
        sum+=(year2-year1)*365;
        //printf("%d\n",sum);
        sum-=f1(year1,month1,day1);
        sum+=1;
        //printf("%d\n",sum);
        sum+=f1(year2,month2,day2);
        printf("%d\n",sum-1);
    }
    return 0;
}