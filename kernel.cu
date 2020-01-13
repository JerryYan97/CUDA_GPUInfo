
#include "cuda_runtime.h"
#include "device_launch_parameters.h"

#include <iostream>

int main()
{
	int dev_count;
	cudaGetDeviceCount(&dev_count);
	std::cout << "cuda device number: " << dev_count << std::endl;
	cudaDeviceProp dev_prop;
	for (int i = 0; i < dev_count; i++)
	{
		cudaGetDeviceProperties(&dev_prop, i);
		std::cout << "max threads per block: " << dev_prop.maxThreadsPerBlock << std::endl;
		std::cout << "multi-processor count: " << dev_prop.multiProcessorCount << std::endl;
		std::cout << "clock rate: " << dev_prop.clockRate << std::endl;
	}
    return 0;
}

