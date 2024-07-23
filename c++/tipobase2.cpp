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
    std::cout << sizeof(a) << std::endl;
    std::cout << sizeof(b) << std::endl;
    std::cout << sizeof(c) << std::endl;
    std::cout << sizeof(d) << std::endl;
    std::cout << sizeof(e) << std::endl;

    int e2 = 10;  // En decimal
    int e3 = 012; // En formato octal
    int e4(0xA);  // En formato hexadecimal

    std::cout << sizeof(e2) << std::endl;
    std::cout << sizeof(e3) << std::endl;
    std::cout << sizeof(e4) << std::endl;

    // Solo un ejemplo
    unsigned long int e5 = 4294967295;
    std::cout << sizeof(e5) << std::endl;

    float f(1.4e-5);
    double g = 1.2e43;
    std::cout << sizeof(f) << std::endl;
    std::cout << sizeof(g) << std::endl;

    // Un caso especial

    long double h = 4.5e-103;
    std::cout << sizeof(h) << std::endl;
    return 0;
}