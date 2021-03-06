#include <hls_stream.h>
#include <hls_video.h>
#include <ap_int.h>

#define WIDTH 1280
#define HEIGHT 720
#define KERNEL_SIZE 3
#define MAX_BRIGHTNESS 255

#define GR(v) ((v)&0x0000FF)
#define GG(v) (((v)&0x00FF00)>>8)
#define GB(v) (((v)&0xFF0000)>>16)
#define SR(v) ((v)&0xFF)
#define SG(v) (((v)&0xFF)<<8)
#define SB(v) (((v)&0xFF)<<16)

typedef ap_uint<24> uint24;
typedef ap_axiu<32,1,1,1> pixel_data_in;
typedef ap_axiu<32,1,1,1> pixel_data_out;

typedef hls::stream<pixel_data_in> pixel_stream_in;
typedef hls::stream<pixel_data_out> pixel_stream_out;

typedef hls::LineBuffer<3, WIDTH, uint8_t> linebuffer;
typedef hls::Window<KERNEL_SIZE,KERNEL_SIZE,uint8_t> window;
typedef hls::Window<KERNEL_SIZE,WIDTH,uint8_t> width_window;


//uint8_t kernelEdge[KERNEL_SIZE*KERNEL_SIZE] = {
//    -1, -1, -1,
//    -1, 8, -1,
//    -1, -1, -1,
//};
//uint8_t kernelImpulse[KERNEL_SIZE*KERNEL_SIZE] = {
//    0, 0, 0,
//    0, 1, 0,
//    0, 0, 0,
//};
uint8_t kernelBlur[KERNEL_SIZE*KERNEL_SIZE] = {
    1, 2, 1,
    2, 4, 2,
    1, 2, 1,
};
uint8_t kernelSobelY[KERNEL_SIZE*KERNEL_SIZE] = {
    1, 2, 1,
    0, 0, 0,
    -1, -2, -1,
};
uint8_t kernelSobelX[KERNEL_SIZE*KERNEL_SIZE] = {
    -1, 0, 1,
    -2, 0, 2,
    -1, 0, 1,
};


void stream( pixel_stream_in &src, pixel_stream_out &dst, uint8_t kernel, uint8_t normalfactor, uint8_t channelselector);
uint8_t pixelSummer(window *window);
void convolution(linebuffer *linebuffer, uint16_t slidefactor,
uint8_t kernel[KERNEL_SIZE*KERNEL_SIZE], window *win, uint8_t normalfactor);
void output(uint8_t channelselector, uint8_t currentPixelValue, pixel_stream_in streamIn, pixel_stream_out streamOut);
void setWin(linebuffer *lb_nms, window *nonMaxSupWin,uint16_t slidefactor);
uint8_t nonMaxSupr(uint8_t curN, window *nmsWin);
uint8_t gaussianBlurring(uint16_t rows, uint16_t cols, window *win);
uint8_t gradient(uint16_t rows, uint16_t cols,window *gxWin, window *gyWin, int8_t *gxcpv, int8_t *gycpv);
uint8_t NMS(uint16_t rows, uint16_t cols, linebuffer *lb_nms, window *nonMaxSupWin, int8_t *gxcpv, int8_t *gycpv );
uint8_t edgeTraceHysteresis(uint16_t rows, uint16_t cols, width_window *tehWWin, uint8_t nonmaxRes);
