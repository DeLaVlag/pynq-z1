
call D:/Program_Files2/Xilinx/Vivado/2017.4/bin/xelab xil_defaultlib.apatb_stream_top glbl -prj stream.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims --initfile "D:/Program_Files2/Xilinx/Vivado/2017.4/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s stream 
call D:/Program_Files2/Xilinx/Vivado/2017.4/bin/xsim --noieeewarnings stream -tclbatch stream.tcl

