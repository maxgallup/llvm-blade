#include <stdio.h>
#include <stdlib.h>
#include <time.h>



int main(int argc, char **argv) {
	srand(time(0));
	int a[5] = {0,1,2,3,4};
	int i = rand() % 5;
	int x = a[i + argc];
	int y = a[x];
	return y;
}

