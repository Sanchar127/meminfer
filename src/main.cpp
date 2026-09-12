#include "meminfer/cuda/hello.hpp"

#include <iostream>

int main() {
    std::cout << "MemInfer starting..." << '\n';

    meminfer::cuda::launch_hello_kernel();

    std::cout << "CUDA kernel executed." << '\n';

    return 0;
}