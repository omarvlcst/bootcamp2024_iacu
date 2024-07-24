# include <iostream>
# include <cstdlib>

int main(int argc, char** argv){
	int arreglo[10];
	int* apArr;
	
	apArr=arreglo; // -> apArr=&arreglo[0];
	for(int i=0; i<10; i++){
		*apArr=0;
		apArr++;
	}
	
	for(int i=0; i<10; i++){
		std::cout << arreglo[i] << ' ';
	 std::cout << std::endl;
		return EXIT_SUCCESS;
	}
}
