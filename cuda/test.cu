#include <stdio.h>

// Ciclo que enumera threads desde el 0 hasta el n-1
__global__ void unkernel(){
    printf("Hola desde el bloque %d thread: %d\n", blockIdx.x, threadIdx.x); //threadIdx.x es un identificador de cada thread
}

int main(void){
    unkernel<<<1,10>>>();
    cudaDeviceSynchronize();
    return 0;
}
