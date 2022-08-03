cmake_minimum_required(VERSION 3.11 FATAL_ERROR)

## Use -std=c++17 as default.
set(CMAKE_CXX_STANDARD 17)
## Disable C++ extensions
set(CMAKE_CXX_EXTENSIONS OFF)
## Require full C++ standard
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_PREFIX_PATH ~/helib_install/helib_pack/share/cmake/helib)

project(comparison_circuit
       	LANGUAGES CUDA CXX)

if(NOT DEFINED CMAKE_CUDA_STANDARD)
    set(CMAKE_CUDA_STANDARD 11)
    set(CMAKE_CUDA_STANDARD_REQUIRED ON)
endif()



include_directories(cuhe)
include_directories(${PROJECT_SOURCE_DIR})

SET(CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cuhe/cmake)

FIND_PACKAGE(NTL REQUIRED)
FIND_PACKAGE(GMP REQUIRED)


# add_library(cuHE STATIC cuhe/CuHE.cu)

include_directories(~/helib_install/helib_pack/include)

add_library(cuHE STATIC
    cuhe/Parameters.cu 
    cuhe/DeviceManager.cu
    cuhe/Base.cu
    cuhe/CuHE.cu
    cuhe/Operations.cu
    cuhe/Relinearization.cu
    cuhe/Utils.cu
    ${NTL_LIBRARY}
)

# target_include_directories(cuHE PUBLIC ~/helib_install/helib_pack/include)

# FIND_LIBRARY(CUHE_LIBRARY NAMES cuHEShared PATHS ${CMAKE_SOURCE_DIR}/cuhe)


add_library(compare_cuda STATIC
compare_cuda.cu
compare_cuda.cuh
)
target_include_directories(compare_cuda PUBLIC ~/helib_install/helib_pack/include)

# include_directories(~/helib_install/helib_pack/lib)



find_package(CUDA  REQUIRED)
include_directories("${CUDA_INCLUDE_DIRS}")

set_target_properties(compare_cuda PROPERTIES
                            CUDA_SEPARABLE_COMPILATION ON)

find_package(helib REQUIRED)
set (CMAKE_CXX_FLAGS "-g")
set(CUDA_NVCC_FLAGS "-G -g")
set(CMAKE_CUDA_FLAGS ${CUDA_NVCC_FLAGS})

add_executable(comparison_circuit comparison_circuit.cpp comparator.cpp tools.cpp)
add_executable(sorting_circuit sorting_circuit.cpp comparator.cpp tools.cpp)
add_executable(min_max_circuit min_max_circuit.cpp comparator.cpp tools.cpp)

target_link_libraries(comparison_circuit compare_cuda cuHE)
target_link_libraries(sorting_circuit compare_cuda cuHE)
target_link_libraries(min_max_circuit compare_cuda cuHE)

target_link_libraries(comparison_circuit helib)
target_link_libraries(sorting_circuit helib)
target_link_libraries(min_max_circuit helib)

