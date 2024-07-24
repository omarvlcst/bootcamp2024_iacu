#include <iostream>
#include <cstdlib>

int main(void){
	double par1 = 0.1;
	double* pointer;
	
	pointer = &par1;
	
	std::cout << &pointer << std::endl; //Direccion del apuntador
	std::cout << pointer << std::endl; //Contenido del apuntador
	std::cout << *pointer << std::endl;//Contenido de lo que apunta el apuntador
	
	*pointer = *pointer + 2.0;
	
	std::cout << par1 << std::endl;
	std::cout << sizeof(pointer) << std::endl;
	char* test;
	std::cout << sizeof(test) << std::endl;


	return EXIT_SUCCESS;
}
