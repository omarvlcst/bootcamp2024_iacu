/*
Un archivo
*/

#include <iostream>
int main(void)
{
	// En C++ las variables se define un tipo antes de poder usarlas
	bool a = true; // Se define y se inicializa
	char b('a');
	char c = 97;
	int d = 123;
	int e(-123);
	// Pausa para imprimir lo que hay hasta ahora
	std::cout << a << std::endl;
	std::cout << b << std::endl;
	std::cout << c << std::endl;
	std::cout << d << std::endl;
	std::cout << e << std::endl;

	int e2 = 10;  // En decimal
	int e3 = 012; // En formato octal
	int e4(0xA);  // En formato hexadecimal

	std::cout << e2 << std::endl;
	std::cout << e3 << std::endl;
	std::cout << e4 << std::endl;

	// Solo un ejemplo
	unsigned long int e5 = 4294967295;
	std::cout << e5 << std::endl;

	float f(1.4e-5);
	double g = 1.2e43;
	std::cout << f << std::endl;
	std::cout << g << std::endl;

	// Un caso especial

	long double h = 4.5e-103;
	std::cout << h << std::endl;
	return 0;
}
