G(x,y){
	return y?G(y,x%y):x;
}

int main(int argc, char *argv[]){
	int a,b,x,y,g,d;
	scanf("%d%d%d%d",&a,&b,&x,&y);
	g=x>y?G(x,y):G(y,x);
	x/=g,y/=g;
	d=(a/=x)<(b/=y)?a:b;
	printf("%d %d\n",x*d,y*d);
	return 0;
}
