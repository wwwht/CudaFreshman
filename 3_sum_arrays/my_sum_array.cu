#include <cuda_runtime.h>
#include <stdio.h>
#include "freshman.h"

// cpu matrix sum 2D
void sumMatrix2D_CPU(float* MatA, float* MatB, float* MatC, const int nx, const int ny)
{
    float* A = MatA;
    float* B = MatB;
    float* C = MatC;
    for (int i = 0; i < ny; i++) {
        for (int j = 0; j < nx; j ++) {
            C[j] = A[j] + B[j];
        }
        A+=nx;
        B+=nx;
        C+=nx;
    }
}

// gpu matrix sum 2D
__global__ void sumMatrix2D_GPU (float * MatA,float * MatB,float * MatC,int nx,int ny)
{
    int ix = threadIdx.x + blockDim.x * blockIdx.x;
    int iy = threadIdx.y + blockDim.y * blockIdx.y;
    int idx = ix + iy * ny;
    if (ix < nx && iy < ny) {
        MatC[idx] = MatA[idx] + MatB[idx];
    }
}
//main

int main()
{
    int device = 0;
    initDevice(device);
    int nx = 1<<14;
    int ny = 1<<14;
    int nxy = nx * ny;

    int nBytes = nxy * sizeof(float);

    // Malloc
    float *A_host = (float*)malloc(nBytes);
    float *B_host = (float*)malloc(nBytes);
    float *C_host = (float*)malloc(nBytes);
    float *C_from_gpu = (float*)malloc(nBytes);

    initialData(A_host, nxy);
    initialData(B_host, nxy);

    // cuda Malloc
    float *A_dev = NULL;
    float *B_dev = NULL;
    float *C_dev = NULL;
    CHECK(cudaMalloc((void**)&A_dev,nBytes));
    CHECK(cudaMalloc((void**)&B_dev,nBytes));
    CHECK(cudaMalloc((void**)&C_dev,nBytes));

    CHECK(cudaMemcpy(A_dev, A_host, nBytes, cudaMemcpyHostToDevice));
    CHECK(cudaMemcpy(B_dev, B_host, nBytes, cudaMemcpyHostToDevice));

    int dimx = 32;
    int dimy = 32;

    dim3 block(dimx, dimy);
    dim3 grid((nx-1) / block.x + 1, (ny - 1) / block.y + 1);
    cudaEvent_t start, stop;
    cudaEventCreate(&start);
    cudaEventCreate(&stop);
    cudaEventRecord(start, 0);

    // calculate
    sumMatrix2D_GPU<<<grid, block>>>(A_dev, B_dev, C_dev, nx, ny);
    CHECK(cudaMemcpy(C_from_gpu, C_dev, nBytes, cudaMemcpyDeviceToHost));
    cudaEventRecord(stop,0);
    cudaEventSynchronize(stop);
    float tm;
    cudaEventElapsedTime(&tm,start,stop);
    printf("GPU Execution configuration<<<(%d,%d),(%d,%d)>>> Time elapsed %f ms\n",
        grid.x,grid.y,block.x,block.y,tm);
    
    sumMatrix2D_CPU(A_host, B_host, C_host, nx , ny);
    checkResult(C_host, C_from_gpu, nxy);

    cudaFree(A_dev);
    cudaFree(B_dev);
    cudaFree(C_dev);
    free(A_host);
    free(B_host);
    free(C_host);
    free(C_from_gpu);
    return 0;

}