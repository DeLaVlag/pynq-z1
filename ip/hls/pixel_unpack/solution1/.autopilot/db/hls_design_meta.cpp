#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("in_stream_TDATA", 32, hls_in, 0, "axis", "in_data", 1),
	Port_Property("in_stream_TVALID", 1, hls_in, 0, "axis", "in_vld", 1),
	Port_Property("in_stream_TREADY", 1, hls_out, 2, "axis", "in_acc", 1),
	Port_Property("in_stream_TUSER", 1, hls_in, 1, "axis", "in_data", 1),
	Port_Property("in_stream_TLAST", 1, hls_in, 2, "axis", "in_data", 1),
	Port_Property("out_stream_TDATA", 24, hls_out, 3, "axis", "out_data", 1),
	Port_Property("out_stream_TVALID", 1, hls_out, 5, "axis", "out_vld", 1),
	Port_Property("out_stream_TREADY", 1, hls_in, 5, "axis", "out_acc", 1),
	Port_Property("out_stream_TUSER", 1, hls_out, 4, "axis", "out_data", 1),
	Port_Property("out_stream_TLAST", 1, hls_out, 5, "axis", "out_data", 1),
	Port_Property("s_axi_AXILiteS_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_AWADDR", 5, hls_in, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_ARADDR", 5, hls_in, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("control", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n_control", 1, hls_in, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "pixel_unpack";
