void fun(double*, double*);

int main(void){
	double par1, par2;
	//double salida;
	
	par1 = -1234.1324;
	par2 = 897645.345;
	
	std::cout << "Desde la funcion principal: " << std::endl;
	fun(&par1, &par2);
	std::cout << "Despues de invocar una funcion: " << salida << std::endl;
	std::cout << "Parametros de entrada " << par1 <<' '<< par2 << std::endl;
	return EXIT_SUCCESS;
}

// Definicion
void fun(double* x, double* y){
		*x = *x+3.4;
		*y = *y+1.2;
	std::cout << "Desde la funcion principal: " << std::endl;
	std::cout << "Valores modificados: " << *x << *y << std::endl;
}
