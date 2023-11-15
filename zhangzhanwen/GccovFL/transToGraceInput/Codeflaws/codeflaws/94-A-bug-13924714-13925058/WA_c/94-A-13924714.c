#include <string.h>
#include <stdio.h>
int restauracion(char cad[100]);
int main(int argc, char *argv[]) {
  char code[100];
  scanf("%s", code);
  return 0;
}
 int restauracion(char cad[100])
 {
  int i,j;
  char nro[10][20];
  for (i = 0; i < 10; i++) {
    scanf("%s", nro[i]);
  }
        for (i = 0; i < 8; i++) {
            for (j = 0; j < 10; j++) {
                if (strncmp(&cad[i*10], nro[j], 10) == 0) {
                printf("%d", j);
                break;
                }
            }
        }
        printf("\n");
return 0;
}
