#include<stdio.h>

int check_prime(int num) 
{
    int N,x; 
    N=num;  
    x=2;     
    for (x=2; x<N;) 
    {
        if ((N%x)!=0) 
        {
            x=x+1;   
        }
        else          
        {
            N=N+1;   
        }
    }
    return x;  

}

int main()  
{

    int A;
    scanf("%d",&A);
    printf("%d",check_prime(A)); 

    return 0;
}
