#include <stdio.h>
#include <stdlib.h>
typedef struct{
   int val;
   int index;
}p;
p arr[1001];
int cmp(const void *a,const void *b){
   return (*(p *)a).val-(*(p *)b).val;
}
int main(int argc, char *argv[]){
    int n,c=0,i,chk,sum=0;
    scanf("%d",&n);
    for(i=0;i<n;i++){
            scanf("%d",&arr[i].val);
            sum+=arr[i].val;
       arr[i].index=i+1;
    }
    qsort(arr,n,sizeof(p),cmp);
    chk=sum/n;
    for(i=0;i<n;i++)
        if(arr[i].val!=chk)
          c++;
    if(n==2&&(arr[0].val+arr[1].val)&1)
         printf("Unrecoverable configuration.");
    else if(c==0||n==1)
         printf("Exemplary pages.");
    else if((c==2||(n==2&&!((arr[0].val+arr[1].val)&1)))&&abs(arr[0].val-arr[n-1].val)/2>0)
       printf("%d ml. from cup #%d to cup #%d.",abs(arr[0].val-arr[n-1].val)/2,arr[0].index,arr[n-1].index);
    else
        printf("Unrecoverable configuration.");
   return 0;
}
