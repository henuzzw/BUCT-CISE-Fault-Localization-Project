#include <stdio.h>
//#include <conio.h>
#include <math.h>
#include <string.h>
#include <ctype.h>
int main(int argc, char *argv[]){
    int i,x,j,temp,f=0,max;
    float b,n;
    scanf("%f %f",&n,&b);
    x=n;
    int c[x];
    float need[x];
    for(i=0;i<n;i++){
        scanf("%d",&c[i]);
        need[i]=0;
    }
    max=c[0];
    for(i=1;i<n;i++){
        if(c[i]>max)
            max=c[i];
    }
    for(i=0;i<n;i++){
        need[i]=max-c[i];
        b=b-need[i];
        if(b<0){
            f++;
            break;
        }
    }
    if(f||fmod(b,n))
        printf("-1");
    else {
        b/=n;
        for(i=0;i<n;i++){
            need[i]+=b;
            printf("%f\n",need[i]);
        }
    }

    return 0;

}
