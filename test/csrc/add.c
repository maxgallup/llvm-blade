#include <stdio.h>
#include <stdlib.h>
#include <time.h>



int main() {
	srand(time(0));
	int a[5] = {0,1,2,3,4};
	int i = rand() % 5;
	int x = a[i];
	int y = a[x];
	int z = x + y;
	int res = a[z];
	return res;
}

