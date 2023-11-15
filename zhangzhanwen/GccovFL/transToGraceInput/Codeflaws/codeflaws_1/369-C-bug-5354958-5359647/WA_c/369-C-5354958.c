#include <stdio.h>
int list[3][200200],next[100100],rep[100100],s[100100],son[100100],start[100100],n,len=0;
void swap(int *a,int*b){
int c=*a;
*a=*b;
*b=c;
}
void gui(int a,int b){
int p=a,z=b,c=-1;
for(;z!=p;z+=c)if(c*list[0][p]<list[0][z]*c){
swap(&list[0][p],&list[0][z]);
swap(&list[1][p],&list[1][z]);
swap(&list[2][p],&list[2][z]);
swap(&p,&z);
c*=-1;
}
if(p-1>a)gui(a,p-1);
if(p+1<b)gui(p+1,b);
}
void yar(int a,int b){
                int i;
                for(i=start[a];list[0][i]==list[0][start[a]];i++)if(list[1][i]!=b){
                                                                                   next[list[1][i]]=a;
                                                                                   s[a]++;
                                                                                   rep[list[1][i]]=list[2][i];
                                                                                   yar(list[1][i],a);
                                                                                   }
                return;
                }
void kill(int a){
                 while(s[a]==1){
                                if(rep[a]==1){
                                              s[next[a]]--;
                                              s[a]=s[next[a]];
                                              rep[a]=rep[next[a]];
                                              next[a]=next[next[a]];
                                              }
                                else{
                                     son[len]=a;
                                     len++;
                                     break;
                                     }
                                }
                 return;
                 }
int main(){
           int i;
           scanf("%d",&n);
           for(i=0;i<n-1;i++){
                              scanf("%d%d%d",&list[0][2*i],&list[1][2*i],&list[2][2*i]);
                              list[0][2*i+1]=list[1][2*i];
                              list[1][2*i+1]=list[0][2*i];
                              list[2][2*i+1]=list[2][2*i];
                              }
           gui(0,2*n-3);
           start[1]=0;
           for(i=1;i<2*n-2;i++)if(list[0][i]>list[0][i-1])start[list[0][i]]=i;
           start[n+1]=i;
           for(i=1;i<=n;i++)s[i]=1;
           yar(1,0);s[1]=-1;for(i=2;i<=n;i++)if(start[i]+1==start[i+1])kill(i);
           printf("%d\n",len);
           for(i=0;i<len;i++)printf("%d ",son[i]);
           return 0;
           }
