// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Jan 24 19:16:33 2023
// Host        : accel1 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /home/smarumot/alveo_firm/kernel_design/fw_sl2/project_1/project_1.gen/sources_1/ip/dcm40_to_320/dcm40_to_320_stub.v
// Design      : dcm40_to_320
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module dcm40_to_320(clk320, reset, locked, clk_in)
/* synthesis syn_black_box black_box_pad_pin="clk320,reset,locked,clk_in" */;
  output clk320;
  input reset;
  output locked;
  input clk_in;
endmodule
