#include<stdio.h>
int main(int argc, char *argv[]) {
  int n,x,y;
  scanf("%d%d%d",&n,&x,&y);
  int ans=n*y/100-x;
  if(n*y%100!=0) ans++;
  if(ans<0) ans=0;
  
  printf("%d\n",ans);
  return 0;
}