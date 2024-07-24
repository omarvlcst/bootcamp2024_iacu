#include <iostream>
#include <cstdlib>

int main(int argc, char** argv){
	char a[]="hola\0";
	int i=0;
	while(a[i]!='\0'){
		std::cout<<a[i];
		i++;
	}
	return EXIT_SUCCESS;
}
