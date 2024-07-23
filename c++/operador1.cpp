/* Compilar con

g++ operador1.cpp -Wall -o operador1.exe

*/

#include <iostream>
int main(void)
{
    // diferentes formas de inicializar variables
    int b = 123;
    int b1(456);
    int b2 = (123);
    std::cout << "La suma es: " << b + b1 << std::endl;
    std::cout << "La resta es: " << b - b1 << std::endl;
    std::cout << "La multiplicacion es: " << b * b1 << std::endl;
    std::cout << "La division es: " << b / b1 << std::endl;
    std::cout << "El modulo es: " << b % b1 << std::endl;

    float c = 123;
    float c1(456);
    float c2 = (-123);

    std::cout << "La suma es: " << c1 + c2 << std::endl;
    std::cout << "La resta es: " << c1 - c2 << std::endl;
    std::cout << "La multiplicacion es: " << c1 * c2 << std::endl;
    std::cout << "La division es: " << c1 / c2 << std::endl;
    // ERROR: EL OPERADOR MODULO SOLO TIENE VALIDEZ CON ENTEROS std::cout << "El modulo es: " << c1 % c2 << std::endl;

    char d1 = 10;
    char d2 = 20;
    char d3 = 33;
    char d4 = 34;
    std::cout << "DATO: " << d3+d4 << std::endl;
    std::cout << "La suma es: " << d1 + d2 << std::endl;
    std::cout << "La resta es: " << d1 - d2 << std::endl;
    std::cout << "La multiplicacion es: " << d1 * d2 << std::endl;
    std::cout << "La division es: " << d1 / d2 << std::endl;
    std::cout << "El modulo es: " << d1 % d2 << std::endl;

    return 0;
}
