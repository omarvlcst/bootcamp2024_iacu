#include <iostream>

int main(void){
	int dato1=89;
	int dato2;
	
	dato1=dato1+34;
	std::cout<<dato1<<std::endl;
	
	dato2=dato1*3;
	std::cout<<dato2<<std::endl;
	
	//int temporal=0;
	int temporal = dato2+dato1;
	std::cout<<temporal<<std::endl;
	{
		char dato1;
		dato1='a';
		std::cout<<dato1<<std::endl;
		//dato1=3.4e10
	}
	std::cout<<dato1<<std::endl;
	
	// Operador incremento
	dato1=0;
	dato1++;
	std::cout<<"OPERADOR INCREMENTO:"<<std::endl;
	std::cout<<dato1<<std::endl;
	std::cout<<++dato1<<std::endl;
	std::cout<<dato1++<<std::endl;
	std::cout<<dato1<<std::endl;
	
	dato1--; //dato1 = dato1-1;
	std::cout<<dato1<<std::endl;
	std::cout<<--dato1<<std::endl;
	
	int datox=3;
		datox=datox<<2; //Desplazamiento de bits a la izquierda
		std::cout<<datox<<std::endl;
		datox=1;
		datox=datox>>1; //Desplazamiento de bits a la derecha
		std::cout<<datox<<std::endl;
	
	return 0;
}
