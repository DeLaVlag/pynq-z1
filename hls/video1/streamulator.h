#include <stdint.h>
#include <hls_stream.h>
#include <hls_video.h>
#include <hls_opencv.h>
#include <ap_axi_sdata.h>

#define WIDTH 1280
#define HEIGHT 720

#define INPUT_IMG       "D:\\Studie\\RCD\\PYNQ\\PYNQ\\hls\\video1\\imgBig_Lena.bmp"
#define OUTPUT_IMG 		"D:\\Studie\\RCD\\PYNQ\\PYNQ\\hls\\video1\\lbresult.bmp"

//user for full color functinolity
typedef ap_uint<24> uint24;
//for full color
//typedef ap_axiu<24,1,1,1> pixel_data;
//for grayscale
typedef ap_axiu<32,1,1,1> pixel_data;

typedef hls::stream<pixel_data> pixel_stream;

void stream( pixel_stream &src, pixel_stream &dst, uint8_t l, uint8_t c, uint8_t r);

