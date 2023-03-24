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


module SSC6(
    input wire CLK_in,
    input wire CLK_Q40,
    input wire CLK_320,
    input wire reset_in,

    input wire [6:0] BW_R, 
    input wire [5:0] BW_Phi0,
    input wire [5:0] BW_Phi1,
    input wire [5:0] BW_Phi2,
    input wire [5:0] BW_Phi3,
    input wire isAside,
    input wire [7:0] HotROIdef,
    input wire [95:0] NSW_0_in,
    input wire [95:0] NSW_1_in,
    input wire [95:0] NSW_2_in,
    input wire [95:0] NSW_3_in,
    input wire [7:0] Align_eta0_in,
    input wire [7:0] Align_eta1_in,
    input wire [7:0] Align_eta2_in,
    input wire [7:0] Align_eta3_in,
    input wire [5:0] Align_phi0_in,
    input wire [5:0] Align_phi1_in,
    input wire [5:0] Align_phi2_in,
    input wire [5:0] Align_phi3_in,
    input wire [7:0] Eta_sub,
    input wire [5:0] Phi_sub0,
    input wire [5:0] Phi_sub1,
    input wire [5:0] Phi_sub2,
    input wire [5:0] Phi_sub3,

    input wire NSW0_data_error,
    input wire NSW1_data_error,
    input wire NSW2_data_error,
    input wire NSW3_data_error,
    input wire NSWdisable,  

    input wire [4:0] LUT_init_data_in,
    input wire [13:0] LUT_init_Address_in,
    input wire [3:0] LUT_init_type_in,
    input wire LUT_init_flg_in,
    input wire LUT_init_R_in,
    input wire [1:0] LUT_init_Phi_in,
    input wire [1:0] LUT_init_mode_in,

    input wire [13:0] LUT_rd_address_in,
    input wire [3:0] LUT_rd_type_in,
    input wire LUT_rd_R_in,
    input wire [1:0] LUT_rd_Phi_in,
    output wire [4:0] LUT_rd_data_out,
    
    output wire [9:0] trig_SSC_BW,
    output wire [14:0] trig_SSC,
    output wire valid_SSC,
    output wire [239:0] Inner_decoded
);

reg [9:0] trig_SSC_BW_reg;
wire [9:0] trig_SSC_BW_out;
wire [9:0] trig_SSC_BW_in = trig_SSC_BW_reg;
assign trig_SSC_BW = trig_SSC_BW_out;

wire [239:0] NSW_decoded_out;
wire [239:0] NSW_decoded_in;
assign Inner_decoded = NSW_decoded_out;
assign NSW_decoded_in = NSW_decoded_out;

wire [4:0] LUT_rd_data_out_BW;
wire [4:0] LUT_rd_data_out_NSW;

assign LUT_rd_data_out = LUT_rd_data_out_BW | LUT_rd_data_out_NSW;

wire LUT_init_flg_in_BW;
wire LUT_init_flg_in_NSW_dphi;
wire LUT_init_flg_in_NSW_dtheta;
wire LUT_init_flg_in_PT;

assign LUT_init_flg_in_BW           = (LUT_init_type_in == 4'h1 && LUT_init_R_in == 1'b1) ? LUT_init_flg_in : 1'b0;
assign LUT_init_flg_in_NSW_dphi     = (LUT_init_type_in == 4'h2 && LUT_init_R_in == 1'b1) ? LUT_init_flg_in : 1'b0;
assign LUT_init_flg_in_NSW_dtheta   = (LUT_init_type_in == 4'h3 && LUT_init_R_in == 1'b1) ? LUT_init_flg_in : 1'b0;
assign LUT_init_flg_in_PT           = (LUT_init_type_in == 4'h4 && LUT_init_R_in == 1'b1) ? LUT_init_flg_in : 1'b0;


BW_Coincidence_SSC6 BW_Coincidence(
    .CLK_in       (CLK_in),
    .CLK_Q40      (CLK_Q40),
    .reset_in     (reset_in),
    .BW_R         (BW_R),
    .BW_Phi0      (BW_Phi0[5:0]),
    .BW_Phi1      (BW_Phi1[5:0]),
    .BW_Phi2      (BW_Phi2[5:0]),
    .BW_Phi3      (BW_Phi3[5:0]),
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

NSW_Decoder NSW_Decoder(
    .CLK_in         (CLK_in),
    .NSW_0_in       (NSW_0_in),
    .NSW_1_in       (NSW_1_in),
    .NSW_2_in       (NSW_2_in),
    .NSW_3_in       (NSW_3_in),
    .RoI_phi        (trig_SSC_BW[5:4]),
    .Align_eta0_in  (Align_eta0_in),
    .Align_eta1_in  (Align_eta1_in),
    .Align_eta2_in  (Align_eta2_in),
    .Align_eta3_in  (Align_eta3_in),
    .Align_phi0_in  (Align_phi0_in),
    .Align_phi1_in  (Align_phi1_in),
    .Align_phi2_in  (Align_phi2_in),
    .Align_phi3_in  (Align_phi3_in),
    .Eta_sub        (Eta_sub),
    .Phi_sub0       (Phi_sub0),
    .Phi_sub1       (Phi_sub1),
    .Phi_sub2       (Phi_sub2),
    .Phi_sub3       (Phi_sub3),
    .NSW_decoded    (NSW_decoded_out)
);

wire [14:0] trig_SSC_NSW;
wire valid_SSC_NSW;

NSW_Coincidence NSW_Coincidence(
    .CLK_320         (CLK_320),
    .CLK_40          (CLK_in),
    .CLK_Q40         (CLK_Q40),
    .reset_in        (reset_in),
    .trig_SSC_BW     (trig_SSC_BW_in),
    .NSW_decoded_in  (NSW_decoded_in),
    .NSW0_data_error (NSW0_data_error),
    .NSW1_data_error (NSW1_data_error),
    .NSW2_data_error (NSW2_data_error),
    .NSW3_data_error (NSW3_data_error),
    .NSWdisable      (NSWdisable),
    .LUT_init_data_in            (LUT_init_data_in),
    .LUT_init_Address_in         (LUT_init_Address_in),
    .LUT_init_flg_in_NSW_dphi    (LUT_init_flg_in_NSW_dphi),
    .LUT_init_flg_in_NSW_dtheta  (LUT_init_flg_in_NSW_dtheta),
    .LUT_init_flg_in_PT          (LUT_init_flg_in_PT),
    .LUT_init_mode_in            (LUT_init_mode_in),
    .LUT_rd_address_in           (LUT_rd_address_in),
    .LUT_rd_type_in              (LUT_rd_type_in),
    .LUT_rd_R_in                 (LUT_rd_R_in),
    .LUT_rd_data_out             (LUT_rd_data_out_NSW[4:0]),
    .trig_SSC        (trig_SSC_NSW),
    .valid_SSC       (valid_SSC_NSW)
);

assign trig_SSC = trig_SSC_NSW; 
assign valid_SSC = valid_SSC_NSW; 


endmodule

