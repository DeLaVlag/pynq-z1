// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="pixel_unpack,hls_ip_2016_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg400-1,HLS_INPUT_CLOCK=7.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.877000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=239,HLS_SYN_LUT=201}" *)

module pixel_unpack (
        ap_clk,
        ap_rst_n,
        in_stream_TDATA,
        in_stream_TVALID,
        in_stream_TREADY,
        in_stream_TUSER,
        in_stream_TLAST,
        out_stream_TDATA,
        out_stream_TVALID,
        out_stream_TREADY,
        out_stream_TUSER,
        out_stream_TLAST,
        s_axi_AXILiteS_AWVALID,
        s_axi_AXILiteS_AWREADY,
        s_axi_AXILiteS_AWADDR,
        s_axi_AXILiteS_WVALID,
        s_axi_AXILiteS_WREADY,
        s_axi_AXILiteS_WDATA,
        s_axi_AXILiteS_WSTRB,
        s_axi_AXILiteS_ARVALID,
        s_axi_AXILiteS_ARREADY,
        s_axi_AXILiteS_ARADDR,
        s_axi_AXILiteS_RVALID,
        s_axi_AXILiteS_RREADY,
        s_axi_AXILiteS_RDATA,
        s_axi_AXILiteS_RRESP,
        s_axi_AXILiteS_BVALID,
        s_axi_AXILiteS_BREADY,
        s_axi_AXILiteS_BRESP,
        control,
        ap_rst_n_control
);

parameter    ap_ST_st1_fsm_0 = 16'b1;
parameter    ap_ST_st2_fsm_1 = 16'b10;
parameter    ap_ST_st3_fsm_2 = 16'b100;
parameter    ap_ST_st4_fsm_3 = 16'b1000;
parameter    ap_ST_st5_fsm_4 = 16'b10000;
parameter    ap_ST_st6_fsm_5 = 16'b100000;
parameter    ap_ST_st7_fsm_6 = 16'b1000000;
parameter    ap_ST_st8_fsm_7 = 16'b10000000;
parameter    ap_ST_st9_fsm_8 = 16'b100000000;
parameter    ap_ST_st10_fsm_9 = 16'b1000000000;
parameter    ap_ST_st11_fsm_10 = 16'b10000000000;
parameter    ap_ST_pp4_stg0_fsm_11 = 16'b100000000000;
parameter    ap_ST_pp4_stg1_fsm_12 = 16'b1000000000000;
parameter    ap_ST_pp4_stg2_fsm_13 = 16'b10000000000000;
parameter    ap_ST_pp4_stg3_fsm_14 = 16'b100000000000000;
parameter    ap_ST_st18_fsm_15 = 16'b1000000000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_B = 32'b1011;
parameter    ap_const_lv32_C = 32'b1100;
parameter    ap_const_lv32_D = 32'b1101;
parameter    ap_const_lv32_A = 32'b1010;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_E = 32'b1110;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_9 = 32'b1001;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_3 = 32'b11;
parameter    C_S_AXI_AXILITES_DATA_WIDTH = 32;
parameter    ap_const_int64_8 = 8;
parameter    C_S_AXI_AXILITES_ADDR_WIDTH = 5;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv32_18 = 32'b11000;
parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv32_17 = 32'b10111;

parameter C_S_AXI_AXILITES_WSTRB_WIDTH = (C_S_AXI_AXILITES_DATA_WIDTH / ap_const_int64_8);
parameter C_S_AXI_WSTRB_WIDTH = (C_S_AXI_DATA_WIDTH / ap_const_int64_8);

input   ap_clk;
input   ap_rst_n;
input  [31:0] in_stream_TDATA;
input   in_stream_TVALID;
output   in_stream_TREADY;
input  [0:0] in_stream_TUSER;
input  [0:0] in_stream_TLAST;
output  [23:0] out_stream_TDATA;
output   out_stream_TVALID;
input   out_stream_TREADY;
output  [0:0] out_stream_TUSER;
output  [0:0] out_stream_TLAST;
input   s_axi_AXILiteS_AWVALID;
output   s_axi_AXILiteS_AWREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1 : 0] s_axi_AXILiteS_AWADDR;
input   s_axi_AXILiteS_WVALID;
output   s_axi_AXILiteS_WREADY;
input  [C_S_AXI_AXILITES_DATA_WIDTH - 1 : 0] s_axi_AXILiteS_WDATA;
input  [C_S_AXI_AXILITES_WSTRB_WIDTH - 1 : 0] s_axi_AXILiteS_WSTRB;
input   s_axi_AXILiteS_ARVALID;
output   s_axi_AXILiteS_ARREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1 : 0] s_axi_AXILiteS_ARADDR;
output   s_axi_AXILiteS_RVALID;
input   s_axi_AXILiteS_RREADY;
output  [C_S_AXI_AXILITES_DATA_WIDTH - 1 : 0] s_axi_AXILiteS_RDATA;
output  [1:0] s_axi_AXILiteS_RRESP;
output   s_axi_AXILiteS_BVALID;
input   s_axi_AXILiteS_BREADY;
output  [1:0] s_axi_AXILiteS_BRESP;
input   control;
input   ap_rst_n_control;

