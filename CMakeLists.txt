cmake_minimum_required(VERSION 3.25)

project(
    meminfer
    VERSION 0.1.0
    DESCRIPTION "Memory-efficient LLM inference runtime"
    LANGUAGES CXX CUDA
)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_CUDA_STANDARD 20)
set(CMAKE_CUDA_STANDARD_REQUIRED ON)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(meminfer
    src/main.cpp
    src/cuda/hello.cu
)

target_include_directories(meminfer
    PRIVATE
        ${PROJECT_SOURCE_DIR}/include
)

set_target_properties(meminfer PROPERTIES
    CUDA_SEPARABLE_COMPILATION ON
)

target_compile_options(meminfer
    PRIVATE
        $<$<COMPILE_LANGUAGE:CXX>:-Wall -Wextra -Wpedantic>
        $<$<COMPILE_LANGUAGE:CUDA>:-Xcompiler=-Wall,-Wextra,-Wpedantic>
)