#include<stdio.h>
int main(int argc, char *argv[]){
    int l,p,q;
    scanf("%d%d%d",&l,&p,&q);
    printf("%f",((float)l/(p+q))*p);
    return 0;
}
