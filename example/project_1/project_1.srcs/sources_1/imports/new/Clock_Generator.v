`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/08/17 03:34:40
// Design Name: 
// Module Name: Clock_Generator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Clock_Generator(
    input wire FPGA_CLK_in,
    input wire FPGA_CLK40_in,
    input wire reset_in,
    
    output wire CLK40,
    output wire CLK160,
    output wire CLK320,
    output wire locked_out
    );
    

wire locked40;
wire locked160;
wire locked320;


//wire CLK_40;    

wire TTC_CLK;
//assign TTC_CLK = TTC_CLK_out;
//assign CLK_40_VMEWRITE_out = CLK_40;
//assign CLK_40_0_out = CLK_40;

BUFG FPGA_CLK_BUFG ( .I(FPGA_CLK_in), .O(TTC_CLK));
//BUFG FPGA_CLK40_BUFG ( .I(FPGA_CLK40_in), .O(CLK_40));

//assign TTC_CLK_out = CLK_40_0_out;

    
//assign TTC_CLK = TTC_CLK_out;
//assign CLK_40_0_out = CLK_40;

clk_wiz_0 dcm500_to_40(
    .clk_in (TTC_CLK),
    .CLK40 (CLK40),
    .reset (s_axis_areset),
    .locked(locked40)
);    


dcm40_to_160 dcm40_to_160(
    .clk_in (CLK40),
    .clk160 (CLK160),
    .reset (s_axis_areset),
    .locked (locked160)
);

dcm40_to_320 dcm40_to_320(
    .clk_in (CLK40),
    .clk320 (CLK320),
    .reset (s_axis_areset),
    .locked (locked320)
);


    
    assign locked_out = locked40 && locked160 && locked320;

endmodule
