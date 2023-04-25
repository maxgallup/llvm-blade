

#include <stdlib.h>


int main(int argc, char** argv) {

	char some_array[5] = {1,2,3,4,5};

	int transient_i = *argv[0];
	
	char x = some_array[transient_i];

	return x;
}

