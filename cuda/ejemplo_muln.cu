#include <stdio.h>

// PROGRAMA PARA MULTIPLICAR DOS NUMEROS a y b Y REGRESARLOS COMO UN NUMERO c

// El kernel de CUDA
__global__ void muln(float* a, float* b, float* c){
  *c = (*a)*(*b);
}

int main(void){
  float a,b,c;
  float* d_a; float* d_b; float* d_c;

  int tamf = sizeof(float);

  // Reservando memoria en el device para a,b,c,
  cudaMalloc((void **) &d_a, tamf);
  cudaMalloc((void **) &d_b, tamf);
  cudaMalloc((void **) &d_c, tamf);

  a = 2.0;
  b = 5.2;

  // Copiando al device
  cudaMemcpy(d_a, &a, tamf, cudaMemcpyHostToDevice);
  cudaMemcpy(d_b, &b, tamf, cudaMemcpyHostToDevice);

  // Lanzando el kernel
  muln<<<1,1>>>(d_a, d_b, d_c);

  // Recuperando el device
  cudaMemcpy(&c, d_c, tamf, cudaMemcpyDeviceToHost);

  // Limpiando memoria en el device
  cudaFree(d_a); cudaFree(d_b); cudaFree(d_c);

  printf("%f\n",c);
  return 0;
}
