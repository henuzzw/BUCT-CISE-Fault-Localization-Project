#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
    while (1){
    long long int num ;
    int counter ;
    scanf("%lld",&num) ;
    if (num%10 >=5 ){
        printf("-O|");
        for ( counter = 0 ; counter < (num % 10) - 5 ; counter ++ ){
            printf("O");
        }
        printf("-");
        for ( ; counter < 4 ; counter ++ ){
            printf("O");
        }
        printf("\n");
    }
    else{
        printf("O-|");
         for ( counter = 0 ; counter < num%10  ; counter ++ ){
            printf("O");
        }
        printf("-");
        for ( ; counter < 4 ; counter ++ ){
            printf("O");
        }
        printf("\n");
    }
    num = num / 10 ;
    while ( num > 0){
        if (num%10 >=5 ){
        printf("-O|");
        for ( counter = 0 ; counter < (num % 10) - 5 ; counter ++ ){
            printf("O");
        }
        printf("-");
        for ( ; counter < 4 ; counter ++ ){
            printf("O");
        }
        printf("\n");
    }
    else{
        printf("O-|");
         for ( counter = 0 ; counter < num%10  ; counter ++ ){
            printf("O");
        }
        printf("-");
        for ( ; counter < 4 ; counter ++ ){
            printf("O") ;
        }
        printf("\n");
    }
    num = num / 10 ;
    }
    }
    return 0;
}
