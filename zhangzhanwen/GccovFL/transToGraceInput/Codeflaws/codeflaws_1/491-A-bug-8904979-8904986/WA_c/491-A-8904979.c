#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    int A,B,N;
    scanf("%d%d",&A,&B);
    N=A+B+1;
    int i,C,D;
    for(C=B+1;C<=N;C++){
        printf("a%d ",C);
    }
    for(D=B;D>0;D--){
        printf("%d ",D);
    }
    return 0;
}
