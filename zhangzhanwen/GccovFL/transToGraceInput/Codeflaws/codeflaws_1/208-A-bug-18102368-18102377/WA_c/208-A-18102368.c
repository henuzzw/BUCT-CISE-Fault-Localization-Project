#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int main(int argc, char *argv[]){
   int i,j,a;
   char input[201],*tmp;
   fscanf(stdin,"%s",input);
   while(strstr(input,"WUB")){
        tmp=strstr(input,"WUB");
        for(i=0;i<3;i++) *(tmp+i)=32;
    }
    while(input[0]==32) strcpy(input,input+1);
    i=1; a=strlen(input);
    while(input[a-i]==32) i++;
    input[a-(i-1)]='\0';
    for(i=0;i<strlen(input)-1;i++){
        while(input[i]==32 && input[i+1]==32){
            for(j=i;j<strlen(input);j++)
                input[j]=input[j+1];
        }

    }
    printf("%sk",input);
    exit (0);
return 0;
}