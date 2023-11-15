#include<stdio.h>

int main()
{
    float x,y,x1,y1,r,s;
    scanf("%f %f %f %f %f",&x,&y,&r,&x1,&y1);
    s=(x-x1)*(x-x1)+(y-y1)*(y-y1)-r;
    if(s>0)       
    {
        printf("Point is outside the Circle.");
    }
    if(s==0) 
    {
        printf("Point is on the Circle.");
    }
    if(s<0)          
    {
        printf("Point is inside the Circle.");
    }
    return 0;
}
