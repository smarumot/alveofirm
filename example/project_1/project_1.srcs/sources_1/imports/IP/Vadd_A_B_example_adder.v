// This is a generated file. Use and modify at your own risk.
////////////////////////////////////////////////////////////////////////////////
// Description: Pipelined adder.  This is an adder with pipelines before and
//   after the adder datapath.  The output is fed into a FIFO and prog_full is
//   used to signal ready.  This design allows for high Fmax.

// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1ps / 1ps

module Vadd_A_B_adder #(
  parameter integer C_AXIS_TDATA_WIDTH = 512, // Data width of both input and output data
  parameter integer C_ADDER_BIT_WIDTH  = 32,
  parameter integer C_NUM_CLOCKS       = 1
)
(

   input wire  [C_ADDER_BIT_WIDTH-1:0]   ctrl_constant,
   //input wire aclk40,

  input wire                             s_axis_aclk,
  input wire                             s_axis_areset,
  input wire                             s_axis_tvalid,
  output wire                            s_axis_tready,
  input wire  [C_AXIS_TDATA_WIDTH-1:0]   s_axis_tdata,
  input wire  [C_AXIS_TDATA_WIDTH/8-1:0] s_axis_tkeep,
  input wire                             s_axis_tlast,

  input wire                             s_A_axis_tvalid,
  output wire                            s_A_axis_tready,
  input wire  [C_AXIS_TDATA_WIDTH-1:0]   s_A_axis_tdata,
  input wire  [C_AXIS_TDATA_WIDTH/8-1:0] s_A_axis_tkeep,
  input wire                             s_A_axis_tlast,


  input wire                             m_axis_aclk,
  output wire                            m_axis_tvalid,
  input  wire                            m_axis_tready,
  output wire [C_AXIS_TDATA_WIDTH-1:0]   m_axis_tdata,
  output wire [C_AXIS_TDATA_WIDTH/8-1:0] m_axis_tkeep,
  output wire                            m_axis_tlast

);

//localparam integer LP_NUM_LOOPS = C_AXIS_TDATA_WIDTH/C_ADDER_BIT_WIDTH;
/////////////////////////////////////////////////////////////////////////////
// Variables
/////////////////////////////////////////////////////////////////////////////
integer i;
reg   [C_ADDER_BIT_WIDTH-1:0]  constant_in;
//reg   [C_AXIS_TDATA_WIDTH-1:0] data_out;
//reg                            areset = 1'b0;
wire data_valid;
wire ready;

/*
reg reg_ena = 1'b0;
reg reg_enb = 1'b0;
wire ena;
wire wea = 1'b1;
wire enb;
wire web = 1'b0;
reg [4:0] reg_dina;
wire [4:0] dina, douta,doutb;
//reg reg_clka = 1'b0;
//reg reg_clkb = 1'b0;
//wire clkb=1'b0;
//wire clka = 1'b1;
//wire [4:0] dina;
//reg [4:0] reg_dina = 5'b0;
reg [8:0] reg_addra_1 = 9'b0,reg_addrb_1 = 9'b0;
reg [4:0] reg_addra_2 = 5'b0,reg_addrb_2 = 5'b0;
reg [31:0] regA=32'b0; 
wire [13:0] addra,addrb;
*/
//reg signed [4:0] test=-12; 
/////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////
// Adder Logic
/////////////////////////////////////////////////////////////////////////
/*
always @(s_axis_tdata) begin
    if(s_A_axis_tdata < 0) begin
    reg_dina={1'b1, s_A_axis_tdata[3:0]};
    end
    else begin
    reg_dina = s_A_axis_tdata[4:0];
    end
    if(s_axis_areset == 1) begin
    end
    if(regA == 32'b0) begin
        reg_ena <= 1'b1;
        reg_enb <= 1'b1;
        end  
        else if(regA < 12'b111010001000) begin
        //reg_clka = ~reg_clka;
        reg_addra_1 <= reg_addra_1 + 1'b1;
        if(reg_addra_1 == 9'b111010001) begin
            reg_addra_1 <= 9'b0;
            reg_addra_2 <= reg_addra_2 + 5'b1;
            end
        //reg_dina = reg_dina+5'b1;
        end
        else if (regA == 12'b111010001000) begin
        //reg_clka <= 1'b0;
        reg_ena <= 1'b0;
        reg_enb <= 1'b1;
        end
        else if((regA >12'b111010001000) && (regA < 13'b1110100010000)) begin
        //clkb = ~clkb;
        reg_addrb_1 <= reg_addrb_1 + 1'b1;
        if(reg_addrb_1 == 9'b111010001) begin
            reg_addrb_1 <= 9'b0;
            reg_addrb_2 <= reg_addrb_2 + 5'b1;
            end
        end
        else begin
           reg_enb <= 1'b0;
           end
    regA <= regA + 32'b1;       
    
    end
//assign clkb = reg_clkb;
//assign dina = reg_dina;
assign ena = reg_ena;
assign enb = reg_enb;
assign addra = {reg_addra_2,reg_addra_1};
assign addrb = {reg_addrb_2,reg_addrb_1};
assign dina = reg_dina;
*/

