#include<stdio.h>

int main()
{
    int a,b,c;              
    scanf("%d",&a);
    scanf("%d",&b);        
    scanf("%d",&c);
    if(((a+b)<c)||((b+c)<a)||((a+c)<b)) 
    {
        printf("Invalid Triangle");
    }
    else if(((c*c)==(a*a+b*b))||((b*b)==(a*a+c*c))||((a*a)==(b*b+c*c)))
    {
        printf("Right Triangle");   
    }
    else if(((c*c)>(a*a+b*b))||((b*b)>(a*a+c*c))||((a*a)>(b*b+c*c)))
    {
        printf("Obtuse Triangle");    
    }
    else
    {
        printf("Acute Triangle");    
    }
    return 0;
}
