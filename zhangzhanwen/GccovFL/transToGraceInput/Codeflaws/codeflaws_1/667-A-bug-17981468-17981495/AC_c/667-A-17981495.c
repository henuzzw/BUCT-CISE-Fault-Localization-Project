#include<stdio.h>
int main(int argc, char *argv[])
{
int d,h,v,e;
scanf("%d%d%d%d",&d,&h,&v,&e);

float time;
time = (float)(3.141592653*d*d*h)/(float)(4*v - 3.141592653*d*d*e);
if(time > 10000 || time<0) printf("NO");
else printf("YES\n%f",time);
return 0;
}
