// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:stream:1.0
// IP Revision: 1712220212

(* X_CORE_INFO = "stream,Vivado 2017.3" *)
(* CHECK_LICENSE_TYPE = "system_stream_0_0,stream,{}" *)
(* CORE_GENERATION_INFO = "system_stream_0_0,stream,{x_ipProduct=Vivado 2017.3,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=stream,x_ipVersion=1.0,x_ipCoreRevision=1712220212,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_stream_0_0 (
  ap_clk,
  ap_rst_n,
  src_TVALID,
  src_TREADY,
  src_TDATA,
  src_TDEST,
  src_TKEEP,
  src_TSTRB,
  src_TUSER,
  src_TLAST,
  src_TID,
  dst_TVALID,
  dst_TREADY,
  dst_TDATA,
  dst_TDEST,
  dst_TKEEP,
  dst_TSTRB,
  dst_TUSER,
  dst_TLAST,
  dst_TID
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF src:dst, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 142857132, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 src TVALID" *)
input wire src_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 src TREADY" *)
output wire src_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 src TDATA" *)
input wire [31 : 0] src_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 src TDEST" *)
input wire [0 : 0] src_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 src TKEEP" *)
input wire [3 : 0] src_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 src TSTRB" *)
input wire [3 : 0] src_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 src TUSER" *)
input wire [0 : 0] src_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 src TLAST" *)
input wire [0 : 0] src_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME src, SIGNAL_SET 11111111, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 142857132, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 src TID" *)
input wire [0 : 0] src_TID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dst TVALID" *)
output wire dst_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dst TREADY" *)
input wire dst_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dst TDATA" *)
output wire [31 : 0] dst_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dst TDEST" *)
output wire [0 : 0] dst_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dst TKEEP" *)
output wire [3 : 0] dst_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dst TSTRB" *)
output wire [3 : 0] dst_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dst TUSER" *)
output wire [0 : 0] dst_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dst TLAST" *)
output wire [0 : 0] dst_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dst, SIGNAL_SET 11111111, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 142857132, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dst TID" *)
output wire [0 : 0] dst_TID;

  stream inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .src_TVALID(src_TVALID),
    .src_TREADY(src_TREADY),
    .src_TDATA(src_TDATA),
    .src_TDEST(src_TDEST),
    .src_TKEEP(src_TKEEP),
    .src_TSTRB(src_TSTRB),
    .src_TUSER(src_TUSER),
    .src_TLAST(src_TLAST),
    .src_TID(src_TID),
    .dst_TVALID(dst_TVALID),
    .dst_TREADY(dst_TREADY),
    .dst_TDATA(dst_TDATA),
    .dst_TDEST(dst_TDEST),
    .dst_TKEEP(dst_TKEEP),
    .dst_TSTRB(dst_TSTRB),
    .dst_TUSER(dst_TUSER),
    .dst_TLAST(dst_TLAST),
    .dst_TID(dst_TID)
  );
endmodule
