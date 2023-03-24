`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/29 21:54:22
// Design Name: 
// Module Name: BW_Coincidence
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


module BW_Coincidence(
    input wire CLK_in,
    input wire CLK_Q40,
    input wire reset_in,

    input wire [6:0] BW_R, 
    input wire [5:0] BW_Phi0, 
    input wire [5:0] BW_Phi1, 
    input wire [5:0] BW_Phi2, 
    input wire [5:0] BW_Phi3, 
    
    input wire isAside,
    input wire [7:0] HotROIdef,

    input wire [4:0] LUT_init_data_in,
    input wire [13:0] LUT_init_Address_in,
    input wire LUT_init_flg_in,
    input wire [1:0] LUT_init_mode_in,

    input wire [13:0] LUT_rd_address_in,
    input wire [3:0] LUT_rd_type_in,
    input wire LUT_rd_R_in,
    input wire [1:0] LUT_rd_Phi_in,
    output wire [4:0] LUT_rd_data_out,

    output reg [9:0] trig_SSC_BW
);

function valid_hit;
    input [3:0] v_pT;
    begin
        if ( v_pT != 4'h0 ) begin
            valid_hit = 1'b1;
        end
        else begin
            valid_hit = 1'b0;
        end
    end
endfunction

function [7:0] comparepT;
    input [7:0] SSC_A;
    input [7:0] SSC_B;
    begin
        if( valid_hit(SSC_A[3:0]) && valid_hit(SSC_B[3:0]) ) begin
            if(SSC_A[3:0] >= SSC_B[3:0]) begin
                comparepT = SSC_A;
            end
            else begin
                comparepT = SSC_B;
            end
        end
        else if( valid_hit(SSC_A[3:0]) ) begin
            comparepT = SSC_A;
        end
        else if( valid_hit(SSC_B[3:0]) ) begin
            comparepT = SSC_B;
        end
        else begin
            comparepT = 8'b0;
        end
    end
endfunction // comparepT

function Set_flag;
    input wire_flag;
    input strip_flag;
    begin   
        if( wire_flag && strip_flag ) begin
            Set_flag = 1'b1;
        end
        else begin
            Set_flag = 1'b0;
        end
    end
endfunction
   
wire ena = 1'b1;
wire enb = 1'b1;
wire wea = 1'b0;

wire BW_Flag0 = Set_flag(BW_R[5],BW_Phi0[4]);
wire BW_Flag1 = Set_flag(BW_R[5],BW_Phi1[4]);
wire BW_Flag2 = Set_flag(BW_R[5],BW_Phi2[4]);
wire BW_Flag3 = Set_flag(BW_R[5],BW_Phi3[4]);

wire [3:0] BW_pT0;
wire [3:0] BW_pT1;
wire BW_charge0;
wire BW_charge1;

wire [3:0] valid_BW_Phi = {|BW_Phi3, |BW_Phi2, |BW_Phi1, |BW_Phi0};
wire [2:0] number_BW_Phi = |BW_Phi3 + |BW_Phi2 + |BW_Phi1 + |BW_Phi0;
wire [7:0] BW_PhiA, BW_PhiB;
assign BW_PhiA = (valid_BW_Phi[0]) ? {BW_Flag0 , 1'b0, BW_Phi0[5:0]} :
                 (valid_BW_Phi[1]) ? {BW_Flag1 , 1'b1, BW_Phi1[5:0]} :
                 (valid_BW_Phi[2]) ? {BW_Flag2 , 1'b0, BW_Phi2[5:0]} :
                 (valid_BW_Phi[3]) ? {BW_Flag3 , 1'b1, BW_Phi3[5:0]} : 8'b0;
assign BW_PhiB = (number_BW_Phi <= 3'h1) ? 8'b0 :
                 ((valid_BW_Phi[3]) ? {BW_Flag3 , 1'b1, BW_Phi3[5:0]} :
                  (valid_BW_Phi[2]) ? {BW_Flag2 , 1'b0, BW_Phi2[5:0]} :
                  (valid_BW_Phi[1]) ? {BW_Flag1 , 1'b1, BW_Phi1[5:0]} : 8'b0);

wire [3:0] BW_pT_rd;
wire BW_charge_rd;

wire [13:0] LUT_address = (LUT_init_mode_in == 2'h1) ? LUT_init_Address_in : 
                          (LUT_init_mode_in == 2'h2) ? LUT_rd_address_in : 
                          14'h0;

assign LUT_rd_data_out[4:0] = (LUT_rd_type_in == 4'h1 && LUT_rd_R_in == 1'h1) ? {BW_charge_rd, BW_pT_rd} : 5'b0;


// LUT input data format : {R_pos, Phi_pos, RHL, PhiHL, +-dR, +-dPhi}

LUT14TDP_BW BW_CoinA(
    .clka(CLK_in), // channel A dedicated to operation (only read)
    .ena(ena),
    .wea(wea),  // always disabled
    .addra({BW_R[6], BW_PhiA[6:5], BW_R[5], BW_PhiA[4], BW_R[4:0], BW_PhiA[3:0]}),
    .dina(5'b0),
    .douta({BW_charge0, BW_pT0}),
    .clkb(CLK_Q40),  // channel B dedicated to LUT configuration (read and write)
    .enb(enb),
    .web(LUT_init_flg_in),
    .addrb(LUT_address[13:0]),
    .dinb(LUT_init_data_in[4:0]),
    .doutb({BW_charge_rd, BW_pT_rd}) 
);

LUT14TDP_BW BW_CoinB(
    .clka(CLK_in), // channel A dedicated to operation (only read)
    .ena(ena),
    .wea(wea),  // always disabled
    .addra({BW_R[6], BW_PhiB[6:5], BW_R[5], BW_PhiB[4], BW_R[4:0], BW_PhiB[3:0]}),
    .dina(5'b0),
    .douta({BW_charge1, BW_pT1}),
    .clkb(CLK_Q40),  // channel B dedicated to LUT configuration (read and write)
    .enb(enb),
    .web(LUT_init_flg_in),
    .addrb(LUT_address[13:0]),
    .dinb(LUT_init_data_in[4:0]),
    .doutb()
);

//simple test
/*
reg [3:0] pTL;
reg [3:0] pTR;
reg chargeL;
reg chargeR;
assign pT_L_BW = pTL;
assign pT_R_BW = pTR;
assign charge_L_BW = chargeL;
assign charge_R_BW = chargeR;

always @(posedge CLK_in) begin
    pTR <= 4'b0000;
    pTL <= {BW_R[1:0], BW_Phi0[1:0]};
    chargeL <= 1'b0;
    chargeR <= 1'b0;
end
*/
//simple test

reg BW_R_reg;
reg [1:0] BW_PhiA_reg;
reg [1:0] BW_PhiB_reg;
reg BW_FlagA_reg;
reg BW_FlagB_reg;

wire [7:0] SSC_A = {BW_FlagA_reg, BW_charge0, BW_PhiA_reg, BW_pT0};       // BW flag + charge + pos(phi) + pT
wire [7:0] SSC_B = {BW_FlagB_reg, BW_charge1, BW_PhiB_reg, BW_pT1};       // BW flag + charge + pos(phi) + pT

wire [7:0] SSC = comparepT(SSC_A, SSC_B);

wire [3:0] SSC_pT = valid_hit(SSC[3:0]) ? SSC[3:0] : 4'b0;
wire [2:0] ROI = valid_hit(SSC[3:0]) ? {BW_R_reg, SSC[5:4]} : 3'b0;
wire SSC_charge = valid_hit(SSC[3:0]) ? ( isAside ? SSC[6] : !SSC[6] ) : 1'b0;
wire BW_station_flag = valid_hit(SSC[3:0]) ? SSC[7] : 1'b0;
wire good_MF_flag = valid_hit(SSC[3:0]) ? !HotROIdef[ROI[2:0]] : 1'b0;

always @(posedge CLK_in or posedge reset_in) begin
    if(reset_in) begin
        trig_SSC_BW <= 10'b0;
        BW_R_reg <= 1'b0;
        BW_PhiA_reg <= 2'b0;
        BW_PhiB_reg <= 2'b0;
        BW_FlagA_reg <= 1'b0;
        BW_FlagB_reg <= 1'b0;
    end
    else begin
        BW_R_reg <= BW_R[6];
        BW_PhiA_reg <= BW_PhiA[6:5];
        BW_PhiB_reg <= BW_PhiB[6:5];
        BW_FlagA_reg <= BW_PhiA[7];
        BW_FlagB_reg <= BW_PhiB[7];

        trig_SSC_BW[9] <= good_MF_flag;
        trig_SSC_BW[8] <= BW_station_flag;
        trig_SSC_BW[7] <= SSC_charge;
        trig_SSC_BW[6:4] <= ROI;
        trig_SSC_BW[3:0] <= SSC_pT;
    end
end

endmodule

