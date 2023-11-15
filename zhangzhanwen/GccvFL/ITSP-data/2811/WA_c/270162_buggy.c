#include<stdio.h>
int main()
{
    float a1,b1,a2,b2,c1,c2;               
    scanf("%f%f%f%f",&a1,&b1,&a2,&b2);     
    if(a1/b1==a2/b2||a1==0&&a2==0||b1==0&&b2==0||a1==0&&b1==0||a2==0&&b2==0)     
    {
        printf("INF");
    }
    else                                  
    {
        c1=((b1-b2)/(a2*b1-a1*b2));          
        c2=((a2-a1)/(a2*b1-a1*b2));           
        printf("(%.3f,%.3f)",c1,c2);        
    }
    return 0;                              
}
