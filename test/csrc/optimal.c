#include <stdio.h>
#include <stdlib.h>
#include <time.h>



int main() {
	srand(time(0));
	int a[5] = {0,1,2,3,4};
	int i = rand() % 5;
	int y = i + 3;
	int x = i + 4;
	int res = a[y];
	int res2 = a[x];
	return res + res2;
}
