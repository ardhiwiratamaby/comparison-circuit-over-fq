// This program is an optimized version of matrix multiplication
// By: Nick from CoffeeBeforeArch

#include <cuda_runtime.h>
#include <device_launch_parameters.h>
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <math.h>


__global__ void tiledMatrixMul(int *a, int *b, int *c, int n, int tile_size);

void check_answer(int *a, int *b, int *c, int n);

void init_matrix(int *a, int n);

__global__ void sayHi();

int compare_cuda();
