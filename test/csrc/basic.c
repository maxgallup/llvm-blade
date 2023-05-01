


#include <stdio.h>
#include <stdlib.h>
#include <time.h>







int main() {
	srand(time(0));
	int some_number = rand() % 5;
	int some_array[5] = {1,2,3,4,5};
	int x = some_array[some_number];

	return x;
}

