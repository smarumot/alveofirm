`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/12/05 06:08:46
// Design Name: 
// Module Name: Transition_Coincidence
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


module Transition_Coincidence(
    input wire CLK_160,
    input wire CLK_40,
    input wire CLK_Q40,
    input wire reset_in,
    
    input wire [9:0] trig_SSC_BW,
    input wire [63:0] RPC_decoded_in,
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
    input wire LUT_init_flg_in_RPC_pos,
    input wire LUT_init_flg_in_RPC_dphi,
    input wire LUT_init_flg_in_RPC_dz,
    input wire LUT_init_flg_in_RPC_PT,
    input wire LUT_init_flg_in_which_inner,
    input wire [1:0] LUT_init_mode_in,

    input wire [14:0] LUT_rd_address_in,
    input wire [3:0] LUT_rd_type_in,
    input wire LUT_rd_R_in,
    output wire [4:0] LUT_rd_data_out,

    output reg [14:0] trig_SSC,
    output reg valid_SSC
);

parameter PAUSE = 3'h7;
parameter PRESTART = 3'h0;
parameter TRACK1 = 3'h1;
parameter TRACK2 = 3'h2;
parameter TRACK3 = 3'h3;
parameter TRACK4 = 3'h4;

function valid_hit;
    input [3:0] v_pT;
    begin
        if (v_pT != 4'h0) begin
            valid_hit = 1'b1;
        end
        else begin
            valid_hit = 1'b0;
        end
    end
endfunction

function comparepT;
    input [3:0] w_pT_L;
    input [3:0] w_pT_R;
    begin
        if( valid_hit(w_pT_L[3:0]) && valid_hit(w_pT_R[3:0]) ) begin
            if(w_pT_L[3:0] >= w_pT_R[3:0]) begin
                comparepT = 1'b1;
            end
            else begin
                comparepT = 1'b0;
            end
        end
        else if( valid_hit(w_pT_L[3:0]) ) begin
            comparepT = 1'b1;
        end
        else if( valid_hit(w_pT_R[3:0]) ) begin
            comparepT = 1'b0;
        end
        else begin
            comparepT = 1'b1;
        end
    end
endfunction

function compare_flagpT;
    input [4:0] w_flag_pT_L;
    input [4:0] w_flag_pT_R;
    begin
        if((w_flag_pT_L[4:0] != 5'h0) && (w_flag_pT_R[4:0] != 5'h0)) begin
            if(w_flag_pT_L[4:0] >= w_flag_pT_R[4:0]) begin
                compare_flagpT = 1'b1;
            end
            else begin
                compare_flagpT = 1'b0;
            end
        end
        else if(w_flag_pT_L[4:0] != 5'h0) begin
            compare_flagpT = 1'b1;
        end
        else if(w_flag_pT_R[4:0] != 5'h0) begin
            compare_flagpT = 1'b0;
        end
        else begin
            compare_flagpT = 1'b1;
        end
    end
endfunction

function [15:0] track_assign;
    input [2:0] Coin_state;
    input [15:0] track1;
    input [15:0] track2;
    input [15:0] track3;
    input [15:0] track4;
    begin
        case (Coin_state)
            TRACK1 : begin
                track_assign[15:0] = track2[15:0];
            end
            TRACK2 : begin
                track_assign[15:0] = track3[15:0];
            end
            TRACK3 : begin
                track_assign[15:0] = track4[15:0];
            end
            TRACK4 : begin
                track_assign[15:0] = track1[15:0];
            end
            default : begin
                track_assign[15:0] = track1[15:0];
            end
        endcase
    end
endfunction     

// LUT configuration
wire [14:0] LUT_address = (LUT_init_mode_in == 2'h1) ? LUT_init_Address_in : 
                          (LUT_init_mode_in == 2'h2) ? LUT_rd_address_in : 
                          15'h0;

wire [3:0] pT_pos_RPC_rd, pT_dphi_RPC_rd, pT_dz_RPC_rd;
wire [4:0] pT_RPC_rd;
wire [2:0] Inner_Detectors, Inner_Detectors_rd;

assign LUT_rd_data_out[4:0] = 
(LUT_rd_type_in == 4'h5 && LUT_rd_R_in == 1'h1) ? {1'b0, pT_pos_RPC_rd} :
(LUT_rd_type_in == 4'h6 && LUT_rd_R_in == 1'h1) ? {1'b0, pT_dphi_RPC_rd} :
(LUT_rd_type_in == 4'h7 && LUT_rd_R_in == 1'h1) ? {1'b0, pT_dz_RPC_rd} :
(LUT_rd_type_in == 4'h8 && LUT_rd_R_in == 1'h1) ? pT_RPC_rd :
(LUT_rd_type_in == 4'h9 && LUT_rd_R_in == 1'h1) ? {2'b0, Inner_Detectors_rd} : 5'b0;

wire ena = 1'b1;
wire enb = 1'b1;
wire wea = 1'b0;


///////////////////EI_coincidence///////////////////
wire [6:0] inner_EI_0;
wire [6:0] inner_EI_1;
wire [6:0] inner_EI_2;

assign inner_EI_0[6:0] = !EI_data_error ? (EI_0_in & EIMask_0_in) : 7'b0;
assign inner_EI_1[6:0] = !EI_data_error ? (EI_1_in & EIMask_1_in) : 7'b0;
assign inner_EI_2[6:0] = !EI_data_error ? (EI_2_in & EIMask_2_in) : 7'b0;

wire EI_hit;
assign EI_hit = |{ (|inner_EI_0[6:4]) & (|inner_EI_0[3:0]),
                   (|inner_EI_1[6:4]) & (|inner_EI_1[3:0]),
                   (|inner_EI_2[6:4]) & (|inner_EI_2[3:0]) };

reg EI_hit_reg;
always @(posedge CLK_40) begin
    EI_hit_reg <= EI_hit;
end
wire Inner_flag_EI;
assign Inner_flag_EI = (EI_hit_reg) ? 1'b1 : 1'b0;


///////////////////Tile_coincidence///////////////////
function HitTileMu;
    parameter D5 = 2'b01, D6 = 2'b10, D56 = 2'b11;
    input [1:0] F_TCMask;
    input [2:0] F_TileMu;
    begin
        case(F_TCMask)
            D5:begin
                if(F_TileMu[0]) begin
                    HitTileMu = 1'b1;
                end
                else begin
                    HitTileMu = 1'b0;
                end
            end
            D6:begin
                if(F_TileMu[1]) begin
                    HitTileMu = 1'b1;
                end
                else begin
                    HitTileMu = 1'b0;
                end
            end
            D56:begin
                if(F_TileMu[2]) begin
                    HitTileMu = 1'b1;
                end
                else begin
                    HitTileMu = 1'b0;
                end
            end
            default:begin
                HitTileMu = 1'b0;
            end
        endcase
    end
endfunction

wire HitTile0, HitTile1, HitTile2, HitTile3;

assign HitTile0 = !Tile_data_error ? HitTileMu(TileMask0[1:0], Tile_in[2:0]) : 1'b0;
assign HitTile1 = !Tile_data_error ? HitTileMu(TileMask1[1:0], Tile_in[5:3]) : 1'b0;
assign HitTile2 = !Tile_data_error ? HitTileMu(TileMask2[1:0], Tile_in[8:6]) : 1'b0;
assign HitTile3 = !Tile_data_error ? HitTileMu(TileMask3[1:0], Tile_in[11:9]) : 1'b0;
            
wire Tile_hit;

assign Tile_hit = |{HitTile0, HitTile1, HitTile2, HitTile3};              

reg Tile_hit_reg;

always @(posedge CLK_40) begin
    Tile_hit_reg <= Tile_hit;
end

wire Inner_flag_Tile;
assign Inner_flag_Tile = (Tile_hit_reg) ? 1'b1 : 1'b0;


///////////////////RPC_coincidence///////////////////
//disable coincidence if errors occur
wire [63:0] RPC_decoded;

assign RPC_decoded[63:0] = !RPC_data_error ? RPC_decoded_in[63:0] : 64'h9210921092109210;

// state LUT input and output 160 MHz
reg [2:0] Coin_state = 3'b100;

//select input track
reg set_4_reg;
wire set_4 = set_4_reg;

//input RPC LUT
wire [15:0] RPC_track_can;  //input LUT
reg [15:0] RPC_track4_reg;  //input LUT reg
assign RPC_track_can[15:0] = track_assign(Coin_state[2:0], RPC_decoded[15:0], RPC_decoded[31:16], RPC_decoded[47:32], RPC_track4_reg[15:0]);

//input LUT RoI
wire [2:0] pos_SSC_which;
reg [2:0] pos_SSC_pre;
assign pos_SSC_which[2:0] = (set_4) ? pos_SSC_pre[2:0] : trig_SSC_BW[6:4];

//input BW pT
wire [3:0] pT_BW;
reg [3:0] pT_BW_reg;
assign pT_BW = pT_BW_reg;

//output LUT pT
wire [3:0] pT_pos_RPC;
wire [3:0] pT_dphi_RPC;
wire [3:0] pT_dz_RPC;

//input wire for pT merger
wire [3:0] pT_pos_RPC_merger_in;
wire [3:0] pT_angle_RPC_merger_in;

assign pT_pos_RPC_merger_in = (!RPCdisable) ? pT_pos_RPC : 4'b0;
assign pT_angle_RPC_merger_in = (!RPCdisable) ? (comparepT(pT_dphi_RPC, pT_dz_RPC) ? pT_dphi_RPC : pT_dz_RPC) : 4'b0;  ////select pT higher

//output pT merger
wire [3:0] pT_RPC;
wire Inner_flag_RPC;

//temporary wire of comapre pT of all candidate
wire [3:0] H_pT;
wire Inner_flag_H_pT;

//temporary wire of highest pT before now and register(it assigns 0 or H_pT)
wire [3:0] H_trig_SSC_pT;
reg [3:0] H_trig_SSC_pT_reg;
wire H_trig_SSC_Inner_flag;
reg H_trig_SSC_Inner_flag_reg;

//set first track result
wire set_out;
reg set_out_reg;
assign set_out = set_out_reg;

//temporary register for 40 MHz clock edge
reg [3:0] trig_SSC_pT_out;
wire [3:0] trig_SSC_pT_RPC_final = trig_SSC_pT_out;
reg trig_SSC_Inner_flag_out;
wire trig_SSC_Inner_flag_RPC_final = trig_SSC_Inner_flag_out;

//not make latency (!latch at the negative edge of 40 MHz clock!)
always @(negedge CLK_40 or posedge reset_in) begin
    if(reset_in) begin
        pos_SSC_pre[2:0] <= 3'b0;
        RPC_track4_reg[15:0] <= 16'b0;
    end
    else begin
        pos_SSC_pre[2:0] <= trig_SSC_BW[6:4];
        RPC_track4_reg[15:0] <= RPC_decoded[63:48];
    end
end

// state LUT input and output 320 MHz
always @(posedge CLK_160) begin
    if(reset_in) begin
        Coin_state <= PAUSE;
    end
    else begin
        case (Coin_state)
            PAUSE : begin
                if(!CLK_40) begin
                    Coin_state <= PRESTART;
                end
                else begin
                    Coin_state <= PAUSE;
                end
            end
            PRESTART : begin
                if(CLK_40) begin
                    Coin_state <= TRACK1;
                end
                else begin
                    Coin_state <= PRESTART;
                end
            end
            TRACK1 : begin
                Coin_state <= TRACK2;
            end
            TRACK2 : begin
                Coin_state <= TRACK3;
            end
            TRACK3 : begin
                Coin_state <= TRACK4;
            end
            TRACK4 : begin
                Coin_state <= TRACK1;
            end
            default : begin
                Coin_state <= PAUSE;
            end
        endcase
    end
end

always @(posedge CLK_160) begin
    //pT
    H_trig_SSC_pT_reg <= H_pT;
    //Inner flag
    H_trig_SSC_Inner_flag_reg <= Inner_flag_H_pT;

    case (Coin_state)
        PAUSE : begin
            set_out_reg <= 1'b0;
            set_4_reg <= 1'b0;
        end
        PRESTART : begin
            set_out_reg <= 1'b0;
            set_4_reg <= 1'b0;
        end
        TRACK1 : begin
            trig_SSC_pT_out[3:0] <= H_pT;
            trig_SSC_Inner_flag_out <= Inner_flag_H_pT;  
            set_out_reg <= 1'b1;
            set_4_reg <= 1'b0;
        end
        TRACK2 : begin            
            set_out_reg <= 1'b0;    
            set_4_reg <= 1'b1;
        end
        TRACK3 : begin
            set_out_reg <= 1'b0;
            set_4_reg <= 1'b0;
        end
        TRACK4 : begin
            pT_BW_reg <= trig_SSC_BW[3:0];
            set_out_reg <= 1'b0;
            set_4_reg <= 1'b0;
        end
        default : begin
            set_out_reg <= 1'b0;
            set_4_reg <= 1'b0;
        end
    endcase
end

// True Dual Port LUT
// PortA is driven by CLK_160,  PortB is driven by CLK_Q40
LUT13TDP RPC_pos_coin(
    .clka(CLK_160),
    .ena(ena),
    .wea(wea),
    .addra({pos_SSC_which[2:0], RPC_track_can[9:0]}),
    .dina(4'b0),
    .douta(pT_pos_RPC),
    .clkb(CLK_Q40),
    .enb(enb),
    .web(LUT_init_flg_in_RPC_pos),
    .addrb(LUT_address[12:0]),
    .dinb(LUT_init_data_in[3:0]),
    .doutb(pT_pos_RPC_rd)
);

LUT11TDP RPC_dphi_coin(
    .clka(CLK_160),
    .ena(ena),
    .wea(wea),
    .addra({pos_SSC_which[2:0], RPC_track_can[12:10], RPC_track_can[4:0]}),
    .dina(4'b0),
    .douta(pT_dphi_RPC),
    .clkb(CLK_Q40),
    .enb(enb),
    .web(LUT_init_flg_in_RPC_dphi),
    .addrb(LUT_address[10:0]),
    .dinb(LUT_init_data_in[3:0]),
    .doutb(pT_dphi_RPC_rd)
);

LUT11TDP RPC_dz_coin(
    .clka(CLK_160),
    .ena(ena),
    .wea(wea),
    .addra({pos_SSC_which[2:0], RPC_track_can[15:13], RPC_track_can[9:5]}),
    .dina(4'b0),
    .douta(pT_dz_RPC),
    .clkb(CLK_Q40),
    .enb(enb),
    .web(LUT_init_flg_in_RPC_dz),
    .addrb(LUT_address[10:0]),
    .dinb(LUT_init_data_in[3:0]),
    .doutb(pT_dz_RPC_rd)
);

LUT_ptTDP RPC_pT_merger(
    .clka(CLK_160),
    .ena(ena),
    .wea(wea),
    .addra({pT_BW, pT_pos_RPC_merger_in, pT_angle_RPC_merger_in}),
    .dina(5'b0),
    .douta({Inner_flag_RPC, pT_RPC}),
    .clkb(CLK_Q40),
    .enb(enb),
    .web(LUT_init_flg_in_RPC_PT),
    .addrb(LUT_address[11:0]),
    .dinb(LUT_init_data_in[4:0]),
    .doutb(pT_RPC_rd)
);

/*
//simple test
reg [3:0] reg_0;
reg [3:0] reg_1;
reg [3:0] reg_2;
assign pT_pos_RPC = reg_0;
assign pT_dphi_RPC = reg_1;
assign pT_dz_RPC = reg_2;
always @(posedge CLK_160) begin
    reg_0 <= RPC_track_can[3:0];
    reg_1 <= {1'b0, RPC_track_can[12:10]};
    reg_2 <= {1'b0, RPC_track_can[15:13]};
end

wire [3:0] tmp_pt0 = {pT_BW[1:0], pT_pos_RPC_merger_in[0], pT_angle_RPC_merger_in[0]};
reg [3:0] reg_3;
reg reg_4;
assign pT_RPC = reg_3;
assign Inner_flag_RPC = reg_4;
always @(posedge CLK_160) begin
    reg_3 <= tmp_pt0;
    reg_4 <= 1'b1;
end 

reg [1:0] inner;
assign Inner_Detectors = inner;
always @(posedge CLK_40) begin
    inner <= inner + 2'b1;
end
*/

//compare pT of all candidate before now
assign H_pT = compare_flagpT({Inner_flag_RPC, pT_RPC}, {H_trig_SSC_Inner_flag, H_trig_SSC_pT}) ? pT_RPC : H_trig_SSC_pT;
assign Inner_flag_H_pT = compare_flagpT({Inner_flag_RPC, pT_RPC}, {H_trig_SSC_Inner_flag, H_trig_SSC_pT}) ? Inner_flag_RPC : H_trig_SSC_Inner_flag;

//switching highest pT for conserve first track result
assign H_trig_SSC_pT = (set_out) ? 4'b0 : H_trig_SSC_pT_reg;
assign H_trig_SSC_Inner_flag = (set_out) ? 1'b0 : H_trig_SSC_Inner_flag_reg;


///////////////////which_inner///////////////////
wire [2:0] ROI_in = trig_SSC_BW[6:4];
wire [3:0] pT_in = trig_SSC_BW[3:0];

LUT7TDP which_Inner( 
    .clka(CLK_40),
    .ena(ena),
    .wea(wea),
    .addra({ROI_in[2:0], pT_in[3:0]}),
    .dina(3'b0), 
    .douta(Inner_Detectors[2:0]),
    .clkb(CLK_Q40),
    .enb(enb),
    .web(LUT_init_flg_in_which_inner),
    .addrb(LUT_address[6:0]),
    .dinb(LUT_init_data_in[2:0]),
    .doutb(Inner_Detectors_rd[2:0])
);  
        

//temporary register for output
reg [2:0] pre_ROI;
reg pre_BW_charge;
reg pre_BW_station_flag;
reg pre_Good_MF_flag;   

// valid SSC flag
wire valid_SSC_BW;
assign valid_SSC_BW = valid_hit(trig_SSC_BW[3:0]);
reg valid_SSC_BW_reg;

//pT of the best candidate
wire [3:0] trig_SSC_pT_final;
assign trig_SSC_pT_final = trig_SSC_pT_RPC_final[3:0];

// RPC/Tile/EIdisable =0 ; /Tile/EI coincidence is required at this SSC, 
//                    =1 ; /Tile/EI coincidence is not required at this SSC.

//Inner Flag for MUCTPI (trigger path)
wire [2:0] InnerCoincidenceEnable;
assign InnerCoincidenceEnable[2:0] = Inner_Detectors & {!RPCdisable, !TILEdisable, !EIdisable};
wire InnerFlag;
assign InnerFlag = !(|InnerCoincidenceEnable) ? 1'b1 : |(InnerCoincidenceEnable & {trig_SSC_Inner_flag_RPC_final, Inner_flag_Tile, Inner_flag_EI});

//Inner Coincidence Flag for SROD (readout path)
wire [2:0] InnerCoincidenceFlag;
assign InnerCoincidenceFlag[2:0] = Inner_Detectors & {trig_SSC_Inner_flag_RPC_final, Inner_flag_Tile, Inner_flag_EI};



// Latch input data
always @(posedge CLK_40) begin
    pre_ROI[2:0] <= trig_SSC_BW[6:4];
    pre_BW_charge <= trig_SSC_BW[7];
    pre_BW_station_flag <= trig_SSC_BW[8];
    pre_Good_MF_flag <= trig_SSC_BW[9];
    valid_SSC_BW_reg <= valid_SSC_BW;    
end

// To output
always @(posedge CLK_40) begin
    trig_SSC[14:11]  <= (valid_SSC_BW_reg) ? {1'b0, InnerCoincidenceFlag} : 4'b0;
    trig_SSC[10]  <= pre_Good_MF_flag;
    trig_SSC[9]   <= (valid_SSC_BW_reg) ? InnerFlag : 1'b0;
    trig_SSC[8]   <= pre_BW_station_flag;
    trig_SSC[7:5] <= pre_ROI[2:0];
    trig_SSC[4]   <= pre_BW_charge;
    trig_SSC[3:0] <= trig_SSC_pT_final[3:0];
    valid_SSC     <= valid_SSC_BW_reg;
end

endmodule

