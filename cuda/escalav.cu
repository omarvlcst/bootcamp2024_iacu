#include <stdio.h>
__global__ void escalav(float* esc, float *vect){
    vect[threadIdx.x] = *esc * vect[threadIdx.x];
} 

int main(void){
  // Datos en el host (la GPU)
  float a[10] = {1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0};
  float esc=4.5;

  int tamv=10;
  int tamd=sizeof(float);

  // Las variables del device (la tarjeta grafica)
  float* d_a;
  float* d_esc;
  //float* d_tamd;

  cudaMalloc((void **) &d_a, tamv*tamd);
  cudaMalloc((void **) &d_esc, tamd);
  //cudaMalloc((void **) tamv);
  cudaMemcpy(d_a, a, tamv*tamd, cudaMemcpyHostToDevice);
  cudaMemcpy(d_esc, &esc, tamd, cudaMemcpyHostToDevice);

  escalav<<<1,10>>>(d_esc, d_a);

  cudaMemcpy(a, d_a, tamv*tamd, cudaMemcpyDeviceToHost);
  cudaFree(d_a), cudaFree(d_esc);

  printf("%f\n", a[0]); //Para imprimir el vector completo con cada entrada, hay que escribir un ciclo FOR que imprima todos
  return 0;
}