//wire [31:0] w_dina;
//assign w_dina = regA;
/*
wire [6:0] BW_R;
wire [5:0] BW_Phi0;
wire [5:0] BW_Phi1;
wire [5:0] BW_Phi2;
wire [5:0] BW_Phi3;

wire isAside;
wire [7:0] HotROIdef;
   
wire [4:0] LUT_init_data_in;
wire [13:0] LUT_init_Address_in;
wire LUT_init_flg_in;
wire [1:0] LUT_init_mode_in;
   
wire [13:0] LUT_rd_address_in;
wire [3:0] LUT_rd_type_in;
wire LUT_rd_R_in;
wire [1:0] LUt_rd_Phi_in;
wire [4:0] LUT_rd_data_out;
  
reg [9:0] trig_SSC_BW;
*/
//wire signed [31:0] data_out;

wire CLK320;
wire CLK160;
wire CLK40;
wire locked;

Clock_Generator Clock_Generator(
    .FPGA_CLK_in         (s_axis_aclk),
    .FPGA_CLK40_in       (s_axis_aclk),
    .reset_in            (s_axis_areset),
    
//    .TTC_CLK_out         (TTC_CLK),
  //  .CLK_40_VMEWRITE_out (CLK_40_VMEWRITE),
    .CLK40        (CLK40),
    //.CLK_40_1_out        (CLK_40_1),
    //.CLK_40_2_out        (CLK_40_2),
    //.CLK_40_3_out        (CLK_40_3),
    //.CLK_25_out          (CLK_25),
    //.CLK_125_out         (CLK_125),
    .CLK160         (CLK160),
    //.Coin_CLK_160_out    (Coin_CLK_160),
    .CLK320         (CLK320),
    .locked_out          (locked)
);


wire [4:0] LUT_init_data_in;
wire [14:0] LUT_init_Address_in;
wire LUT_init_flag_in;
wire [3:0] LUT_init_type_in;
wire [7:0] LUT_init_RoI_in;
wire [1:0] LUT_init_mode_in;
wire [14:0] LUT_rd_address_in;
wire [3:0] LUT_rd_type_in;
wire [7:0] LUT_rd_RoI_in;
wire [4:0] LUT_rd_data_out;
    

assign s_axis_tdata[4:0] = LUT_init_data_in;
assign s_axis_tdata[19:5] = LUT_init_Address_in;
assign s_axis_tdata[20] = LUT_init_flag_in;
assign s_axis_tdata[24:21] = LUT_init_type_in;
assign s_axis_tdata[32:25] = LUT_init_RoI_in;
assign s_axis_tdata[1:0] = LUT_init_mode_in;
assign s_A_axis_tdata[19:5] = LUT_rd_address_in;
assign s_A_axis_tdata[23:20] = LUT_rd_type_in;
assign s_A_axis_tdata[31:24] = LUT_rd_RoI_in;
assign m_axis_tdata[4:0] = LUT_rd_data_out;
    
