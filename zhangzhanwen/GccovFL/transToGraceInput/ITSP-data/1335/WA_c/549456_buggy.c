#include<iostream>
using namespace std;
int main() {
	int n,i=1,m=0;
	cin>>n;
	do {
		if(i>n) i=((i-n)<<1)-1;
		else i<<=1;
		m--;
	} while(i!=1);
	cout<<m<<endl;
	return 0;
}
