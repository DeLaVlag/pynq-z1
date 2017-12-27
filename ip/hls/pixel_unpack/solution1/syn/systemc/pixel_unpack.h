// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _pixel_unpack_HH_
#define _pixel_unpack_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "pixel_unpack_AXILiteS_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_AXILITES_ADDR_WIDTH = 5,
         unsigned int C_S_AXI_AXILITES_DATA_WIDTH = 32>
struct pixel_unpack : public sc_module {
    // Port declarations 31
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_lv<32> > in_stream_TDATA;
    sc_in< sc_logic > in_stream_TVALID;
    sc_out< sc_logic > in_stream_TREADY;
    sc_in< sc_lv<1> > in_stream_TUSER;
    sc_in< sc_lv<1> > in_stream_TLAST;
    sc_out< sc_lv<24> > out_stream_TDATA;
    sc_out< sc_logic > out_stream_TVALID;
    sc_in< sc_logic > out_stream_TREADY;
    sc_out< sc_lv<1> > out_stream_TUSER;
    sc_out< sc_lv<1> > out_stream_TLAST;
    sc_in< sc_logic > s_axi_AXILiteS_AWVALID;
    sc_out< sc_logic > s_axi_AXILiteS_AWREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_AWADDR;
    sc_in< sc_logic > s_axi_AXILiteS_WVALID;
    sc_out< sc_logic > s_axi_AXILiteS_WREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_WDATA;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH/8> > s_axi_AXILiteS_WSTRB;
    sc_in< sc_logic > s_axi_AXILiteS_ARVALID;
    sc_out< sc_logic > s_axi_AXILiteS_ARREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_ARADDR;
    sc_out< sc_logic > s_axi_AXILiteS_RVALID;
    sc_in< sc_logic > s_axi_AXILiteS_RREADY;
    sc_out< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_RDATA;
    sc_out< sc_lv<2> > s_axi_AXILiteS_RRESP;
    sc_out< sc_logic > s_axi_AXILiteS_BVALID;
    sc_in< sc_logic > s_axi_AXILiteS_BREADY;
    sc_out< sc_lv<2> > s_axi_AXILiteS_BRESP;
    sc_in_clk control;
    sc_in< sc_logic > ap_rst_n_control;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    pixel_unpack(sc_module_name name);
    SC_HAS_PROCESS(pixel_unpack);

