#include<stdio.h>
int main(int argc, char *argv[])
{long long int l,r,t,n,x=0;
scanf("%lld %lld",&r,&l);
n=l;
while(n!=0)
{n=n/10;
x=x*10+9;
}

if(l<=x/2)
printf("%lld",l*(x-l));
else if(l>x/2&&r<x/2)
printf("%lld",x/2*(x-x/2));
else
printf("%lld",r*(x-r));

return 0;
}
