#include <stdio.h>
 int main(int argc, char *argv[]){
int x,i;
scanf("%d",&x);
char vet[34]={'#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#'};

for(i=0;i<x;i++){
vet[i]='O';
}

printf("+------------------------+\n|%c.%c.%c.%c.%c.%c.%c.%c.%c.%c.%c.|D|)\n|%c.%c.%c.%c.%c.%c.%c.%c.%c.%c.%c.|.|\n|%c.......................|\n|%c.%c.%c.%c.%c.%c.%c.%c.%c.%c.%c.|.|)\n+------------------------+\n",vet[0],vet[4],vet[7],vet[10],vet[13],vet[16],vet[19],vet[22],vet[25],vet[28],vet[31],vet[1],vet[5],vet[8],vet[11],vet[14],vet[17],vet[20],vet[23],vet[26],vet[29],vet[32],vet[2],vet[3],vet[6],vet[9],vet[12],vet[15],vet[18],vet[21],vet[24],vet[27],vet[30],vet[33]);
return 0; 
}
