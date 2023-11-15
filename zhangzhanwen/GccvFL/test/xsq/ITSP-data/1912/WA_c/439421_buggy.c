#include<iostream>
#include<cstdio>
using namespace std;
int main()
{
    for(int k = 0 ; k < 4; k++ )
    {
        char tuan;
        cin >> tuan;
        int hangshu = tuan - 'A';
        for(int i = 0; i < hangshu; i++)
        {
            for(int j = 0; j <= i; j++)
            {
                printf("%c", (tuan - j));
            }
            cout << endl;
        }
        cout << endl;
    }
    return 0;
}