reg in_stream_TREADY;
reg[23:0] out_stream_TDATA;
reg out_stream_TVALID;
reg[0:0] out_stream_TUSER;
reg[0:0] out_stream_TLAST;

reg    ap_rst_n_inv;
wire   [31:0] mode;
reg   [31:0] mode_0_data_reg;
reg    mode_0_vld_reg;
reg    mode_0_ack_out;
reg    in_stream_TDATA_blk_n;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_pp4_stg0_fsm_11;
reg    ap_sig_66;
reg    ap_reg_ppiten_pp4_it0;
reg    ap_reg_ppiten_pp4_it1;
reg    ap_sig_cseq_ST_pp4_stg1_fsm_12;
reg    ap_sig_78;
reg    ap_sig_cseq_ST_pp4_stg2_fsm_13;
reg    ap_sig_87;
reg    ap_sig_cseq_ST_st11_fsm_10;
reg    ap_sig_96;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_104;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_112;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_120;
reg    out_stream_TDATA_blk_n;
reg    ap_sig_cseq_ST_pp4_stg3_fsm_14;
reg    ap_sig_129;
reg    ap_sig_cseq_ST_st8_fsm_7;
reg    ap_sig_144;
reg    ap_sig_cseq_ST_st9_fsm_8;
reg    ap_sig_152;
reg    ap_sig_cseq_ST_st10_fsm_9;
reg    ap_sig_160;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_169;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_178;
reg    ap_rst_n_control_inv;
reg   [7:0] reg_181;
reg    ap_sig_ioackin_out_stream_TREADY;
wire   [7:0] grp_fu_151_p4;
reg   [7:0] reg_185;
reg   [7:0] reg_189;
reg   [15:0] reg_193;
wire   [0:0] grp_fu_136_p1;
reg   [0:0] last_2_reg_342;
reg   [0:0] last_1_reg_347;
reg   [0:0] last_reg_352;
reg   [0:0] empty_reg_360_1;
reg   [0:0] empty_reg_360_2;
wire   [23:0] tmp_2_fu_264_p1;
reg   [23:0] tmp_2_reg_366;
reg   [0:0] empty_4_reg_371_1;
reg   [0:0] empty_4_reg_371_2;
wire   [15:0] tmp_4_fu_268_p1;
reg   [15:0] tmp_4_reg_377;
wire   [0:0] last_9_2_fu_303_p2;
reg   [0:0] last_9_2_reg_382;
wire   [7:0] tmp_6_fu_309_p1;
reg   [7:0] tmp_6_reg_387;
reg   [23:0] p_Result_3_3_reg_392;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_281;
wire   [31:0] grp_read_fu_96_p2;
wire   [23:0] p_Result_2_fu_201_p3;
wire   [23:0] p_Result_14_1_fu_210_p4;
wire   [23:0] p_Result_8_fu_225_p1;
wire   [23:0] p_Result_8_1_fu_230_p1;
wire   [23:0] p_Result_6_fu_239_p1;
wire   [23:0] p_Result_6_1_fu_244_p1;
wire   [23:0] p_Result_6_2_fu_249_p1;
wire   [23:0] p_Result_6_3_fu_254_p1;
wire   [23:0] tmp_9_fu_259_p1;
wire   [23:0] p_Result_3_1_fu_323_p3;
wire   [23:0] p_Result_3_2_fu_331_p3;
wire   [0:0] has_user_V_2_fu_290_p2;
reg    ap_reg_ioackin_out_stream_TREADY;
wire   [15:0] tmp_12_fu_197_p1;
wire   [15:0] tmp_11_fu_221_p1;
wire   [7:0] tmp_10_fu_235_p1;
wire   [0:0] tmp4_fu_284_p2;
wire   [0:0] tmp5_fu_297_p2;
reg    ap_sig_cseq_ST_st18_fsm_15;
reg    ap_sig_544;
reg   [15:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 mode_0_data_reg = 32'b00000000000000000000000000000000;
#0 mode_0_vld_reg = 1'b0;
#0 ap_CS_fsm = 16'b1;
#0 ap_reg_ppiten_pp4_it0 = 1'b0;
#0 ap_reg_ppiten_pp4_it1 = 1'b0;
#0 ap_reg_ioackin_out_stream_TREADY = 1'b0;
end

pixel_unpack_AXILiteS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_AXILITES_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_AXILITES_DATA_WIDTH ))
pixel_unpack_AXILiteS_s_axi_U(
    .AWVALID(s_axi_AXILiteS_AWVALID),
    .AWREADY(s_axi_AXILiteS_AWREADY),
    .AWADDR(s_axi_AXILiteS_AWADDR),
    .WVALID(s_axi_AXILiteS_WVALID),
    .WREADY(s_axi_AXILiteS_WREADY),
    .WDATA(s_axi_AXILiteS_WDATA),
    .WSTRB(s_axi_AXILiteS_WSTRB),
    .ARVALID(s_axi_AXILiteS_ARVALID),
    .ARREADY(s_axi_AXILiteS_ARREADY),
    .ARADDR(s_axi_AXILiteS_ARADDR),
    .RVALID(s_axi_AXILiteS_RVALID),
    .RREADY(s_axi_AXILiteS_RREADY),
    .RDATA(s_axi_AXILiteS_RDATA),
    .RRESP(s_axi_AXILiteS_RRESP),
    .BVALID(s_axi_AXILiteS_BVALID),
    .BREADY(s_axi_AXILiteS_BREADY),
    .BRESP(s_axi_AXILiteS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .mode(mode),
    .clk(control),
    .rst(ap_rst_n_control_inv)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_reg_ioackin_out_stream_TREADY <= 1'b0;
    end else begin
        if ((((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY))) | ((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & ~((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY))) | ((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY))) | ((1'b1 == ap_sig_cseq_ST_st11_fsm_10) & ~((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY))) | ((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b1 == ap_sig_cseq_ST_pp4_stg2_fsm_13) & ~((1'b1 == ap_reg_ppiten_pp4_it0) & ((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY)))) | ((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~(1'b0 == ap_sig_ioackin_out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & ~(1'b0 == ap_sig_ioackin_out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_st8_fsm_7) & ~(1'b0 == ap_sig_ioackin_out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_st9_fsm_8) & ~(1'b0 == ap_sig_ioackin_out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_st10_fsm_9) & ~(1'b0 == ap_sig_ioackin_out_stream_TREADY)) | ((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b1 == ap_sig_cseq_ST_pp4_stg3_fsm_14) & ~((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b0 == ap_sig_ioackin_out_stream_TREADY))) | ((1'b1 == ap_sig_cseq_ST_pp4_stg0_fsm_11) & (1'b1 == ap_reg_ppiten_pp4_it1) & ~(((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)) | ((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b0 == ap_sig_ioackin_out_stream_TREADY)))) | ((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b1 == ap_sig_cseq_ST_pp4_stg1_fsm_12) & ~(((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)) | ((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b0 == ap_sig_ioackin_out_stream_TREADY)))))) begin
            ap_reg_ioackin_out_stream_TREADY <= 1'b0;
        end else if ((((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(in_stream_TVALID == 1'b0) & (1'b1 == out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & (1'b1 == out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(in_stream_TVALID == 1'b0) & (1'b1 == out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & (1'b1 == out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & ~(in_stream_TVALID == 1'b0) & (1'b1 == out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_st8_fsm_7) & (1'b1 == out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_st9_fsm_8) & (1'b1 == out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_st10_fsm_9) & (1'b1 == out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_st11_fsm_10) & ~(in_stream_TVALID == 1'b0) & (1'b1 == out_stream_TREADY)) | ((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b1 == ap_sig_cseq_ST_pp4_stg2_fsm_13) & ~((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)) & (1'b1 == out_stream_TREADY)) | ((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b1 == ap_sig_cseq_ST_pp4_stg3_fsm_14) & (1'b1 == out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_pp4_stg0_fsm_11) & (1'b1 == ap_reg_ppiten_pp4_it1) & ~((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)) & (1'b1 == out_stream_TREADY)) | ((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b1 == ap_sig_cseq_ST_pp4_stg1_fsm_12) & ~((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)) & (1'b1 == out_stream_TREADY)))) begin
            ap_reg_ioackin_out_stream_TREADY <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_reg_ppiten_pp4_it0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp4_stg3_fsm_14) & ~((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b0 == ap_sig_ioackin_out_stream_TREADY)) & ~(last_9_2_reg_382 == 1'b0))) begin
            ap_reg_ppiten_pp4_it0 <= 1'b0;
        end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (ap_const_lv32_0 == grp_read_fu_96_p2))) begin
            ap_reg_ppiten_pp4_it0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_reg_ppiten_pp4_it1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp4_stg3_fsm_14) & ~((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b0 == ap_sig_ioackin_out_stream_TREADY)))) begin
            ap_reg_ppiten_pp4_it1 <= ap_reg_ppiten_pp4_it0;
        end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (ap_const_lv32_0 == grp_read_fu_96_p2))) begin
            ap_reg_ppiten_pp4_it1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b1 == ap_sig_cseq_ST_pp4_stg1_fsm_12) & ~(((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)) | ((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b0 == ap_sig_ioackin_out_stream_TREADY))))) begin
        empty_4_reg_371_1 <= in_stream_TUSER;
        empty_4_reg_371_2 <= in_stream_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp4_stg0_fsm_11) & (1'b1 == ap_reg_ppiten_pp4_it0) & ~(((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)) | ((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b0 == ap_sig_ioackin_out_stream_TREADY))))) begin
        empty_reg_360_1 <= in_stream_TUSER;
        empty_reg_360_2 <= in_stream_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY)))) begin
        last_1_reg_347 <= in_stream_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY)))) begin
        last_2_reg_342 <= in_stream_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp4_stg2_fsm_13) & ~((1'b1 == ap_reg_ppiten_pp4_it0) & ((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY))))) begin
        last_9_2_reg_382 <= last_9_2_fu_303_p2;
        p_Result_3_3_reg_392 <= {{in_stream_TDATA[ap_const_lv32_1F : ap_const_lv32_8]}};
        tmp_6_reg_387 <= tmp_6_fu_309_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & ~((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY)))) begin
        last_reg_352 <= in_stream_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == 1'b1) & (1'b0 == mode_0_vld_reg)) | ((1'b1 == 1'b1) & (1'b1 == mode_0_vld_reg) & (1'b1 == mode_0_ack_out)))) begin
        mode_0_data_reg <= mode;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY))) | ((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & ~((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY))))) begin
        reg_181 <= {{in_stream_TDATA[ap_const_lv32_F : ap_const_lv32_8]}};
        reg_189 <= {{in_stream_TDATA[ap_const_lv32_17 : ap_const_lv32_10]}};
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY))) | ((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & ~((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY))) | ((1'b1 == ap_sig_cseq_ST_pp4_stg0_fsm_11) & (1'b1 == ap_reg_ppiten_pp4_it0) & ~(((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)) | ((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b0 == ap_sig_ioackin_out_stream_TREADY)))))) begin
        reg_185 <= {{in_stream_TDATA[ap_const_lv32_1F : ap_const_lv32_18]}};
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY))) | ((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b1 == ap_sig_cseq_ST_pp4_stg1_fsm_12) & ~(((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)) | ((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b0 == ap_sig_ioackin_out_stream_TREADY)))))) begin
        reg_193 <= {{in_stream_TDATA[ap_const_lv32_1F : ap_const_lv32_10]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp4_stg0_fsm_11) & ~(((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)) | ((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b0 == ap_sig_ioackin_out_stream_TREADY))))) begin
        tmp_2_reg_366 <= tmp_2_fu_264_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp4_stg1_fsm_12) & ~(((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)) | ((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b0 == ap_sig_ioackin_out_stream_TREADY))))) begin
        tmp_4_reg_377 <= tmp_4_fu_268_p1;
    end
