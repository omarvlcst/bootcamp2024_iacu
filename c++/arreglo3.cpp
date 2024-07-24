# include <iostream>
# include <cstdlib>

void sumauno(float*, int);
void inicializaa(float*, int);
void imprimeA(float*, int);

int main(int argc, char** argv){
	float array[10];
	inicializaa(array,10); // inicializaa(&array[0], 10);
	sumauno(array,10);
	imprimeA(array,10);
	return EXIT_SUCCESS;
}

void sumauno(float* arreglo, int tam){
	for(int i=0; i<tam; i++){
		*arreglo=*arreglo+1;
		arreglo++;
	}
	return;
}

void inicializaa(float* arreglo, int tam){
	for(int i=0; i<tam; i++){
		*arreglo = 0.0;
		arreglo++;
	}
	return;
}

void imprimeA(float* arreglo, int tam){
	for(int i=0; i<tam; i++){
		std::cout << *arreglo <<' ';
		arreglo++;
	}
	std::cout<<'\n';
	return;
}
