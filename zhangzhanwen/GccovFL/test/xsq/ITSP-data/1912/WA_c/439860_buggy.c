#include<stdio.h>
int main()
{
    char letter = 'A';
    while(scanf("%c", &letter) != EOF)
    {
        int count = letter - 65;
        int index = 0;
        int jndex = 0;
        for(index = 1; index <= count; index++)
        {
            int letterout = letter;
            for(jndex = 1; jndex <= index; jndex++)
            {
                printf("%c", letterout);
                letterout -= 1;
            }
            printf("\n");
            if(index == count)
                printf("\n");
        }
    }
    return 0;
}
