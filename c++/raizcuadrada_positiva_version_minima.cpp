/* Programa que calcula la raiz cuadrada de un numero real 
y regresa un numero real*/

#include <iostream>
#include <cstdlib>

float raiz(float x){
	float tol = 0.000001;
	float a = x;
	float b = 1;
	
	if(x>0){
		while((a-b)*(a-b) > tol){
			a=(a+b)/2;
			b=x/a;
		}
	return a;
	}
	return -1.0;
}	

int main(void){
	std::cout << "Ingresa un numero positivo: ";
	float dato;
	std::cin >> dato;
	
	float resultado;
	resultado = raiz(dato);
	if(resultado<0){
		std::cout << "Su raiz es imaginaria\n";
		exit(EXIT_FAILURE);
	} else
		std::cout << resultado << std::endl;
	return EXIT_SUCCESS;
}	
