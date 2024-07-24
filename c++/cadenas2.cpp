#include <iostream>
#include <cstdlib>

int main(int argc, char** argv){
	char a[]=("hola");
	char b[]=('m','u','n','d','o','\0');
	int i=0;
	while(a[i]!='\0'){
		std::cout<<a[i]+1;
		i++;
	}
	std::cout<<' '<<b <<std::endl; //b<- "mundo"
	return EXIT_SUCCESS;
}
