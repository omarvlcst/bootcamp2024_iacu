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

