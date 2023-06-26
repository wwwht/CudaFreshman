#include <cuda.runtime.h>
#include <stdio.h>
// #include "freshman.h"

#define CHECK(op) __check_cuda_runtime((op), #op, __FILE__, __LINE__)

bool __check_cuda_runtime(cudaError_t, coda, const char* op, const char* file, int line) {
    if (code != cudaSuccess) {
        const char* err_name = cudaGetErrorName(code);
        const char* err_message = cudaGetErrorString(code);
        printf("runtime error %s:%d  %s failed. \n  code = %s, message = %s\n", file, line, op, err_name, err_message);
        return false;
    }
    return true;
}

__global__ void warmup(int *g_idata, int *g_odata, unsigned int n) {
    unsigned int tid = threadIdx.x;
    //boundary check
	if (tid >= n) return;
    //convert global data pointer to the 
    int *idata = g_idata + blockIdx.x*blockDim.x;
    // in-place reduction in global memory
    for(int stride = 1; stride < blockDim.x; stride *= 2) {
        if ((tid % (2 * stride)) == 0) {
            idata[tid] += idata[tid + stride];
        }
        __syncthreads();
    }
    if (tid == 0) g_odata[blockIdx.x] = idata[0];
}

__global__ void reduceNeighbored(int *g_idata, int *g_odata, unsigned int n) {
    unsigned int tid = threadIdx.x;
    if (tid >= n) return;
    int *idata = g_idata + blockDim.x * blockIdx.x;
    //in-place reduction in global memory
    for(int stride = 1; stride < blockDim.x; stride *= 2) {
        if ((tid % (2 * stride)) == 0) {
            idata[tid] += idata[tid + stride];
        }
        __syncthreads();
    }
    if (tid == 0) g_odata[blockIdx.x] = idata[0];
}

int main(int arfc, char** argv) {
    initDevice(0);
    
}