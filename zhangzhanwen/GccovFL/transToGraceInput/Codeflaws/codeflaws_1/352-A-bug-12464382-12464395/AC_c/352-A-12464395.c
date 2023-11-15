#include<stdio.h>
int main(int argc, char *argv[])
{
    int n,count5,count0,i,t;
    while(scanf("%d",&n)!=EOF)
    {
        count5=0;
        count0=0;
        for(i=0;i<n;i++)
        {
            scanf("%d",&t);
            if(t==5) count5++;
            else count0++;
        }
        if(count0==0)
        {
            printf("-1\n");
            continue;
        }
        if(count5<9||count0<1)
            printf("0\n");
        else
        {
            if(count5>=18)
            {
                for(i=0;i<count5/9;i++)
                    printf("555555555");
                for(i=0;i<count0;i++)
                    printf("0");
            }
            else
            {
                 for(i=0;i<9;i++)
                     printf("5");
                 for(i=0;i<count0;i++)
                     printf("0");
            }
        }
        printf("\n");
    }
    return 0;
}