end

always @ (*) begin
    if (ap_sig_66) begin
        ap_sig_cseq_ST_pp4_stg0_fsm_11 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp4_stg0_fsm_11 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_78) begin
        ap_sig_cseq_ST_pp4_stg1_fsm_12 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp4_stg1_fsm_12 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_87) begin
        ap_sig_cseq_ST_pp4_stg2_fsm_13 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp4_stg2_fsm_13 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_129) begin
        ap_sig_cseq_ST_pp4_stg3_fsm_14 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp4_stg3_fsm_14 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_160) begin
        ap_sig_cseq_ST_st10_fsm_9 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st10_fsm_9 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_96) begin
        ap_sig_cseq_ST_st11_fsm_10 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st11_fsm_10 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_544) begin
        ap_sig_cseq_ST_st18_fsm_15 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st18_fsm_15 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_281) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_120) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_178) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_112) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_169) begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_104) begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_144) begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_152) begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_out_stream_TREADY)) begin
        ap_sig_ioackin_out_stream_TREADY = out_stream_TREADY;
    end else begin
        ap_sig_ioackin_out_stream_TREADY = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_pp4_stg0_fsm_11) & (1'b1 == ap_reg_ppiten_pp4_it0)) | ((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b1 == ap_sig_cseq_ST_pp4_stg1_fsm_12)) | ((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b1 == ap_sig_cseq_ST_pp4_stg2_fsm_13)) | (1'b1 == ap_sig_cseq_ST_st11_fsm_10) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6) | (1'b1 == ap_sig_cseq_ST_st5_fsm_4) | (1'b1 == ap_sig_cseq_ST_st3_fsm_2))) begin
        in_stream_TDATA_blk_n = in_stream_TVALID;
    end else begin
        in_stream_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY))) | ((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & ~((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY))) | ((1'b1 == ap_sig_cseq_ST_pp4_stg0_fsm_11) & (1'b1 == ap_reg_ppiten_pp4_it0) & ~(((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)) | ((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b0 == ap_sig_ioackin_out_stream_TREADY)))) | ((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY))) | ((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b1 == ap_sig_cseq_ST_pp4_stg1_fsm_12) & ~(((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)) | ((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b0 == ap_sig_ioackin_out_stream_TREADY)))) | ((1'b1 == ap_sig_cseq_ST_st11_fsm_10) & ~((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY))) | ((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b1 == ap_sig_cseq_ST_pp4_stg2_fsm_13) & ~((1'b1 == ap_reg_ppiten_pp4_it0) & ((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY)))))) begin
        in_stream_TREADY = 1'b1;
    end else begin
        in_stream_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st18_fsm_15)) begin
        mode_0_ack_out = 1'b1;
    end else begin
        mode_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b1 == ap_sig_cseq_ST_pp4_stg1_fsm_12) & ~((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)))) begin
        out_stream_TDATA = p_Result_3_3_reg_392;
    end else if (((1'b1 == ap_sig_cseq_ST_pp4_stg0_fsm_11) & (1'b1 == ap_reg_ppiten_pp4_it1) & ~((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)))) begin
        out_stream_TDATA = p_Result_3_2_fu_331_p3;
    end else if (((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b1 == ap_sig_cseq_ST_pp4_stg3_fsm_14))) begin
        out_stream_TDATA = p_Result_3_1_fu_323_p3;
    end else if (((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b1 == ap_sig_cseq_ST_pp4_stg2_fsm_13) & ~((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)))) begin
        out_stream_TDATA = tmp_2_reg_366;
    end else if (((1'b1 == ap_sig_cseq_ST_st11_fsm_10) & ~(in_stream_TVALID == 1'b0))) begin
        out_stream_TDATA = tmp_9_fu_259_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        out_stream_TDATA = p_Result_6_3_fu_254_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        out_stream_TDATA = p_Result_6_2_fu_249_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        out_stream_TDATA = p_Result_6_1_fu_244_p1;
    end else if (((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & ~(in_stream_TVALID == 1'b0))) begin
        out_stream_TDATA = p_Result_6_fu_239_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        out_stream_TDATA = p_Result_8_1_fu_230_p1;
    end else if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(in_stream_TVALID == 1'b0))) begin
        out_stream_TDATA = p_Result_8_fu_225_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        out_stream_TDATA = p_Result_14_1_fu_210_p4;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(in_stream_TVALID == 1'b0))) begin
        out_stream_TDATA = p_Result_2_fu_201_p3;
    end else begin
        out_stream_TDATA = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b1 == ap_sig_cseq_ST_pp4_stg2_fsm_13)) | (1'b1 == ap_sig_cseq_ST_st11_fsm_10) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6) | (1'b1 == ap_sig_cseq_ST_st5_fsm_4) | (1'b1 == ap_sig_cseq_ST_st3_fsm_2) | ((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b1 == ap_sig_cseq_ST_pp4_stg3_fsm_14)) | ((1'b1 == ap_sig_cseq_ST_pp4_stg0_fsm_11) & (1'b1 == ap_reg_ppiten_pp4_it1)) | ((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b1 == ap_sig_cseq_ST_pp4_stg1_fsm_12)) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7) | (1'b1 == ap_sig_cseq_ST_st9_fsm_8) | (1'b1 == ap_sig_cseq_ST_st10_fsm_9) | (1'b1 == ap_sig_cseq_ST_st6_fsm_5) | (1'b1 == ap_sig_cseq_ST_st4_fsm_3))) begin
        out_stream_TDATA_blk_n = out_stream_TREADY;
    end else begin
        out_stream_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b1 == ap_sig_cseq_ST_pp4_stg1_fsm_12) & ~((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)))) begin
        out_stream_TLAST = last_9_2_reg_382;
    end else if (((1'b1 == ap_sig_cseq_ST_st11_fsm_10) & ~(in_stream_TVALID == 1'b0))) begin
        out_stream_TLAST = in_stream_TLAST;
    end else if ((1'b1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        out_stream_TLAST = last_reg_352;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        out_stream_TLAST = last_1_reg_347;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        out_stream_TLAST = last_2_reg_342;
    end else if ((((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b1 == ap_sig_cseq_ST_pp4_stg3_fsm_14)) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7) | (1'b1 == ap_sig_cseq_ST_st9_fsm_8) | ((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(in_stream_TVALID == 1'b0)) | ((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(in_stream_TVALID == 1'b0)) | ((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & ~(in_stream_TVALID == 1'b0)) | ((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b1 == ap_sig_cseq_ST_pp4_stg2_fsm_13) & ~((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0))) | ((1'b1 == ap_sig_cseq_ST_pp4_stg0_fsm_11) & (1'b1 == ap_reg_ppiten_pp4_it1) & ~((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0))))) begin
        out_stream_TLAST = 1'b0;
    end else begin
        out_stream_TLAST = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b1 == ap_sig_cseq_ST_pp4_stg2_fsm_13) & ~((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)))) begin
        out_stream_TUSER = has_user_V_2_fu_290_p2;
    end else if ((((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b1 == ap_sig_cseq_ST_pp4_stg3_fsm_14)) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7) | (1'b1 == ap_sig_cseq_ST_st9_fsm_8) | (1'b1 == ap_sig_cseq_ST_st10_fsm_9) | (1'b1 == ap_sig_cseq_ST_st6_fsm_5) | (1'b1 == ap_sig_cseq_ST_st4_fsm_3) | ((1'b1 == ap_sig_cseq_ST_pp4_stg0_fsm_11) & (1'b1 == ap_reg_ppiten_pp4_it1) & ~((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0))) | ((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b1 == ap_sig_cseq_ST_pp4_stg1_fsm_12) & ~((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0))))) begin
        out_stream_TUSER = 1'b0;
    end else if ((((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(in_stream_TVALID == 1'b0)) | ((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(in_stream_TVALID == 1'b0)) | ((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & ~(in_stream_TVALID == 1'b0)) | ((1'b1 == ap_sig_cseq_ST_st11_fsm_10) & ~(in_stream_TVALID == 1'b0)))) begin
        out_stream_TUSER = in_stream_TUSER;
    end else begin
        out_stream_TUSER = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(in_stream_TVALID == 1'b0) & (1'b0 == ap_reg_ioackin_out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & (1'b0 == ap_reg_ioackin_out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(in_stream_TVALID == 1'b0) & (1'b0 == ap_reg_ioackin_out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & (1'b0 == ap_reg_ioackin_out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & ~(in_stream_TVALID == 1'b0) & (1'b0 == ap_reg_ioackin_out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_st8_fsm_7) & (1'b0 == ap_reg_ioackin_out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_st9_fsm_8) & (1'b0 == ap_reg_ioackin_out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_st10_fsm_9) & (1'b0 == ap_reg_ioackin_out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_st11_fsm_10) & ~(in_stream_TVALID == 1'b0) & (1'b0 == ap_reg_ioackin_out_stream_TREADY)) | ((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b1 == ap_sig_cseq_ST_pp4_stg2_fsm_13) & ~((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)) & (1'b0 == ap_reg_ioackin_out_stream_TREADY)) | ((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b1 == ap_sig_cseq_ST_pp4_stg3_fsm_14) & (1'b0 == ap_reg_ioackin_out_stream_TREADY)) | ((1'b1 == ap_sig_cseq_ST_pp4_stg0_fsm_11) & (1'b1 == ap_reg_ppiten_pp4_it1) & ~((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)) & (1'b0 == ap_reg_ioackin_out_stream_TREADY)) | ((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b1 == ap_sig_cseq_ST_pp4_stg1_fsm_12) & ~((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)) & (1'b0 == ap_reg_ioackin_out_stream_TREADY)))) begin
        out_stream_TVALID = 1'b1;
    end else begin
        out_stream_TVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        ap_ST_st2_fsm_1 : begin
            if ((~(ap_const_lv32_0 == grp_read_fu_96_p2) & ~(ap_const_lv32_1 == grp_read_fu_96_p2) & ~(ap_const_lv32_2 == grp_read_fu_96_p2) & ~(ap_const_lv32_3 == grp_read_fu_96_p2) & ~(ap_const_lv32_4 == grp_read_fu_96_p2))) begin
                ap_NS_fsm = ap_ST_st18_fsm_15;
            end else if ((ap_const_lv32_0 == grp_read_fu_96_p2)) begin
                ap_NS_fsm = ap_ST_pp4_stg0_fsm_11;
            end else if ((ap_const_lv32_1 == grp_read_fu_96_p2)) begin
                ap_NS_fsm = ap_ST_st11_fsm_10;
            end else if ((ap_const_lv32_2 == grp_read_fu_96_p2)) begin
                ap_NS_fsm = ap_ST_st7_fsm_6;
            end else if ((ap_const_lv32_3 == grp_read_fu_96_p2)) begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if (~((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY))) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st4_fsm_3 : begin
            if ((~(1'b0 == ap_sig_ioackin_out_stream_TREADY) & (last_2_reg_342 == 1'b0))) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else if ((~(1'b0 == ap_sig_ioackin_out_stream_TREADY) & ~(last_2_reg_342 == 1'b0))) begin
                ap_NS_fsm = ap_ST_st18_fsm_15;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        ap_ST_st5_fsm_4 : begin
            if (~((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY))) begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        ap_ST_st6_fsm_5 : begin
            if ((~(1'b0 == ap_sig_ioackin_out_stream_TREADY) & (last_1_reg_347 == 1'b0))) begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end else if ((~(1'b0 == ap_sig_ioackin_out_stream_TREADY) & ~(last_1_reg_347 == 1'b0))) begin
                ap_NS_fsm = ap_ST_st18_fsm_15;
            end else begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end
        end
        ap_ST_st7_fsm_6 : begin
            if (~((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY))) begin
                ap_NS_fsm = ap_ST_st8_fsm_7;
            end else begin
                ap_NS_fsm = ap_ST_st7_fsm_6;
            end
        end
        ap_ST_st8_fsm_7 : begin
            if (~(1'b0 == ap_sig_ioackin_out_stream_TREADY)) begin
                ap_NS_fsm = ap_ST_st9_fsm_8;
            end else begin
                ap_NS_fsm = ap_ST_st8_fsm_7;
            end
        end
        ap_ST_st9_fsm_8 : begin
            if (~(1'b0 == ap_sig_ioackin_out_stream_TREADY)) begin
                ap_NS_fsm = ap_ST_st10_fsm_9;
            end else begin
                ap_NS_fsm = ap_ST_st9_fsm_8;
            end
        end
        ap_ST_st10_fsm_9 : begin
            if ((~(1'b0 == ap_sig_ioackin_out_stream_TREADY) & (last_reg_352 == 1'b0))) begin
                ap_NS_fsm = ap_ST_st7_fsm_6;
            end else if ((~(1'b0 == ap_sig_ioackin_out_stream_TREADY) & ~(last_reg_352 == 1'b0))) begin
                ap_NS_fsm = ap_ST_st18_fsm_15;
            end else begin
                ap_NS_fsm = ap_ST_st10_fsm_9;
            end
        end
        ap_ST_st11_fsm_10 : begin
            if ((~((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY)) & (grp_fu_136_p1 == 1'b0))) begin
                ap_NS_fsm = ap_ST_st11_fsm_10;
            end else if ((~((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY)) & ~(grp_fu_136_p1 == 1'b0))) begin
                ap_NS_fsm = ap_ST_st18_fsm_15;
            end else begin
                ap_NS_fsm = ap_ST_st11_fsm_10;
            end
        end
        ap_ST_pp4_stg0_fsm_11 : begin
            if (~(((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)) | ((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b0 == ap_sig_ioackin_out_stream_TREADY)))) begin
                ap_NS_fsm = ap_ST_pp4_stg1_fsm_12;
            end else begin
                ap_NS_fsm = ap_ST_pp4_stg0_fsm_11;
            end
        end
        ap_ST_pp4_stg1_fsm_12 : begin
            if ((~(((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)) | ((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b0 == ap_sig_ioackin_out_stream_TREADY))) & ~((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b1 == ap_sig_cseq_ST_pp4_stg1_fsm_12) & ~(((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)) | ((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b0 == ap_sig_ioackin_out_stream_TREADY))) & ~(1'b1 == ap_reg_ppiten_pp4_it0)))) begin
                ap_NS_fsm = ap_ST_pp4_stg2_fsm_13;
            end else if (((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b1 == ap_sig_cseq_ST_pp4_stg1_fsm_12) & ~(((1'b1 == ap_reg_ppiten_pp4_it0) & (in_stream_TVALID == 1'b0)) | ((1'b1 == ap_reg_ppiten_pp4_it1) & (1'b0 == ap_sig_ioackin_out_stream_TREADY))) & ~(1'b1 == ap_reg_ppiten_pp4_it0))) begin
                ap_NS_fsm = ap_ST_st18_fsm_15;
            end else begin
                ap_NS_fsm = ap_ST_pp4_stg1_fsm_12;
            end
        end
        ap_ST_pp4_stg2_fsm_13 : begin
            if (~((1'b1 == ap_reg_ppiten_pp4_it0) & ((in_stream_TVALID == 1'b0) | (1'b0 == ap_sig_ioackin_out_stream_TREADY)))) begin
                ap_NS_fsm = ap_ST_pp4_stg3_fsm_14;
            end else begin
                ap_NS_fsm = ap_ST_pp4_stg2_fsm_13;
            end
        end
        ap_ST_pp4_stg3_fsm_14 : begin
            if (~((1'b1 == ap_reg_ppiten_pp4_it0) & (1'b0 == ap_sig_ioackin_out_stream_TREADY))) begin
                ap_NS_fsm = ap_ST_pp4_stg0_fsm_11;
            end else begin
                ap_NS_fsm = ap_ST_pp4_stg3_fsm_14;
            end
        end
        ap_ST_st18_fsm_15 : begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_rst_n_control_inv = ~ap_rst_n_control;
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

always @ (*) begin
    ap_sig_104 = (1'b1 == ap_CS_fsm[ap_const_lv32_6]);
end

always @ (*) begin
    ap_sig_112 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_120 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_129 = (1'b1 == ap_CS_fsm[ap_const_lv32_E]);
end

always @ (*) begin
    ap_sig_144 = (1'b1 == ap_CS_fsm[ap_const_lv32_7]);
end

always @ (*) begin
    ap_sig_152 = (1'b1 == ap_CS_fsm[ap_const_lv32_8]);
end

always @ (*) begin
    ap_sig_160 = (1'b1 == ap_CS_fsm[ap_const_lv32_9]);
end

always @ (*) begin
    ap_sig_169 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

always @ (*) begin
    ap_sig_178 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_281 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_544 = (1'b1 == ap_CS_fsm[ap_const_lv32_F]);
end

always @ (*) begin
    ap_sig_66 = (ap_CS_fsm[ap_const_lv32_B] == 1'b1);
end

always @ (*) begin
    ap_sig_78 = (1'b1 == ap_CS_fsm[ap_const_lv32_C]);
end

always @ (*) begin
    ap_sig_87 = (1'b1 == ap_CS_fsm[ap_const_lv32_D]);
end

always @ (*) begin
    ap_sig_96 = (1'b1 == ap_CS_fsm[ap_const_lv32_A]);
end

assign grp_fu_136_p1 = in_stream_TLAST;

assign grp_fu_151_p4 = {{in_stream_TDATA[ap_const_lv32_1F : ap_const_lv32_18]}};

assign grp_read_fu_96_p2 = mode_0_data_reg;

assign has_user_V_2_fu_290_p2 = (tmp4_fu_284_p2 | empty_reg_360_1);

assign last_9_2_fu_303_p2 = (tmp5_fu_297_p2 | empty_reg_360_2);

assign p_Result_14_1_fu_210_p4 = {{{reg_185}, {reg_181}}, {reg_189}};

assign p_Result_2_fu_201_p3 = {{grp_fu_151_p4}, {tmp_12_fu_197_p1}};

assign p_Result_3_1_fu_323_p3 = {{tmp_4_reg_377}, {reg_185}};

assign p_Result_3_2_fu_331_p3 = {{tmp_6_reg_387}, {reg_193}};

assign p_Result_6_1_fu_244_p1 = reg_181;

assign p_Result_6_2_fu_249_p1 = reg_189;

assign p_Result_6_3_fu_254_p1 = reg_185;

assign p_Result_6_fu_239_p1 = tmp_10_fu_235_p1;

assign p_Result_8_1_fu_230_p1 = reg_193;

assign p_Result_8_fu_225_p1 = tmp_11_fu_221_p1;

assign tmp4_fu_284_p2 = (empty_4_reg_371_1 | in_stream_TUSER);

assign tmp5_fu_297_p2 = (empty_4_reg_371_2 | in_stream_TLAST);

assign tmp_10_fu_235_p1 = in_stream_TDATA[7:0];

assign tmp_11_fu_221_p1 = in_stream_TDATA[15:0];

assign tmp_12_fu_197_p1 = in_stream_TDATA[15:0];

assign tmp_2_fu_264_p1 = in_stream_TDATA[23:0];

assign tmp_4_fu_268_p1 = in_stream_TDATA[15:0];

assign tmp_6_fu_309_p1 = in_stream_TDATA[7:0];

assign tmp_9_fu_259_p1 = in_stream_TDATA[23:0];

endmodule //pixel_unpack
