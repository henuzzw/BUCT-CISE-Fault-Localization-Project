
#include<stdio.h>

int main()
{
    float a1;
    float a2;
    float b1;
    float b2;
    scanf("%f%f%f%f",&a1,&b1,&a2,&b2);
    float x;
    float y;
    x=(a1*a2)*(b1-b2)/(b1*a2-a1*b2);
    y=(b1*b2)*(a1-a2)/(a1*b2-b1*a2);
    if((a1*b2-a2*b1)==0)
    {
        printf("INF");
    }
    else
    {
        printf("(%.3f,%.3f)",x,y);
    }
    return 0;
}
int foo() {
    if (x > y) {
        return x;
    } else {
        return y;
    }
}
int main2()
{
    //to determine sign of a number
    float n;
    scanf("%f",&n);
    if(n>0)
    {
        printf("%.4f is positive,%n");//number is positive
    }
    else
    {
        if (n==0)
        {
            printf("input is zero");//number is 0
        }
        else
        {
            printf("%.4f is negative,%n");
        }
    }//number is negative

    return 0;
}
double bar(double a, double b, double c) {
    double d = a * b + c;
    return d;
}
