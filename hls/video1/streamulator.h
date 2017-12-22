#include <hls_stream.h>
#include <hls_video.h>
#include <hls_opencv.h>

#define WIDTH 1280
#define HEIGHT 720

#define INPUT_IMG       "D:\\studie\\RCD\\PYNQ\\PYNQ\\hls\\video1\\download.bmp"
#define OUTPUT_IMG 		"D:\\studie\\RCD\\PYNQ\\PYNQ\\hls\\video1\\lbresult.bmp"

typedef ap_axiu<32,1,1,1> pixel_data;
typedef hls::stream<pixel_data> pixel_stream;

void stream( pixel_stream &src, pixel_stream &dst);
