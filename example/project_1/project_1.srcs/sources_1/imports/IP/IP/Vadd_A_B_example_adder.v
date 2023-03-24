// This is a generated file. Use and modify at your own risk.
////////////////////////////////////////////////////////////////////////////////
// Description: Pipelined adder.  This is an adder with pipelines before and
//   after the adder datapath.  The output is fed into a FIFO and prog_full is
//   used to signal ready.  This design allows for high Fmax.

// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1ps / 1ps

module Vadd_A_B_adder #(
  parameter integer C_AXIS_TDATA_WIDTH = 32, // Data width of both input and output data
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
  input wire signed [C_AXIS_TDATA_WIDTH-1:0]   s_A_axis_tdata,
  input wire  [C_AXIS_TDATA_WIDTH/8-1:0] s_A_axis_tkeep,
  input wire                             s_A_axis_tlast,


  input wire                             m_axis_aclk,
  output wire                            m_axis_tvalid,
  input  wire                            m_axis_tready,
  output wire signed [C_AXIS_TDATA_WIDTH-1:0]   m_axis_tdata,
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
wire signed [31:0] data_out;


Trigger_Processor trigger(
.CLK_in(s_axis_aclk),
.CLK_Q40(s_axis_aclk),
.CLK_160(s_axis_aclk),
.CLK_320(s_axis_aclk),
.reset_in(s_axis_areset),
    
.LUT_init_data_in(),
.LUT_init_Address_in(),
.LUT_init_flag_in(),
.LUT_init_type_in(),
.LUT_init_RoI_in(),
.LUT_init_mode_in(),
.LUT_rd_address_in(),
.LUT_rd_type_in(),
.LUT_rd_RoI_in(),
.LUT_rd_data_out(),
    
.BW_R0(), 
.BW_R1(), 
.BW_R2(), 
.BW_R3(), 
.BW_R4(), 
.BW_R5(), 
.BW_R6(), 
.BW_R7(), 
.BW_R8(), 
.BW_R9(),
.BW_R10(), 
.BW_R11(), 
.BW_R12(), 
.BW_R13(), 
.BW_R14(), 
.BW_R15(), 
.BW_R16(), 
.BW_R17(), 
.BW_R18(),
.BW_Phi0(), 
.BW_Phi1(), 
.BW_Phi2(), 
.BW_Phi3(),

.isAside(),
.HotROIdef_SSC0(),
.HotROIdef_SSC1(),
.HotROIdef_SSC2(),
.HotROIdef_SSC3(),
.HotROIdef_SSC4(),
.HotROIdef_SSC5(),
.HotROIdef_SSC6(),
.HotROIdef_SSC7(),
.HotROIdef_SSC8(),
.HotROIdef_SSC9(),
.HotROIdef_SSC10(),
.HotROIdef_SSC11(),
.HotROIdef_SSC12(),
.HotROIdef_SSC13(),
.HotROIdef_SSC14(),
.HotROIdef_SSC15(),
.HotROIdef_SSC16(),
.HotROIdef_SSC17(),
.HotROIdef_SSC18(),
   
.NSW_0_in(),
.NSW_1_in(),
.NSW_2_in(),
.NSW_3_in(),
.RPC_in(),
.EI_0_in(),
.EI_1_in(),
.EI_2_in(),
.Tile_in(),

.Align_eta0_NSW_in(),
.Align_eta1_NSW_in(),
.Align_eta2_NSW_in(),
.Align_eta3_NSW_in(),
.Align_eta_RPC_in(),
.Align_phi0_NSW_in(),
.Align_phi1_NSW_in(),
.Align_phi2_NSW_in(),
.Align_phi3_NSW_in(),
.Align_phi_RPC_in(),

.Eta_sub_SSC0(),
.Eta_sub_SSC1(),
.Eta_sub_SSC2(),
.Eta_sub_SSC3(),
.Eta_sub_SSC4(),
.Eta_sub_SSC5(),
.Eta_sub_SSC6(),
.Eta_sub_SSC7(),
.Eta_sub_SSC8(),
.Eta_sub_SSC9(),
.Eta_sub_SSC10(),
.Eta_sub_SSC11(),
.Eta_sub_SSC12(),
.Eta_sub_SSC13(),
.Eta_sub_SSC14(),
.Eta_sub_SSC15(),
.Eta_sub_SSC16(),
.Eta_sub_SSC17(),
.Eta_sub_SSC18(),
.Phi_sub0_NSW(),
.Phi_sub1_NSW(),
.Phi_sub2_NSW(),
.Phi_sub3_NSW(),
.Phi_sub0_RPC(),
.Phi_sub1_RPC(),
.Phi_sub2_RPC(),
.Phi_sub3_RPC(),

.NSW0_data_error(),
.NSW1_data_error(),
.NSW2_data_error(),
.NSW3_data_error(),
.RPC_data_error(),
.EI_data_error(),
.Tile_data_error(),

.NSWdisableSSC(),
.EIdisableSSC(),
.TILEdisableSSC(),
.RPCdisableSSC(),    
    
.EIMask_0_in_SSC0(),
.EIMask_1_in_SSC0(),
.EIMask_2_in_SSC0(),
.EIMask_0_in_SSC1(),
.EIMask_1_in_SSC1(),
.EIMask_2_in_SSC1(),
.EIMask_0_in_SSC2(),
.EIMask_1_in_SSC2(),
.EIMask_2_in_SSC2(),
.EIMask_0_in_SSC3(),
.EIMask_1_in_SSC3(),
.EIMask_2_in_SSC3(),
.EIMask_0_in_SSC4(),
.EIMask_1_in_SSC4(),
.EIMask_2_in_SSC4(),
.TileMask0_SSC0(),
.TileMask1_SSC0(),
.TileMask2_SSC0(),
.TileMask3_SSC0(),
.TileMask0_SSC1(),
.TileMask1_SSC1(),
.TileMask2_SSC1(),
.TileMask3_SSC1(),
.TileMask0_SSC2(),
.TileMask1_SSC2(),
.TileMask2_SSC2(),
.TileMask3_SSC2(),
.TileMask0_SSC3(),
.TileMask1_SSC3(),
.TileMask2_SSC3(),
.TileMask3_SSC3(),
.TileMask0_SSC4(),
.TileMask1_SSC4(),
.TileMask2_SSC4(),
.TileMask3_SSC4(),
    
.trig_SSC0_BW(),
.trig_SSC1_BW(),
.trig_SSC2_BW(),
.trig_SSC3_BW(),
.trig_SSC4_BW(),
.trig_SSC5_BW(),
.trig_SSC6_BW(),
.trig_SSC7_BW(),
.trig_SSC8_BW(),
.trig_SSC9_BW(),
.trig_SSC10_BW(),
.trig_SSC11_BW(),
.trig_SSC12_BW(),
.trig_SSC13_BW(),
.trig_SSC14_BW(),
.trig_SSC15_BW(),
.trig_SSC16_BW(),
.trig_SSC17_BW(),
.trig_SSC18_BW(),
    
.Inner_decoded_SSC0(),
.Inner_decoded_SSC1(),
.Inner_decoded_SSC2(),
.Inner_decoded_SSC3(),
.Inner_decoded_SSC4(),
.Inner_decoded_SSC5(),
.Inner_decoded_SSC6(),
.Inner_decoded_SSC7(),
.Inner_decoded_SSC8(),
.Inner_decoded_SSC9(),
.Inner_decoded_SSC10(),
.Inner_decoded_SSC11(),
.Inner_decoded_SSC12(),
.Inner_decoded_SSC13(),
.Inner_decoded_SSC14(),
.Inner_decoded_SSC15(),
.Inner_decoded_SSC16(),
.Inner_decoded_SSC17(),
.Inner_decoded_SSC18(),
    
.trig_SSC0(),
.trig_SSC1(),
.trig_SSC2(),
.trig_SSC3(),
.trig_SSC4(),
.trig_SSC5(),
.trig_SSC6(),
.trig_SSC7(),
.trig_SSC8(),
.trig_SSC9(),
.trig_SSC10(),
.trig_SSC11(),
.trig_SSC12(),
.trig_SSC13(),
.trig_SSC14(),
.trig_SSC15(),
.trig_SSC16(),
.trig_SSC17(),
.trig_SSC18(),
    
.valid_SSC0(),
.valid_SSC1(),
.valid_SSC2(),
.valid_SSC3(),
.valid_SSC4(),
.valid_SSC5(),
.valid_SSC6(),
.valid_SSC7(),
.valid_SSC8(),
.valid_SSC9(),
.valid_SSC10(),
.valid_SSC11(),
.valid_SSC12(),
.valid_SSC13(),
.valid_SSC14(),
.valid_SSC15(),
.valid_SSC16(),
.valid_SSC17(),
.valid_SSC18()
);


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
assign m_axis_tdata = data_out;
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

