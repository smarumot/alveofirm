`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/28 23:01:27
// Design Name: 
// Module Name: SSC
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


module SSC_Transition(
    input wire CLK_in,
    input wire CLK_Q40,
    input wire CLK_160,
    input wire reset_in,

    input wire [6:0] BW_R, 
    input wire [5:0] BW_Phi0, 
    input wire [5:0] BW_Phi1, 
    input wire [5:0] BW_Phi2, 
    input wire [5:0] BW_Phi3,
    input wire isAside,
    input wire [7:0] HotROIdef,
    input wire [95:0] RPC_in,
    input wire [5:0] Align_eta_in,
    input wire [5:0] Align_phi_in,
    input wire [5:0] Eta_sub,
    input wire [5:0] Phi_sub0,
    input wire [5:0] Phi_sub1,
    input wire [5:0] Phi_sub2,
    input wire [5:0] Phi_sub3,
    input wire [6:0] EI_0_in,
    input wire [6:0] EI_1_in,
    input wire [6:0] EI_2_in,
    input wire [6:0] EIMask_0_in,
    input wire [6:0] EIMask_1_in,
    input wire [6:0] EIMask_2_in,
    input wire [11:0] Tile_in,
    input wire [1:0] TileMask0,
    input wire [1:0] TileMask1,
    input wire [1:0] TileMask2,
    input wire [1:0] TileMask3,
    
    input wire EI_data_error,
    input wire Tile_data_error,
    input wire RPC_data_error,
    input wire EIdisable,
    input wire TILEdisable,
    input wire RPCdisable,      

    input wire [4:0] LUT_init_data_in,
    input wire [14:0] LUT_init_Address_in,
    input wire [3:0] LUT_init_type_in,
    input wire LUT_init_flg_in,
    input wire LUT_init_R_in,
    input wire [1:0] LUT_init_Phi_in,
    input wire [1:0] LUT_init_mode_in,

    input wire [14:0] LUT_rd_address_in,
    input wire [3:0] LUT_rd_type_in,
    input wire LUT_rd_R_in,
    input wire [1:0] LUT_rd_Phi_in,
    output wire [4:0] LUT_rd_data_out,

    output wire [9:0] trig_SSC_BW,
    output wire [14:0] trig_SSC,
    output wire valid_SSC,
    output wire [63:0] Inner_decoded
);

reg [9:0] trig_SSC_BW_reg;
wire [9:0] trig_SSC_BW_out;
wire [9:0] trig_SSC_BW_in = trig_SSC_BW_reg;
assign trig_SSC_BW = trig_SSC_BW_out;

wire [63:0] RPC_decoded_out;
wire [63:0] RPC_decoded_in;
assign Inner_decoded = RPC_decoded_out;
assign RPC_decoded_in = RPC_decoded_out;

wire [4:0] LUT_rd_data_out_BW;
wire [4:0] LUT_rd_data_out_RPC;

assign LUT_rd_data_out = LUT_rd_data_out_BW | LUT_rd_data_out_RPC;

wire LUT_init_flg_in_BW;
wire LUT_init_flg_in_RPC_pos;
wire LUT_init_flg_in_RPC_dphi;
wire LUT_init_flg_in_RPC_dz;
wire LUT_init_flg_in_RPC_PT;
wire LUT_init_flg_in_which_inner;
assign LUT_init_flg_in_BW           = (LUT_init_type_in == 4'h1 && LUT_init_R_in == 1'b1) ? LUT_init_flg_in : 1'b0;
assign LUT_init_flg_in_RPC_pos      = (LUT_init_type_in == 4'h5 && LUT_init_R_in == 1'b1) ? LUT_init_flg_in : 1'b0;
assign LUT_init_flg_in_RPC_dphi     = (LUT_init_type_in == 4'h6 && LUT_init_R_in == 1'b1) ? LUT_init_flg_in : 1'b0;
assign LUT_init_flg_in_RPC_dz       = (LUT_init_type_in == 4'h7 && LUT_init_R_in == 1'b1) ? LUT_init_flg_in : 1'b0;
assign LUT_init_flg_in_RPC_PT       = (LUT_init_type_in == 4'h8 && LUT_init_R_in == 1'b1) ? LUT_init_flg_in : 1'b0;
assign LUT_init_flg_in_which_inner  = (LUT_init_type_in == 4'h9 && LUT_init_R_in == 1'b1) ? LUT_init_flg_in : 1'b0;

BW_Coincidence BW_Coincidence(
    .CLK_in       (CLK_in),
    .CLK_Q40      (CLK_Q40),
    .reset_in     (reset_in),
    .BW_R         (BW_R),
    .BW_Phi0      (BW_Phi0),
    .BW_Phi1      (BW_Phi1),
    .BW_Phi2      (BW_Phi2),
    .BW_Phi3      (BW_Phi3),
    .isAside      (isAside),
    .HotROIdef    (HotROIdef),
    .LUT_init_data_in     (LUT_init_data_in),
    .LUT_init_Address_in  (LUT_init_Address_in[13:0]),
    .LUT_init_flg_in      (LUT_init_flg_in_BW),
    .LUT_init_mode_in     (LUT_init_mode_in),
    .LUT_rd_address_in    (LUT_rd_address_in[13:0]),
    .LUT_rd_type_in       (LUT_rd_type_in),
    .LUT_rd_R_in          (LUT_rd_R_in),
    .LUT_rd_Phi_in        (LUT_rd_Phi_in),
    .LUT_rd_data_out      (LUT_rd_data_out_BW[4:0]),
    .trig_SSC_BW  (trig_SSC_BW_out)
);

always @(posedge CLK_in) begin
    trig_SSC_BW_reg <= trig_SSC_BW_out;
end

//Decoder

RPC_Decoder RPC_Decoder(
    .CLK_in         (CLK_in),
    .RPC_in         (RPC_in),
    .RoI_phi        (trig_SSC_BW[5:4]),
    .Align_eta_in   (Align_eta_in),
    .Align_phi_in   (Align_phi_in),
    .Eta_sub        (Eta_sub),
    .Phi_sub0       (Phi_sub0),
    .Phi_sub1       (Phi_sub1),
    .Phi_sub2       (Phi_sub2),
    .Phi_sub3       (Phi_sub3),
    .RPC_decoded    (RPC_decoded_out)
);

Transition_Coincidence Transition_Coincidence(
    .CLK_160         (CLK_160),
    .CLK_40          (CLK_in),
    .CLK_Q40         (CLK_Q40),
    .reset_in        (reset_in),
    .trig_SSC_BW     (trig_SSC_BW_in),
    .RPC_decoded_in  (RPC_decoded_in),
    .EI_0_in         (EI_0_in),
    .EI_1_in         (EI_1_in),
    .EI_2_in         (EI_2_in),
    .EIMask_0_in     (EIMask_0_in),
    .EIMask_1_in     (EIMask_1_in),
    .EIMask_2_in     (EIMask_2_in),
    .Tile_in         (Tile_in),
    .TileMask0       (TileMask0),
    .TileMask1       (TileMask1),
    .TileMask2       (TileMask2),
    .TileMask3       (TileMask3),
    .EI_data_error   (EI_data_error),
    .Tile_data_error (Tile_data_error),
    .RPC_data_error  (RPC_data_error),
    .EIdisable       (EIdisable),
    .TILEdisable     (TILEdisable),    
    .RPCdisable      (RPCdisable),    
    .LUT_init_data_in             (LUT_init_data_in),
    .LUT_init_Address_in          (LUT_init_Address_in),
    .LUT_init_flg_in_RPC_pos      (LUT_init_flg_in_RPC_pos),
    .LUT_init_flg_in_RPC_dphi     (LUT_init_flg_in_RPC_dphi),
    .LUT_init_flg_in_RPC_dz       (LUT_init_flg_in_RPC_dz),
    .LUT_init_flg_in_RPC_PT       (LUT_init_flg_in_RPC_PT),
    .LUT_init_flg_in_which_inner  (LUT_init_flg_in_which_inner),
    .LUT_init_mode_in             (LUT_init_mode_in),
    .LUT_rd_address_in            (LUT_rd_address_in),
    .LUT_rd_type_in               (LUT_rd_type_in),
    .LUT_rd_R_in                  (LUT_rd_R_in),
    .LUT_rd_data_out              (LUT_rd_data_out_RPC[4:0]),
    .trig_SSC        (trig_SSC),
    .valid_SSC       (valid_SSC)
);


endmodule

