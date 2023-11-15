#include<stdio.h>
struct dragonknowledge
{

    int dragonstrength;
    int dragonbonus;
};

typedef struct dragonknowledge strct;

void sort(int n,strct D[])
{
    int i,j;
    for(j=n; j>1; j--)
    {
        for(i=0; i<n-1; i++)
        {
            if(D[i].dragonstrength>D[i+1].dragonstrength)
            {
                strct temp;

                temp=D[i+1];
                D[i+1]=D[i];
                D[i]=temp;

            }
        }
    }
}
int main(int argc, char *argv[])
{
    int a,n,i;
    scanf("%d %d",&a,&n);
    strct D[n];
    for(i=0; i<n; i++)
    {
        scanf("%d %d",&D[i].dragonstrength,&D[i].dragonbonus);
    }
    sort(n,D);
    for(i=0; i<n; i++)
    {
        if(!(a-D[i].dragonstrength)>0)
        {
            printf("NO\n");
            break;
        }
        else a=a+D[i].dragonbonus;
    }
    if(i==n)printf("YES\n");
return 0;
}
