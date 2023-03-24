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


module BW_Coincidence_SSC6(
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

function compare_pT;
    input [3:0] pT_A;
    input [3:0] pT_B;
    begin
        if( valid_hit(pT_A) && valid_hit(pT_B) ) begin
            if(pT_A >= pT_B) begin
                compare_pT = 1'b1;
            end
            else begin
                compare_pT = 1'b0;
            end
        end
        else if( valid_hit(pT_A) ) begin
            compare_pT = 1'b1;
        end
        else if( valid_hit(pT_B) ) begin
            compare_pT = 1'b0;
        end
        else begin
            compare_pT = 1'b0;
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
wire [3:0] BW_pT2;
wire [3:0] BW_pT3;
wire BW_charge0;
wire BW_charge1;
wire BW_charge2;
wire BW_charge3;

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
    .addra({BW_R[6], 1'b0, BW_Phi0[5], BW_R[5], BW_Phi0[4], BW_R[4:0], BW_Phi0[3:0]}),
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
    .addra({BW_R[6], 1'b1, BW_Phi1[5], BW_R[5], BW_Phi1[4], BW_R[4:0], BW_Phi1[3:0]}),
    .dina(5'b0),
    .douta({BW_charge1, BW_pT1}),
    .clkb(CLK_Q40),  // channel B dedicated to LUT configuration (read and write)
    .enb(enb),
    .web(LUT_init_flg_in),
    .addrb(LUT_address[13:0]),
    .dinb(LUT_init_data_in[4:0]),
    .doutb()
);

LUT14TDP_BW BW_CoinC(
    .clka(CLK_in), // channel A dedicated to operation (only read)
    .ena(ena),
    .wea(wea),  // always disabled
    .addra({BW_R[6], 1'b0, BW_Phi2[5], BW_R[5], BW_Phi2[4], BW_R[4:0], BW_Phi2[3:0]}),
    .dina(5'b0),
    .douta({BW_charge2, BW_pT2}),
    .clkb(CLK_Q40),  // channel B dedicated to LUT configuration (read and write)
    .enb(enb),
    .web(LUT_init_flg_in),
    .addrb(LUT_address[13:0]),
    .dinb(LUT_init_data_in[4:0]),
    .doutb()
);

LUT14TDP_BW BW_CoinD(
    .clka(CLK_in), // channel A dedicated to operation (only read)
    .ena(ena),
    .wea(wea),  // always disabled
    .addra({BW_R[6], 1'b1, BW_Phi3[5], BW_R[5], BW_Phi3[4], BW_R[4:0], BW_Phi3[3:0]}),
    .dina(5'b0),
    .douta({BW_charge3, BW_pT3}),
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
reg [1:0] BW_Phi0_reg;
reg [1:0] BW_Phi1_reg;
reg [1:0] BW_Phi2_reg;
reg [1:0] BW_Phi3_reg;
reg BW_Flag0_reg;
reg BW_Flag1_reg;
reg BW_Flag2_reg;
reg BW_Flag3_reg;

wire [7:0] SSC_0 = {BW_Flag0_reg, BW_charge0, BW_Phi0_reg, BW_pT0};       // BW flag + charge + pos(phi) + pT
wire [7:0] SSC_1 = {BW_Flag1_reg, BW_charge1, BW_Phi1_reg, BW_pT1};       // BW flag + charge + pos(phi) + pT
wire [7:0] SSC_2 = {BW_Flag2_reg, BW_charge2, BW_Phi2_reg, BW_pT2};       // BW flag + charge + pos(phi) + pT
wire [7:0] SSC_3 = {BW_Flag3_reg, BW_charge3, BW_Phi3_reg, BW_pT3};       // BW flag + charge + pos(phi) + pT

wire result1;
wire result2;
wire result3;
wire result4;
wire result5;
wire result6;

//cand vs cand
assign result1  = compare_pT(BW_pT0, BW_pT1);
assign result2  = compare_pT(BW_pT0, BW_pT2);
assign result3  = compare_pT(BW_pT0, BW_pT3);
assign result4  = compare_pT(BW_pT1, BW_pT2);
assign result5  = compare_pT(BW_pT1, BW_pT3);
assign result6  = compare_pT(BW_pT2, BW_pT3);

wire [1:0] result_cand0 = result3 + result2 + result1;
wire [1:0] result_cand1 = result5 + result4 + !result1;
wire [1:0] result_cand2 = result6 + !result4 + !result2;
wire [1:0] result_cand3 = !result6 + !result5 + !result3;

wire [7:0] SSC = (result_cand0 == 2'h3) ? SSC_0 : (result_cand1 == 2'h3) ? SSC_1 : (result_cand2 == 2'h3) ? SSC_2 : (result_cand3 == 2'h3) ? SSC_3 : 8'b0;

wire [3:0] SSC_pT = valid_hit(SSC[3:0]) ? SSC[3:0] : 4'b0;
wire [2:0] ROI = valid_hit(SSC[3:0]) ? {BW_R_reg, SSC[5:4]} : 3'b0;
wire SSC_charge = valid_hit(SSC[3:0]) ? ( isAside ? SSC[6] : !SSC[6] ) : 1'b0;
wire BW_station_flag = valid_hit(SSC[3:0]) ? SSC[7] : 1'b0;
wire good_MF_flag = valid_hit(SSC[3:0]) ? !HotROIdef[ROI[2:0]] : 1'b0;

always @(posedge CLK_in or posedge reset_in) begin
    if(reset_in) begin
        trig_SSC_BW <= 10'b0;
        BW_R_reg <= 1'b0;
        BW_Phi0_reg <= 2'b0;
        BW_Phi1_reg <= 2'b0;
        BW_Phi2_reg <= 2'b0;
        BW_Phi3_reg <= 2'b0;
        BW_Flag0_reg <= 1'b0;
        BW_Flag1_reg <= 1'b0;
        BW_Flag2_reg <= 1'b0;
        BW_Flag3_reg <= 1'b0;
    end
    else begin 
        BW_R_reg <= BW_R[6];
        BW_Phi0_reg <= {1'b0, BW_Phi0[5]};
        BW_Phi1_reg <= {1'b1, BW_Phi1[5]};
        BW_Phi2_reg <= {1'b0, BW_Phi2[5]};
        BW_Phi3_reg <= {1'b1, BW_Phi3[5]};
        BW_Flag0_reg <= BW_Flag0;
        BW_Flag1_reg <= BW_Flag1;
        BW_Flag2_reg <= BW_Flag2;
        BW_Flag3_reg <= BW_Flag3;

        trig_SSC_BW[9] <= good_MF_flag;
        trig_SSC_BW[8] <= BW_station_flag;
        trig_SSC_BW[7] <= SSC_charge;
        trig_SSC_BW[6:4] <= ROI;
        trig_SSC_BW[3:0] <= SSC_pT;
    end
end

endmodule

