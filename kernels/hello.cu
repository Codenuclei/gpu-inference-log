#include <cstdio>

__global__ void hello() {
  printf("block %d, thread %d\n", blockIdx.x, threadIdx.x);
}
int main() {
  hello<<<2, 4>>>();
  cudaError_t err = cudaDeviceSynchronize();
  printf("status: %s\n", cudaGetErrorString(err));
  return 0;
}
