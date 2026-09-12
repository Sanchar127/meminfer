#include "meminfer/cuda/hello.hpp"

#include <cuda_runtime.h>

namespace meminfer::cuda {

__global__ void hello_kernel() {
}

void launch_hello_kernel() {
    hello_kernel<<<1, 1>>>();
    cudaDeviceSynchronize();
}

}  // namespace meminfer::cuda