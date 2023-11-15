#include<stdio.h>

int main()
{
    int num,wid,hig,a,b;
    scanf("%d %d %d",&num,&wid,&hig);
    for(a=1; a<=hig; a++)
    {
        for(b=1; b<=wid; b++)
        {
            if(a==1||a==hig)
            {
                printf("%d",num);
            }
            else if(b==1||b==wid)
            {
                printf("%d",num);
            }

        }
        printf("\n");
    }
    return 0;
}
