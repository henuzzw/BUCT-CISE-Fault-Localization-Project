#include<stdio.h>
  int main(int argc, char *argv[])
{
  int a,b,i,j,k,l,r,q[30],m,s,p,r1;
  scanf("%d%d",&a,&b);
   for(i=a+1;i<100000;i++)
{
  k=0;
s=0;
m=i;
    while(m>0)
{
  r1=m%10;
  if((r1==4)||(r1==7))
{
  q[k]=r1;
k++;
}
   m=m/10;
}
  p=k;
   for(r=k-1;r>=0;r--)
{
   s=10*s+q[r];
}
if(s==b)
break;
else
{
for(l=0;l<k;l++)
q[l]=0;
}
}
printf("%d",i);
return 0;
}
   
