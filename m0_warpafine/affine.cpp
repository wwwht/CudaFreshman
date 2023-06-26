#include <cuda_runtime.h>
#include <opencv2/opencv.hpp>

using namespace cv;

int main() {
    Mat image = imread("yq.jpg");
    Mat output = warpaffine_to_center_align(image, Size(640, 640));
    imwrite("output.jpg", output);
    printf("Done. save to output.jpg\n");
    return 0;
}