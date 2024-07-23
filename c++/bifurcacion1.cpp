#include <iostream>

int main(void){
	std::cout << "Escribe dos numeros enteros: ";
	int operando1, operando2;
	std::cin >> operando1 >> operando2 ;
	
	if (operando1 < operando2) std::cout << operando1 << " es menor que " << operando2 << std ::endl;
	return 0;
}
