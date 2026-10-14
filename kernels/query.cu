#include <cstdio>
#include <cuda_runtime_api.h>

int main() {
  cudaDeviceProp p;
  cudaGetDeviceProperties(&p, 0);
  printf("name: %s\n", p.name);
  printf("compute cap: %d.%d\n", p.major, p.minor);
  printf("SM count: %d\n", p.multiProcessorCount);
  printf("global mem (MiB): %zu\n ", p.totalGlobalMem >> 20);
  printf("L2 Cache (KiB): %d\n", p.l2CacheSize >> 10);
  printf("smem/SM (Kib): %zu\n", p.sharedMemPerMultiprocessor >> 10);
  printf("regs/SM : %d\n", p.regsPerMultiprocessor);
  printf("bus width (bits): %d\n", p.memoryBusWidth);
  return 0;
}
