#include <iostream>
#include <cstdlib>
#include <string>

int main(int argc, char** argv){
	std::string s = "Hola";
	std::cout << s.at(0) << std::endl;
	
	if(s=="Hola") std::cout<<"True"<<std::endl;
	return EXIT_SUCCESS;
}
