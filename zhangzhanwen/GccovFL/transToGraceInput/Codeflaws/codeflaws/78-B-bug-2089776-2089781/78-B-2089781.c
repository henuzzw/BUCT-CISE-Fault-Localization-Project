#include<stdio.h>
int main(int argc, char *argv[])
{
    int n,x,y;
    scanf("%d",&n);
    char c[]="GYOR";
    printf("VIBGYOR");
    x=n-7;
    for(y=1;y<=x/4;y++)
    printf("%s",c);
    for(y=0;y<(x%4);y++)
    printf("%c",c[y]);
    return(0);
}
