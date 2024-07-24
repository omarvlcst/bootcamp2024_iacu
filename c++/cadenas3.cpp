#include <iostream>
#include <cstdlib>
#include <string>

int main(int argc, char** argv){
	std::string s = "Hola";
	s = s + " Mundo";
	char c = "!";
	s+=c;
	std::cout << s << std::endl;
	return EXIT_SUCCESS;
}
