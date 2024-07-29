#include <stdio.h>
__global__ void mikernel(){
  printf("Hola desde la GPU\n");
}

int main(void){
  mikernel<<<1,10>>>();
  cudaDeviceSynchronize();
  return 0;
}
