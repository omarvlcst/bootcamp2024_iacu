#include <stdio.h>

void hola_y(int y){
	printf("Hola desde C: y = %d. \n", y);
}

/* EN LA TERMINAL:

gcc -fPIC -shared -o ejemplo.so ejemplo.c 

file ejemplo.so
file a.out
ldd a.out

EN EL JUPYTER NOTEBOOK:

@ccall "./ejemplo.so".hola_y(5::Cint)::Cvoid

> Hola desde C: y=5.

*/