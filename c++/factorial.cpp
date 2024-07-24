#include <iostream>
#include <cstdlib>

unsigned long int factorial(int);

int main(int argc, char** argv){
	std::cout<<factorial(65);
	return EXIT_SUCCESS;
}

unsigned long int factorial(int n){
	if(n<0) exit(EXIT_FAILURE);
	else if(n==0 || n==1) return 1;
	else return n*factorial(n-1);
}
