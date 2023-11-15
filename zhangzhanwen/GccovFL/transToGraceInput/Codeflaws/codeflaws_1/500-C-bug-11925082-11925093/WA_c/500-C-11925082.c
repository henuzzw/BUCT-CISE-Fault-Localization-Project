#include<stdio.h>

int main(int argc, char *argv[])
{
    int n,m,i,j=1,count=0,k,tmp,temp;
    scanf("%d%d",&n,&m);
    int ara[m+1],c[n+1],d[m+1],a[n+1];
    for(i=1;i<m+1;i++)ara[i]=0;
    for(i=1;i<=n;i++){
        scanf("%d",&a[i]);
    }
    for(i=1;i<=m;i++){
        scanf("%d",&d[i]);
        ara[d[i]]+=1;
        if(ara[d[i]]==1){
            c[j]=d[i];
            j++;
        }
    }
    for(i=2;i<=m;i++){
        temp=c[1];
        if(d[i]==c[1])continue;
        count+=a[c[1]];
        for(k=2;k<j;k++){
            tmp=c[k];
            //c[k-1]=c[k];
            c[k]=temp;
            if(d[i]==tmp){
                c[1]=tmp;
                break;
            }
            temp=tmp;
            count+=a[tmp];
        }
    }
    printf("%d",count);
    return 0;
}