/*
wire [4:0] LUT_init_data_in2;
wire [14:0] LUT_init_Address_in2;
wire LUT_init_flag_in2;
wire [3:0] LUT_init_type_in2;
wire [7:0] LUT_init_RoI_in2;
wire [1:0] LUT_init_mode_in2;
wire [14:0] LUT_rd_address_in2;
wire [3:0] LUT_rd_type_in2;
wire [7:0] LUT_rd_RoI_in2;
wire [4:0] LUT_rd_data_out2;
    

assign s_axis_tdata[4:0] = LUT_init_data_in2;
assign s_axis_tdata[19:5] = LUT_init_Address_in2 ;
assign s_axis_tdata[20] = LUT_init_flag_in2;
assign s_axis_tdata[24:21] = LUT_init_type_in2;
assign s_axis_tdata[32:25] = LUT_init_RoI_in2;
assign s_axis_tdata[1:0] = LUT_init_mode_in2 ;
assign s_A_axis_tdata[19:5] = LUT_rd_address_in2;
assign s_A_axis_tdata[23:20] = LUT_rd_type_in2 ;
assign s_A_axis_tdata[31:24] = LUT_rd_RoI_in2 ;
assign m_axis_tdata[36:32] = LUT_rd_data_out2 ;
  */      


Trigger_Processor trigger_sector1(
.CLK_in(CLK40),
.CLK_Q40(CLK40),
.CLK_160(CLK160),
.CLK_320(CLK320),
.reset_in(s_axis_areset),
    
.LUT_init_data_in(LUT_init_data_in),
.LUT_init_Address_in(LUT_init_Address_in),
.LUT_init_flag_in(LUT_init_flag_in),
.LUT_init_type_in(LUT_init_type_in),
.LUT_init_RoI_in(LUT_init_RoI_in),
.LUT_init_mode_in(LUT_init_mode_in),
.LUT_rd_address_in(LUT_rd_address_in),
.LUT_rd_type_in(LUT_rd_type_in),
.LUT_rd_RoI_in(LUT_rd_RoI_in),
.LUT_rd_data_out(LUT_rd_data_out),
    
.BW_R0(7'b0), 
.BW_R1(7'b0), 
.BW_R2(7'b0), 
.BW_R3(7'b0), 
.BW_R4(7'b0), 
.BW_R5(7'b0), 
.BW_R6(7'b0), 
.BW_R7(7'b0), 
.BW_R8(7'b0), 
.BW_R9(7'b0),
.BW_R10(7'b0), 
.BW_R11(7'b0), 
.BW_R12(7'b0), 
.BW_R13(7'b0), 
.BW_R14(7'b0), 
.BW_R15(7'b0), 
.BW_R16(7'b0), 
.BW_R17(7'b0), 
.BW_R18(7'b0),
.BW_Phi0(12'b0), 
.BW_Phi1(12'b0), 
.BW_Phi2(12'b0), 
.BW_Phi3(12'b0),

.isAside(1'b0),
.HotROIdef_SSC0(8'b0),
.HotROIdef_SSC1(8'b0),
.HotROIdef_SSC2(8'b0),
.HotROIdef_SSC3(8'b0),
.HotROIdef_SSC4(8'b0),
.HotROIdef_SSC5(8'b0),
.HotROIdef_SSC6(8'b0),
.HotROIdef_SSC7(8'b0),
.HotROIdef_SSC8(8'b0),
.HotROIdef_SSC9(8'b0),
.HotROIdef_SSC10(8'b0),
.HotROIdef_SSC11(8'b0),
.HotROIdef_SSC12(8'b0),
.HotROIdef_SSC13(8'b0),
.HotROIdef_SSC14(8'b0),
.HotROIdef_SSC15(8'b0),
.HotROIdef_SSC16(8'b0),
.HotROIdef_SSC17(8'b0),
.HotROIdef_SSC18(8'b0),
   
.NSW_0_in(96'b0),
.NSW_1_in(96'b0),
.NSW_2_in(96'b0),
.NSW_3_in(96'b0),
.RPC_in(96'b0),
.EI_0_in(7'b0),
.EI_1_in(7'b0),
.EI_2_in(7'b0),
.Tile_in(12'b0),

.Align_eta0_NSW_in(8'b0),
.Align_eta1_NSW_in(8'b0),
.Align_eta2_NSW_in(8'b0),
.Align_eta3_NSW_in(8'b0),
.Align_eta_RPC_in(6'b0),
.Align_phi0_NSW_in(6'b0),
.Align_phi1_NSW_in(6'b0),
.Align_phi2_NSW_in(6'b0),
.Align_phi3_NSW_in(6'b0),
.Align_phi_RPC_in(6'b0),

.Eta_sub_SSC0(6'b0),
.Eta_sub_SSC1(6'b0),
.Eta_sub_SSC2(6'b0),
.Eta_sub_SSC3(6'b0),
.Eta_sub_SSC4(6'b0),
.Eta_sub_SSC5(8'b0),
.Eta_sub_SSC6(8'b0),
.Eta_sub_SSC7(8'b0),
.Eta_sub_SSC8(8'b0),
.Eta_sub_SSC9(8'b0),
.Eta_sub_SSC10(8'b0),
.Eta_sub_SSC11(8'b0),
.Eta_sub_SSC12(8'b0),
.Eta_sub_SSC13(8'b0),
.Eta_sub_SSC14(8'b0),
.Eta_sub_SSC15(8'b0),
.Eta_sub_SSC16(8'b0),
.Eta_sub_SSC17(8'b0),
.Eta_sub_SSC18(8'b0),
.Phi_sub0_NSW(6'b0),
.Phi_sub1_NSW(6'b0),
.Phi_sub2_NSW(6'b0),
.Phi_sub3_NSW(6'b0),
.Phi_sub0_RPC(6'b0),
.Phi_sub1_RPC(6'b0),
.Phi_sub2_RPC(6'b0),
.Phi_sub3_RPC(6'b0),

.NSW0_data_error(1'b0),
.NSW1_data_error(1'b0),
.NSW2_data_error(1'b0),
.NSW3_data_error(1'b0),
.RPC_data_error(1'b0),
.EI_data_error(1'b0),
.Tile_data_error(1'b0),

.NSWdisableSSC(14'b0),
.EIdisableSSC(5'b0),
.TILEdisableSSC(5'b0),
.RPCdisableSSC(5'b0),    
    
.EIMask_0_in_SSC0(7'b0),
.EIMask_1_in_SSC0(7'b0),
.EIMask_2_in_SSC0(7'b0),
.EIMask_0_in_SSC1(7'b0),
.EIMask_1_in_SSC1(7'b0),
.EIMask_2_in_SSC1(7'b0),
.EIMask_0_in_SSC2(7'b0),
.EIMask_1_in_SSC2(7'b0),
.EIMask_2_in_SSC2(7'b0),
.EIMask_0_in_SSC3(7'b0),
.EIMask_1_in_SSC3(7'b0),
.EIMask_2_in_SSC3(7'b0),
.EIMask_0_in_SSC4(7'b0),
.EIMask_1_in_SSC4(7'b0),
.EIMask_2_in_SSC4(7'b0),
.TileMask0_SSC0(2'b0),
.TileMask1_SSC0(2'b0),
.TileMask2_SSC0(2'b0),
.TileMask3_SSC0(2'b0),
.TileMask0_SSC1(2'b0),
.TileMask1_SSC1(2'b0),
.TileMask2_SSC1(2'b0),
.TileMask3_SSC1(2'b0),
.TileMask0_SSC2(2'b0),
.TileMask1_SSC2(2'b0),
.TileMask2_SSC2(2'b0),
.TileMask3_SSC2(2'b0),
.TileMask0_SSC3(2'b0),
.TileMask1_SSC3(2'b0),
.TileMask2_SSC3(2'b0),
.TileMask3_SSC3(2'b0),
.TileMask0_SSC4(2'b0),
.TileMask1_SSC4(2'b0),
.TileMask2_SSC4(2'b0),
.TileMask3_SSC4(2'b0),
    
.trig_SSC0_BW(10'b0),
.trig_SSC1_BW(10'b0),
.trig_SSC2_BW(10'b0),
.trig_SSC3_BW(10'b0),
.trig_SSC4_BW(10'b0),
.trig_SSC5_BW(10'b0),
.trig_SSC6_BW(10'b0),
.trig_SSC7_BW(10'b0),
.trig_SSC8_BW(10'b0),
.trig_SSC9_BW(10'b0),
.trig_SSC10_BW(10'b0),
.trig_SSC11_BW(10'b0),
.trig_SSC12_BW(10'b0),
.trig_SSC13_BW(10'b0),
.trig_SSC14_BW(10'b0),
.trig_SSC15_BW(10'b0),
.trig_SSC16_BW(10'b0),
.trig_SSC17_BW(10'b0),
.trig_SSC18_BW(10'b0),
    
.Inner_decoded_SSC0(64'b0),
.Inner_decoded_SSC1(64'b0),
.Inner_decoded_SSC2(64'b0),
.Inner_decoded_SSC3(64'b0),
.Inner_decoded_SSC4(64'b0),
.Inner_decoded_SSC5(240'b0),
.Inner_decoded_SSC6(240'b0),
.Inner_decoded_SSC7(240'b0),
.Inner_decoded_SSC8(240'b0),
.Inner_decoded_SSC9(240'b0),
.Inner_decoded_SSC10(240'b0),
.Inner_decoded_SSC11(240'b0),
.Inner_decoded_SSC12(240'b0),
.Inner_decoded_SSC13(240'b0),
.Inner_decoded_SSC14(240'b0),
.Inner_decoded_SSC15(240'b0),
.Inner_decoded_SSC16(240'b0),
.Inner_decoded_SSC17(240'b0),
.Inner_decoded_SSC18(240'b0),
    
.trig_SSC0(15'b0),
.trig_SSC1(15'b0),
.trig_SSC2(15'b0),
.trig_SSC3(15'b0),
.trig_SSC4(15'b0),
.trig_SSC5(15'b0),
.trig_SSC6(15'b0),
.trig_SSC7(15'b0),
.trig_SSC8(15'b0),
.trig_SSC9(15'b0),
.trig_SSC10(15'b0),
.trig_SSC11(15'b0),
.trig_SSC12(15'b0),
.trig_SSC13(15'b0),
.trig_SSC14(15'b0),
.trig_SSC15(15'b0),
.trig_SSC16(15'b0),
.trig_SSC17(15'b0),
.trig_SSC18(15'b0),
    
.valid_SSC0(1'b0),
.valid_SSC1(1'b0),
.valid_SSC2(1'b0),
.valid_SSC3(1'b0),
.valid_SSC4(1'b0),
.valid_SSC5(1'b0),
.valid_SSC6(1'b0),
.valid_SSC7(1'b0),
.valid_SSC8(1'b0),
.valid_SSC9(1'b0),
.valid_SSC10(1'b0),
.valid_SSC11(1'b0),
.valid_SSC12(1'b0),
.valid_SSC13(1'b0),
.valid_SSC14(1'b0),
.valid_SSC15(1'b0),
.valid_SSC16(1'b0),
.valid_SSC17(1'b0),
.valid_SSC18(1'b0)
);


/*
Trigger_Processor trigger_sector2(
.CLK_in(CLK40),
.CLK_Q40(CLK40),
.CLK_160(CLK160),
.CLK_320(CLK320),
.reset_in(s_axis_areset),
    
.LUT_init_data_in(s_axis_tdata[37:33]),
.LUT_init_Address_in(s_axis_tdata[42:38]),
.LUT_init_flag_in(s_axis_tdata[43]),
.LUT_init_type_in(s_axis_tdata[47:44]),
.LUT_init_RoI_in(s_axis_tdata[55:48]),
.LUT_init_mode_in(s_axis_tdata[57:56]),
.LUT_rd_address_in(s_A_axis_tdata[42:38]),
.LUT_rd_type_in(s_A_axis_tdata[46:43]),
.LUT_rd_RoI_in(s_A_axis_tdata[54:47]),
.LUT_rd_data_out(m_axis_tdata[36:32]),
    
.BW_R0(7'b0), 
.BW_R1(7'b0), 
.BW_R2(7'b0), 
.BW_R3(7'b0), 
.BW_R4(7'b0), 
.BW_R5(7'b0), 
.BW_R6(7'b0), 
.BW_R7(7'b0), 
.BW_R8(7'b0), 
.BW_R9(7'b0),
.BW_R10(7'b0), 
.BW_R11(7'b0), 
.BW_R12(7'b0), 
.BW_R13(7'b0), 
.BW_R14(7'b0), 
.BW_R15(7'b0), 
.BW_R16(7'b0), 
.BW_R17(7'b0), 
.BW_R18(7'b0),
.BW_Phi0(12'b0), 
.BW_Phi1(12'b0), 
.BW_Phi2(12'b0), 
.BW_Phi3(12'b0),

.isAside(1'b0),
.HotROIdef_SSC0(8'b0),
.HotROIdef_SSC1(8'b0),
.HotROIdef_SSC2(8'b0),
.HotROIdef_SSC3(8'b0),
.HotROIdef_SSC4(8'b0),
.HotROIdef_SSC5(8'b0),
.HotROIdef_SSC6(8'b0),
.HotROIdef_SSC7(8'b0),
.HotROIdef_SSC8(8'b0),
.HotROIdef_SSC9(8'b0),
.HotROIdef_SSC10(8'b0),
.HotROIdef_SSC11(8'b0),
.HotROIdef_SSC12(8'b0),
.HotROIdef_SSC13(8'b0),
.HotROIdef_SSC14(8'b0),
.HotROIdef_SSC15(8'b0),
.HotROIdef_SSC16(8'b0),
.HotROIdef_SSC17(8'b0),
.HotROIdef_SSC18(8'b0),
   
.NSW_0_in(96'b0),
.NSW_1_in(96'b0),
.NSW_2_in(96'b0),
.NSW_3_in(96'b0),
.RPC_in(96'b0),
.EI_0_in(7'b0),
.EI_1_in(7'b0),
.EI_2_in(7'b0),
.Tile_in(12'b0),

.Align_eta0_NSW_in(8'b0),
.Align_eta1_NSW_in(8'b0),
.Align_eta2_NSW_in(8'b0),
.Align_eta3_NSW_in(8'b0),
.Align_eta_RPC_in(6'b0),
.Align_phi0_NSW_in(6'b0),
.Align_phi1_NSW_in(6'b0),
.Align_phi2_NSW_in(6'b0),
.Align_phi3_NSW_in(6'b0),
.Align_phi_RPC_in(6'b0),

.Eta_sub_SSC0(6'b0),
.Eta_sub_SSC1(6'b0),
.Eta_sub_SSC2(6'b0),
.Eta_sub_SSC3(6'b0),
.Eta_sub_SSC4(6'b0),
.Eta_sub_SSC5(8'b0),
.Eta_sub_SSC6(8'b0),
.Eta_sub_SSC7(8'b0),
.Eta_sub_SSC8(8'b0),
.Eta_sub_SSC9(8'b0),
.Eta_sub_SSC10(8'b0),
.Eta_sub_SSC11(8'b0),
.Eta_sub_SSC12(8'b0),
.Eta_sub_SSC13(8'b0),
.Eta_sub_SSC14(8'b0),
.Eta_sub_SSC15(8'b0),
.Eta_sub_SSC16(8'b0),
.Eta_sub_SSC17(8'b0),
.Eta_sub_SSC18(8'b0),
.Phi_sub0_NSW(6'b0),
.Phi_sub1_NSW(6'b0),
.Phi_sub2_NSW(6'b0),
.Phi_sub3_NSW(6'b0),
.Phi_sub0_RPC(6'b0),
.Phi_sub1_RPC(6'b0),
.Phi_sub2_RPC(6'b0),
.Phi_sub3_RPC(6'b0),

.NSW0_data_error(1'b0),
.NSW1_data_error(1'b0),
.NSW2_data_error(1'b0),
.NSW3_data_error(1'b0),
.RPC_data_error(1'b0),
.EI_data_error(1'b0),
.Tile_data_error(1'b0),

.NSWdisableSSC(14'b0),
.EIdisableSSC(5'b0),
.TILEdisableSSC(5'b0),
.RPCdisableSSC(5'b0),    
    
.EIMask_0_in_SSC0(7'b0),
.EIMask_1_in_SSC0(7'b0),
.EIMask_2_in_SSC0(7'b0),
.EIMask_0_in_SSC1(7'b0),
.EIMask_1_in_SSC1(7'b0),
.EIMask_2_in_SSC1(7'b0),
.EIMask_0_in_SSC2(7'b0),
.EIMask_1_in_SSC2(7'b0),
.EIMask_2_in_SSC2(7'b0),
.EIMask_0_in_SSC3(7'b0),
.EIMask_1_in_SSC3(7'b0),
.EIMask_2_in_SSC3(7'b0),
.EIMask_0_in_SSC4(7'b0),
.EIMask_1_in_SSC4(7'b0),
.EIMask_2_in_SSC4(7'b0),
.TileMask0_SSC0(2'b0),
.TileMask1_SSC0(2'b0),
.TileMask2_SSC0(2'b0),
.TileMask3_SSC0(2'b0),
.TileMask0_SSC1(2'b0),
.TileMask1_SSC1(2'b0),
.TileMask2_SSC1(2'b0),
.TileMask3_SSC1(2'b0),
.TileMask0_SSC2(2'b0),
.TileMask1_SSC2(2'b0),
.TileMask2_SSC2(2'b0),
.TileMask3_SSC2(2'b0),
.TileMask0_SSC3(2'b0),
.TileMask1_SSC3(2'b0),
.TileMask2_SSC3(2'b0),
.TileMask3_SSC3(2'b0),
.TileMask0_SSC4(2'b0),
.TileMask1_SSC4(2'b0),
.TileMask2_SSC4(2'b0),
.TileMask3_SSC4(2'b0),
    
.trig_SSC0_BW(10'b0),
.trig_SSC1_BW(10'b0),
.trig_SSC2_BW(10'b0),
.trig_SSC3_BW(10'b0),
.trig_SSC4_BW(10'b0),
.trig_SSC5_BW(10'b0),
.trig_SSC6_BW(10'b0),
.trig_SSC7_BW(10'b0),
.trig_SSC8_BW(10'b0),
.trig_SSC9_BW(10'b0),
.trig_SSC10_BW(10'b0),
.trig_SSC11_BW(10'b0),
.trig_SSC12_BW(10'b0),
.trig_SSC13_BW(10'b0),
.trig_SSC14_BW(10'b0),
.trig_SSC15_BW(10'b0),
.trig_SSC16_BW(10'b0),
.trig_SSC17_BW(10'b0),
.trig_SSC18_BW(10'b0),
    
.Inner_decoded_SSC0(64'b0),
.Inner_decoded_SSC1(64'b0),
.Inner_decoded_SSC2(64'b0),
.Inner_decoded_SSC3(64'b0),
.Inner_decoded_SSC4(64'b0),
.Inner_decoded_SSC5(240'b0),
.Inner_decoded_SSC6(240'b0),
.Inner_decoded_SSC7(240'b0),
.Inner_decoded_SSC8(240'b0),
.Inner_decoded_SSC9(240'b0),
.Inner_decoded_SSC10(240'b0),
.Inner_decoded_SSC11(240'b0),
.Inner_decoded_SSC12(240'b0),
.Inner_decoded_SSC13(240'b0),
.Inner_decoded_SSC14(240'b0),
.Inner_decoded_SSC15(240'b0),
.Inner_decoded_SSC16(240'b0),
.Inner_decoded_SSC17(240'b0),
.Inner_decoded_SSC18(240'b0),
    
.trig_SSC0(15'b0),
.trig_SSC1(15'b0),
.trig_SSC2(15'b0),
.trig_SSC3(15'b0),
.trig_SSC4(15'b0),
.trig_SSC5(15'b0),
.trig_SSC6(15'b0),
.trig_SSC7(15'b0),
.trig_SSC8(15'b0),
.trig_SSC9(15'b0),
.trig_SSC10(15'b0),
.trig_SSC11(15'b0),
.trig_SSC12(15'b0),
.trig_SSC13(15'b0),
.trig_SSC14(15'b0),
.trig_SSC15(15'b0),
.trig_SSC16(15'b0),
.trig_SSC17(15'b0),
.trig_SSC18(15'b0),
    
.valid_SSC0(1'b0),
.valid_SSC1(1'b0),
.valid_SSC2(1'b0),
.valid_SSC3(1'b0),
.valid_SSC4(1'b0),
.valid_SSC5(1'b0),
.valid_SSC6(1'b0),
.valid_SSC7(1'b0),
.valid_SSC8(1'b0),
.valid_SSC9(1'b0),
.valid_SSC10(1'b0),
.valid_SSC11(1'b0),
.valid_SSC12(1'b0),
.valid_SSC13(1'b0),
.valid_SSC14(1'b0),
.valid_SSC15(1'b0),
.valid_SSC16(1'b0),
.valid_SSC17(1'b0),
.valid_SSC18(1'b0)
);

*/

/*
BRAM brock_memory (
  .clka(s_axis_aclk),    // input wire clka
  .ena(ena),      // input wire ena
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addra),  // input wire [11 : 0] addra
  .dina(dina),
  .douta(douta),    // input wire [63 : 0] dina
  .clkb(s_axis_aclk),    // input wire clkb
  .enb(enb),      // input wire enb
  .web(web),      // input wire [0 : 0] web
  .addrb(addra),  // input wire [13 : 0] addrb
  .dinb(5'b111),    // input wire [4 : 0] dinb
  .doutb(doutb)  // output wire [4 : 0] doutb
);
*/

// Adder function
/*
always @(*) begin
  for (i = 0; i < LP_NUM_LOOPS; i = i + 1) begin
    data_out[i*C_ADDER_BIT_WIDTH+:C_ADDER_BIT_WIDTH] = s_axis_tdata[C_ADDER_BIT_WIDTH*i+:C_ADDER_BIT_WIDTH] - s_A_axis_tdata[C_ADDER_BIT_WIDTH*i+:C_ADDER_BIT_WIDTH];
  end
end
*/
//assign m_axis_tdata[32:0] = s_A_axis_tdata[32:0];
//assign m_axis_tdata = data_out;
//assign m_axis_tdata = $signed({doutb[4],doutb[3:0]});
//assign m_axis_tdata[45:32] = addra;
//assign m_axis_tdata[77:64] = addrb;
//assign m_axis_tdata[127:96] = regA;
//assign m_axis_tdata[132:128] = douta;
//assign m_axis_tdata[164:160] = s_A_axis_tdata[4:0];
assign data_valid = s_axis_tvalid & s_A_axis_tvalid;
assign m_axis_tvalid = data_valid;
assign ready = data_valid &m_axis_tready;
assign s_axis_tready = ready;
assign s_A_axis_tready = ready;
assign m_axis_tkeep = s_axis_tkeep&s_A_axis_tkeep;
assign m_axis_tlast = s_axis_tlast& s_A_axis_tlast;

//marumoto add assign


endmodule

`default_nettype wire

