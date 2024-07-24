#include <iostream>
#include <cstdlib>
#include <string>

int main(int argc, char** argv){
	std::string s;
	std::cout << "Ingresa una palabra: ";
	std::getline(std::cin, s);
	
	std::cout<<"Tu palabra es: " << s <<std::endl;
	return EXIT_SUCCESS;
}