    ~pixel_unpack();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    pixel_unpack_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>* pixel_unpack_AXILiteS_s_axi_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<32> > mode;
    sc_signal< sc_lv<32> > mode_0_data_reg;
    sc_signal< sc_logic > mode_0_vld_reg;
    sc_signal< sc_logic > mode_0_ack_out;
    sc_signal< sc_logic > in_stream_TDATA_blk_n;
    sc_signal< sc_lv<16> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp4_stg0_fsm_11;
    sc_signal< bool > ap_sig_66;
    sc_signal< sc_logic > ap_reg_ppiten_pp4_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp4_it1;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp4_stg1_fsm_12;
    sc_signal< bool > ap_sig_78;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp4_stg2_fsm_13;
    sc_signal< bool > ap_sig_87;
    sc_signal< sc_logic > ap_sig_cseq_ST_st11_fsm_10;
    sc_signal< bool > ap_sig_96;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_104;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_112;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_120;
    sc_signal< sc_logic > out_stream_TDATA_blk_n;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp4_stg3_fsm_14;
    sc_signal< bool > ap_sig_129;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_144;
    sc_signal< sc_logic > ap_sig_cseq_ST_st9_fsm_8;
    sc_signal< bool > ap_sig_152;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_9;
    sc_signal< bool > ap_sig_160;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_169;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_178;
    sc_signal< sc_logic > ap_rst_n_control_inv;
    sc_signal< sc_lv<8> > reg_181;
    sc_signal< sc_logic > ap_sig_ioackin_out_stream_TREADY;
    sc_signal< sc_lv<8> > grp_fu_151_p4;
    sc_signal< sc_lv<8> > reg_185;
    sc_signal< sc_lv<8> > reg_189;
    sc_signal< sc_lv<16> > reg_193;
    sc_signal< sc_lv<1> > grp_fu_136_p1;
    sc_signal< sc_lv<1> > last_2_reg_342;
    sc_signal< sc_lv<1> > last_1_reg_347;
    sc_signal< sc_lv<1> > last_reg_352;
    sc_signal< sc_lv<1> > empty_reg_360_1;
    sc_signal< sc_lv<1> > empty_reg_360_2;
    sc_signal< sc_lv<24> > tmp_2_fu_264_p1;
    sc_signal< sc_lv<24> > tmp_2_reg_366;
    sc_signal< sc_lv<1> > empty_4_reg_371_1;
    sc_signal< sc_lv<1> > empty_4_reg_371_2;
    sc_signal< sc_lv<16> > tmp_4_fu_268_p1;
    sc_signal< sc_lv<16> > tmp_4_reg_377;
    sc_signal< sc_lv<1> > last_9_2_fu_303_p2;
    sc_signal< sc_lv<1> > last_9_2_reg_382;
    sc_signal< sc_lv<8> > tmp_6_fu_309_p1;
    sc_signal< sc_lv<8> > tmp_6_reg_387;
    sc_signal< sc_lv<24> > p_Result_3_3_reg_392;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_281;
    sc_signal< sc_lv<32> > grp_read_fu_96_p2;
    sc_signal< sc_lv<24> > p_Result_2_fu_201_p3;
    sc_signal< sc_lv<24> > p_Result_14_1_fu_210_p4;
    sc_signal< sc_lv<24> > p_Result_8_fu_225_p1;
    sc_signal< sc_lv<24> > p_Result_8_1_fu_230_p1;
    sc_signal< sc_lv<24> > p_Result_6_fu_239_p1;
    sc_signal< sc_lv<24> > p_Result_6_1_fu_244_p1;
    sc_signal< sc_lv<24> > p_Result_6_2_fu_249_p1;
    sc_signal< sc_lv<24> > p_Result_6_3_fu_254_p1;
    sc_signal< sc_lv<24> > tmp_9_fu_259_p1;
    sc_signal< sc_lv<24> > p_Result_3_1_fu_323_p3;
    sc_signal< sc_lv<24> > p_Result_3_2_fu_331_p3;
    sc_signal< sc_lv<1> > has_user_V_2_fu_290_p2;
    sc_signal< sc_logic > ap_reg_ioackin_out_stream_TREADY;
    sc_signal< sc_lv<16> > tmp_12_fu_197_p1;
    sc_signal< sc_lv<16> > tmp_11_fu_221_p1;
    sc_signal< sc_lv<8> > tmp_10_fu_235_p1;
    sc_signal< sc_lv<1> > tmp4_fu_284_p2;
    sc_signal< sc_lv<1> > tmp5_fu_297_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st18_fsm_15;
    sc_signal< bool > ap_sig_544;
    sc_signal< sc_lv<16> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<16> ap_ST_st1_fsm_0;
    static const sc_lv<16> ap_ST_st2_fsm_1;
    static const sc_lv<16> ap_ST_st3_fsm_2;
    static const sc_lv<16> ap_ST_st4_fsm_3;
    static const sc_lv<16> ap_ST_st5_fsm_4;
    static const sc_lv<16> ap_ST_st6_fsm_5;
    static const sc_lv<16> ap_ST_st7_fsm_6;
    static const sc_lv<16> ap_ST_st8_fsm_7;
    static const sc_lv<16> ap_ST_st9_fsm_8;
    static const sc_lv<16> ap_ST_st10_fsm_9;
    static const sc_lv<16> ap_ST_st11_fsm_10;
    static const sc_lv<16> ap_ST_pp4_stg0_fsm_11;
    static const sc_lv<16> ap_ST_pp4_stg1_fsm_12;
    static const sc_lv<16> ap_ST_pp4_stg2_fsm_13;
    static const sc_lv<16> ap_ST_pp4_stg3_fsm_14;
    static const sc_lv<16> ap_ST_st18_fsm_15;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_3;
    static const int C_S_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_rst_n_control_inv();
    void thread_ap_rst_n_inv();
    void thread_ap_sig_104();
    void thread_ap_sig_112();
    void thread_ap_sig_120();
    void thread_ap_sig_129();
    void thread_ap_sig_144();
    void thread_ap_sig_152();
    void thread_ap_sig_160();
    void thread_ap_sig_169();
    void thread_ap_sig_178();
    void thread_ap_sig_281();
    void thread_ap_sig_544();
    void thread_ap_sig_66();
    void thread_ap_sig_78();
    void thread_ap_sig_87();
    void thread_ap_sig_96();
    void thread_ap_sig_cseq_ST_pp4_stg0_fsm_11();
    void thread_ap_sig_cseq_ST_pp4_stg1_fsm_12();
    void thread_ap_sig_cseq_ST_pp4_stg2_fsm_13();
    void thread_ap_sig_cseq_ST_pp4_stg3_fsm_14();
    void thread_ap_sig_cseq_ST_st10_fsm_9();
    void thread_ap_sig_cseq_ST_st11_fsm_10();
    void thread_ap_sig_cseq_ST_st18_fsm_15();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_ap_sig_cseq_ST_st9_fsm_8();
    void thread_ap_sig_ioackin_out_stream_TREADY();
    void thread_grp_fu_136_p1();
    void thread_grp_fu_151_p4();
    void thread_grp_read_fu_96_p2();
    void thread_has_user_V_2_fu_290_p2();
    void thread_in_stream_TDATA_blk_n();
    void thread_in_stream_TREADY();
    void thread_last_9_2_fu_303_p2();
    void thread_mode_0_ack_out();
    void thread_out_stream_TDATA();
    void thread_out_stream_TDATA_blk_n();
    void thread_out_stream_TLAST();
    void thread_out_stream_TUSER();
    void thread_out_stream_TVALID();
    void thread_p_Result_14_1_fu_210_p4();
    void thread_p_Result_2_fu_201_p3();
    void thread_p_Result_3_1_fu_323_p3();
    void thread_p_Result_3_2_fu_331_p3();
    void thread_p_Result_6_1_fu_244_p1();
    void thread_p_Result_6_2_fu_249_p1();
    void thread_p_Result_6_3_fu_254_p1();
    void thread_p_Result_6_fu_239_p1();
    void thread_p_Result_8_1_fu_230_p1();
    void thread_p_Result_8_fu_225_p1();
    void thread_tmp4_fu_284_p2();
    void thread_tmp5_fu_297_p2();
    void thread_tmp_10_fu_235_p1();
    void thread_tmp_11_fu_221_p1();
    void thread_tmp_12_fu_197_p1();
    void thread_tmp_2_fu_264_p1();
    void thread_tmp_4_fu_268_p1();
    void thread_tmp_6_fu_309_p1();
    void thread_tmp_9_fu_259_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif