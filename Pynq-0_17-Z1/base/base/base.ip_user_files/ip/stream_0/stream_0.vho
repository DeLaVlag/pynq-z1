-- (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:stream:1.0
-- IP Revision: 1712230223

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT stream_0
  PORT (
    s_axi_AXILiteS_AWADDR : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_AXILiteS_AWVALID : IN STD_LOGIC;
    s_axi_AXILiteS_AWREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_AXILiteS_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_AXILiteS_WVALID : IN STD_LOGIC;
    s_axi_AXILiteS_WREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_AXILiteS_BVALID : OUT STD_LOGIC;
    s_axi_AXILiteS_BREADY : IN STD_LOGIC;
    s_axi_AXILiteS_ARADDR : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_AXILiteS_ARVALID : IN STD_LOGIC;
    s_axi_AXILiteS_ARREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_AXILiteS_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_AXILiteS_RVALID : OUT STD_LOGIC;
    s_axi_AXILiteS_RREADY : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    src_TVALID : IN STD_LOGIC;
    src_TREADY : OUT STD_LOGIC;
    src_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    src_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    src_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    src_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    src_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    src_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    src_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    dst_TVALID : OUT STD_LOGIC;
    dst_TREADY : IN STD_LOGIC;
    dst_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    dst_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    dst_TKEEP : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    dst_TSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    dst_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    dst_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    dst_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : stream_0
  PORT MAP (
    s_axi_AXILiteS_AWADDR => s_axi_AXILiteS_AWADDR,
    s_axi_AXILiteS_AWVALID => s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_AWREADY => s_axi_AXILiteS_AWREADY,
    s_axi_AXILiteS_WDATA => s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB => s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_WVALID => s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_WREADY => s_axi_AXILiteS_WREADY,
    s_axi_AXILiteS_BRESP => s_axi_AXILiteS_BRESP,
    s_axi_AXILiteS_BVALID => s_axi_AXILiteS_BVALID,
    s_axi_AXILiteS_BREADY => s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_ARADDR => s_axi_AXILiteS_ARADDR,
    s_axi_AXILiteS_ARVALID => s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_ARREADY => s_axi_AXILiteS_ARREADY,
    s_axi_AXILiteS_RDATA => s_axi_AXILiteS_RDATA,
    s_axi_AXILiteS_RRESP => s_axi_AXILiteS_RRESP,
    s_axi_AXILiteS_RVALID => s_axi_AXILiteS_RVALID,
    s_axi_AXILiteS_RREADY => s_axi_AXILiteS_RREADY,
    ap_clk => ap_clk,
    ap_rst_n => ap_rst_n,
    src_TVALID => src_TVALID,
    src_TREADY => src_TREADY,
    src_TDATA => src_TDATA,
    src_TDEST => src_TDEST,
    src_TKEEP => src_TKEEP,
    src_TSTRB => src_TSTRB,
    src_TUSER => src_TUSER,
    src_TLAST => src_TLAST,
    src_TID => src_TID,
    dst_TVALID => dst_TVALID,
    dst_TREADY => dst_TREADY,
    dst_TDATA => dst_TDATA,
    dst_TDEST => dst_TDEST,
    dst_TKEEP => dst_TKEEP,
    dst_TSTRB => dst_TSTRB,
    dst_TUSER => dst_TUSER,
    dst_TLAST => dst_TLAST,
    dst_TID => dst_TID
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file stream_0.vhd when simulating
-- the core, stream_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

