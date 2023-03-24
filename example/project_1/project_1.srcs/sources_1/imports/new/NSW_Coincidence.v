`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/30 22:12:37
// Design Name: 
// Module Name: NSW_Coincidence
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


module NSW_Coincidence(
    input wire CLK_320,
    input wire CLK_40,
    input wire CLK_Q40,
    input wire reset_in,
    
    input wire [9:0] trig_SSC_BW,
    input wire [239:0] NSW_decoded_in,

    input wire NSW0_data_error,
    input wire NSW1_data_error,
    input wire NSW2_data_error,
    input wire NSW3_data_error,
    input wire NSWdisable,

    input wire [4:0] LUT_init_data_in,
    input wire [13:0] LUT_init_Address_in,
    input wire LUT_init_flg_in_NSW_dphi,
    input wire LUT_init_flg_in_NSW_dtheta,
    input wire LUT_init_flg_in_PT,
    input wire [1:0] LUT_init_mode_in,

    input wire [13:0] LUT_rd_address_in,
    input wire [3:0] LUT_rd_type_in,
    input wire LUT_rd_R_in,
    output wire [4:0] LUT_rd_data_out,
    
    output reg [14:0] trig_SSC,
    output reg valid_SSC
);

parameter PAUSE = 4'hf;
parameter PRESTART = 4'h0;
parameter TRACK1 = 4'h1;
parameter TRACK2 = 4'h2;
parameter TRACK3 = 4'h3;
parameter TRACK4 = 4'h4;
parameter TRACK5 = 4'h5;
parameter TRACK6 = 4'h6;
parameter TRACK7 = 4'h7;
parameter TRACK8 = 4'h8;

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

// LUT configuration

wire [13:0] LUT_address = (LUT_init_mode_in == 2'h1) ? LUT_init_Address_in : 
                          (LUT_init_mode_in == 2'h2) ? LUT_rd_address_in : 
                          14'h0;

wire [3:0] pT_phi_NSW_rd, pT_theta_NSW_rd;
wire [4:0] pT_NSW_rd;

assign LUT_rd_data_out[4:0] = 
(LUT_rd_type_in == 4'h2 && LUT_rd_R_in == 1'h1) ? {1'b0, pT_phi_NSW_rd} :
(LUT_rd_type_in == 4'h3 && LUT_rd_R_in == 1'h1) ? {1'b0, pT_theta_NSW_rd} :
(LUT_rd_type_in == 4'h4 && LUT_rd_R_in == 1'h1) ? pT_NSW_rd : 5'b0;

wire ena = 1'b1;
wire enb = 1'b1;
wire wea = 1'b0;


///////////////////NSW_coincidence///////////////////
wire [239:0] NSW_decoded;

assign NSW_decoded[59:0] = !NSW0_data_error ? NSW_decoded_in[59:0] : 60'h844108821104220;
assign NSW_decoded[119:60] = !NSW1_data_error ? NSW_decoded_in[119:60] : 60'h844108821104220;
assign NSW_decoded[179:120] = !NSW2_data_error ? NSW_decoded_in[179:120] : 60'h844108821104220;
assign NSW_decoded[239:180] = !NSW3_data_error ? NSW_decoded_in[239:180] : 60'h844108821104220;

// state LUT input and output 320 MHz
reg [3:0] Coin_state = 4'b001;

//select input track
reg set_1_reg;
reg set_8_reg;
wire set_1 = set_1_reg;
wire set_8 = set_8_reg;

//input NSW LUT
wire [14:0] NSW0_track_can, NSW1_track_can;  //input LUT
reg [14:0] NSW0_track_reg, NSW1_track_reg;   //input LUT reg
assign NSW0_track_can[14:0] = (set_1) ? NSW_decoded[14:0] : NSW0_track_reg[14:0];
assign NSW1_track_can[14:0] = (set_1) ? NSW_decoded[134:120] : NSW1_track_reg[14:0];

//input LUT RoI
wire [2:0] pos_SSC_which;
reg [2:0] pos_SSC_pre;
assign pos_SSC_which[2:0] = (set_8) ? pos_SSC_pre[2:0] : trig_SSC_BW[6:4];

//input BW pT
wire [3:0] pT_BW;
reg [3:0] pT_BW_reg;
assign pT_BW = pT_BW_reg;

//output LUT pT
wire [3:0] pT_phi_NSW0;
wire [3:0] pT_theta_NSW0;    
wire [3:0] pT_phi_NSW1;
wire [3:0] pT_theta_NSW1;

//register of output LUT pT before pT merger input
reg [3:0] pT_phi_NSW0_reg;
reg [3:0] pT_theta_NSW0_reg;    
reg [3:0] pT_phi_NSW1_reg;
reg [3:0] pT_theta_NSW1_reg;

//input wire for pT merger
wire [3:0] pT_phi_NSW0_merger_in;
wire [3:0] pT_theta_NSW0_merger_in;
wire [3:0] pT_phi_NSW1_merger_in;
wire [3:0] pT_theta_NSW1_merger_in;

assign pT_phi_NSW0_merger_in = (!NSWdisable) ? pT_phi_NSW0_reg : 4'h0;
assign pT_phi_NSW1_merger_in = (!NSWdisable) ? pT_phi_NSW1_reg : 4'h0;
assign pT_theta_NSW0_merger_in = (!NSWdisable) ? pT_theta_NSW0_reg : 4'h0;
assign pT_theta_NSW1_merger_in = (!NSWdisable) ? pT_theta_NSW1_reg : 4'h0;

//output pT merger
wire [3:0] pT_NSW0;
wire Inner_flag_NSW0;   
wire [3:0] pT_NSW1;
wire Inner_flag_NSW1;   

//output pT merger register
reg [3:0] pT_NSW0_reg;
reg Inner_flag_NSW0_reg;   
reg [3:0] pT_NSW1_reg;
reg Inner_flag_NSW1_reg;   

//for compare pT
wire [3:0] pT_NSW0_tmp;
wire Inner_flag_NSW0_tmp;   
wire [3:0] pT_NSW1_tmp;
wire Inner_flag_NSW1_tmp;   

assign pT_NSW0_tmp = pT_NSW0_reg;
assign Inner_flag_NSW0_tmp = Inner_flag_NSW0_reg;
assign pT_NSW1_tmp = pT_NSW1_reg;
assign Inner_flag_NSW1_tmp = Inner_flag_NSW1_reg;

//higher pT of 2 candidate and register
wire [3:0] pT_NSW_tmp;
wire Inner_flag_NSW_tmp;   
reg  [3:0] pT_NSW_tmp_reg;
reg  Inner_flag_NSW_tmp_reg;   

//temporary wire for comparing pT for all candidate
wire [3:0] pT_NSW_tmp_all = pT_NSW_tmp_reg;
wire Inner_flag_NSW_tmp_all = Inner_flag_NSW_tmp_reg;

//temporary wire of comapre pT of all candidate
wire [3:0] H_pT;
wire Inner_flag_H_pT;   

//temporary wire of highest pT before now and register(it assigns 0 or H_pT)
wire [3:0] H_trig_SSC_pT;
reg  [3:0] H_trig_SSC_pT_reg;
wire H_trig_SSC_Inner_flag;
reg  H_trig_SSC_Inner_flag_reg;

//set first track result
wire set_out;
reg set_out_reg;
assign set_out = set_out_reg;

//temporary register for 40 MHz clock edge
reg [3:0] trig_SSC_pT_out;
wire [3:0] trig_SSC_pT_final = trig_SSC_pT_out;
reg trig_SSC_Inner_flag_out;
wire trig_SSC_Inner_flag_final = (!NSWdisable) ? trig_SSC_Inner_flag_out : 1'b1;
wire InnerCoincidenceFlag = trig_SSC_Inner_flag_out;

//not make latency
always @(negedge CLK_40 or posedge reset_in) begin
    if(reset_in) begin
        pos_SSC_pre[2:0] <= 3'b0;
    end
    else begin
        pos_SSC_pre[2:0] <= trig_SSC_BW[6:4];
    end
end

// state LUT input and output 320 MHz
always @(posedge CLK_320) begin
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
                Coin_state <= TRACK5;
            end
            TRACK5 : begin
                Coin_state <= TRACK6;
            end
            TRACK6 : begin
                Coin_state <= TRACK7;
            end
            TRACK7 : begin
                Coin_state <= TRACK8;
            end
            TRACK8 : begin
                Coin_state <= TRACK1;
            end
            default : begin
                Coin_state <= PAUSE;
            end
        endcase
    end
end

always @(posedge CLK_320) begin
   //pT
    H_trig_SSC_pT_reg <= H_pT; 
    pT_NSW0_reg <= pT_NSW0;
    pT_NSW1_reg <= pT_NSW1;
    pT_NSW_tmp_reg <= pT_NSW_tmp;
    pT_phi_NSW0_reg <= pT_phi_NSW0;
    pT_phi_NSW1_reg <= pT_phi_NSW1;
    pT_theta_NSW0_reg <= pT_theta_NSW0;
    pT_theta_NSW1_reg <= pT_theta_NSW1;
   //Inner flag
    H_trig_SSC_Inner_flag_reg <= Inner_flag_H_pT;
    Inner_flag_NSW0_reg <= Inner_flag_NSW0;  
    Inner_flag_NSW1_reg <= Inner_flag_NSW1;
    Inner_flag_NSW_tmp_reg <= Inner_flag_NSW_tmp;

    case (Coin_state)
        PAUSE : begin
            set_out_reg <= 1'b0;
            set_1_reg <= 1'b0;
            set_8_reg <= 1'b0;
        end
        PRESTART : begin
            set_out_reg <= 1'b0;
            set_1_reg <= 1'b1;
            set_8_reg <= 1'b0;
        end
        TRACK1 : begin
            NSW0_track_reg <= NSW_decoded[44:30];
            NSW1_track_reg <= NSW_decoded[164:150];
            pT_BW_reg <= trig_SSC_BW[3:0];
            set_out_reg <= 1'b0;
            set_1_reg <= 1'b0;
            set_8_reg <= 1'b0;
        end
        TRACK2 : begin
            NSW0_track_reg <= NSW_decoded[59:45];
            NSW1_track_reg <= NSW_decoded[179:165];     
            set_out_reg <= 1'b0;
            set_1_reg <= 1'b0;
            set_8_reg <= 1'b0;
        end
        TRACK3 : begin
            NSW0_track_reg <= NSW_decoded[74:60];
            NSW1_track_reg <= NSW_decoded[194:180];
            set_out_reg <= 1'b0;
            set_1_reg <= 1'b0;
            set_8_reg <= 1'b0;
        end
        TRACK4 : begin
            NSW0_track_reg <= NSW_decoded[89:75];
            NSW1_track_reg <= NSW_decoded[209:195];
            trig_SSC_pT_out[3:0] <= H_pT;
            trig_SSC_Inner_flag_out <= Inner_flag_H_pT;
            set_out_reg <= 1'b0;
            set_1_reg <= 1'b0;
            set_8_reg <= 1'b0;
        end
        TRACK5 : begin
            NSW0_track_reg <= NSW_decoded[104:90];
            NSW1_track_reg <= NSW_decoded[224:210];
            set_out_reg <= 1'b0;
            set_1_reg <= 1'b0;
            set_8_reg <= 1'b0;
        end
        TRACK6 : begin
            NSW0_track_reg <= NSW_decoded[119:105];
            NSW1_track_reg <= NSW_decoded[239:225];
            set_out_reg <= 1'b1;
            set_1_reg <= 1'b0;
            set_8_reg <= 1'b1;
        end
        TRACK7 : begin
            set_out_reg <= 1'b0;
            set_1_reg <= 1'b1;
            set_8_reg <= 1'b0;
        end
        TRACK8 : begin
            NSW0_track_reg <= NSW_decoded[29:15];
            NSW1_track_reg <= NSW_decoded[149:135];
            set_out_reg <= 1'b0;
            set_1_reg <= 1'b0;
            set_8_reg <= 1'b0;
        end
        default : begin
            set_out_reg <= 1'b0;
            set_1_reg <= 1'b0;
            set_8_reg <= 1'b0;
        end
    endcase
end

// True Dual Port LUT
// PortA is driven by CLK_320,  PortB is driven by CLK_Q40
LUT13TDP NSW_dphi_coin0(
    .clka(CLK_320),
    .ena(ena),
    .wea(wea), // always disabled 
    .addra({pos_SSC_which[2:0], NSW0_track_can[9:0]}), 
    .dina(4'b0),
    .douta(pT_phi_NSW0),
    .clkb(CLK_Q40),
    .enb(enb),
    .web(LUT_init_flg_in_NSW_dphi),
    .addrb(LUT_address[12:0]),
    .dinb(LUT_init_data_in[3:0]),
    .doutb(pT_phi_NSW_rd)
);

LUT13TDP NSW_dphi_coin1(
    .clka(CLK_320),
    .ena(ena),
    .wea(wea), // always disabled 
    .addra({pos_SSC_which[2:0], NSW1_track_can[9:0]}), 
    .dina(4'b0),
    .douta(pT_phi_NSW1),
    .clkb(CLK_Q40),
    .enb(enb),
    .web(LUT_init_flg_in_NSW_dphi),
    .addrb(LUT_address[12:0]),
    .dinb(LUT_init_data_in[3:0]),
    .doutb()
);


LUT14TDP NSW_dtheta_coin0(
    .clka(CLK_320),
    .ena(ena),
    .wea(wea), // always disabled 
    .addra({pos_SSC_which[2:0], NSW0_track_can[14:10],NSW0_track_can[5:0]}), 
    .dina(4'b0),
    .douta(pT_theta_NSW0),
    .clkb(CLK_Q40),
    .enb(enb),
    .web(LUT_init_flg_in_NSW_dtheta),
    .addrb(LUT_address[13:0]),
    .dinb(LUT_init_data_in[3:0]),
    .doutb(pT_theta_NSW_rd)
);

LUT14TDP NSW_dtheta_coin1(
    .clka(CLK_320),
    .ena(ena),
    .wea(wea), // always disabled 
    .addra({pos_SSC_which[2:0], NSW1_track_can[14:10],NSW1_track_can[5:0]}), 
    .dina(4'b0),
    .douta(pT_theta_NSW1),
    .clkb(CLK_Q40),
    .enb(enb),
    .web(LUT_init_flg_in_NSW_dtheta),
    .addrb(LUT_address[13:0]),
    .dinb(LUT_init_data_in[3:0]),
    .doutb()
);


LUT_ptTDP NSW_pT_merger_0(
    .clka(CLK_320),
    .ena(ena),
    .wea(wea),
    .addra({pT_BW, pT_phi_NSW0_merger_in, pT_theta_NSW0_merger_in}),
    .dina(5'b0),
    .douta({Inner_flag_NSW0, pT_NSW0[3:0]}),
    .clkb(CLK_Q40),
    .enb(enb),
    .web(LUT_init_flg_in_PT),
    .addrb(LUT_address[11:0]),
    .dinb(LUT_init_data_in[4:0]),
    .doutb(pT_NSW_rd)
);

LUT_ptTDP NSW_pT_merger_1(
    .clka(CLK_320),
    .ena(ena),
    .wea(wea),
    .addra({pT_BW, pT_phi_NSW1_merger_in, pT_theta_NSW1_merger_in}),
    .dina(5'b0),
    .douta({Inner_flag_NSW1, pT_NSW1[3:0]}),
    .clkb(CLK_Q40),
    .enb(enb),
    .web(LUT_init_flg_in_PT),
    .addrb(LUT_address[11:0]),
    .dinb(LUT_init_data_in[4:0]),
    .doutb()
);

//simple test
/*
reg [3:0] reg_0;
reg [3:0] reg_1;
reg [3:0] reg_2;
reg [3:0] reg_3;
assign pT_phi_NSW0 = reg_0;
assign pT_phi_NSW1 = reg_1;
assign pT_theta_NSW0 = reg_2;
assign pT_theta_NSW1 = reg_3;

always @(posedge CLK_320) begin
    reg_0 <= NSW0_track_can[3:0];
    reg_1 <= NSW1_track_can[3:0];
    reg_2 <= NSW0_track_can[13:10];
    reg_3 <= NSW1_track_can[13:10];    
end

wire [3:0] tmp_pt0 = {pT_BW[1:0], pT_phi_NSW0_merger_in[0], pT_theta_NSW0_merger_in[0]};
wire [3:0] tmp_pt1 = {pT_BW[1:0], pT_phi_NSW1_merger_in[0], pT_theta_NSW1_merger_in[0]};
reg [3:0] reg_4;
reg [3:0] reg_5;
reg reg_6;
reg reg_7;
assign pT_NSW0 = reg_4;
assign pT_NSW1 = reg_5;
assign Inner_flag_NSW0 = reg_6;
assign Inner_flag_NSW1 = reg_7;
always @(posedge CLK_320) begin
    reg_4 <= tmp_pt0;
    reg_5 <= tmp_pt1;
    reg_6 <= 1'b1;
    reg_7 <= 1'b1;    
end
*/

//compare of 2 pT candidate
assign pT_NSW_tmp = compare_flagpT({Inner_flag_NSW0_tmp, pT_NSW0_tmp}, {Inner_flag_NSW1_tmp, pT_NSW1_tmp}) ? pT_NSW0_tmp : pT_NSW1_tmp;
assign Inner_flag_NSW_tmp = compare_flagpT({Inner_flag_NSW0_tmp, pT_NSW0_tmp}, {Inner_flag_NSW1_tmp, pT_NSW1_tmp}) ? Inner_flag_NSW0_tmp : Inner_flag_NSW1_tmp;

//compare pT of all candidate before now
assign H_pT = compare_flagpT({Inner_flag_NSW_tmp_all, pT_NSW_tmp_all}, {H_trig_SSC_Inner_flag, H_trig_SSC_pT}) ? pT_NSW_tmp_all : H_trig_SSC_pT;
assign Inner_flag_H_pT = compare_flagpT({Inner_flag_NSW_tmp_all, pT_NSW_tmp_all}, {H_trig_SSC_Inner_flag, H_trig_SSC_pT}) ? Inner_flag_NSW_tmp_all : H_trig_SSC_Inner_flag;

//switching highest pT for conserve first track result
assign H_trig_SSC_pT = (set_out) ? 4'b0 : H_trig_SSC_pT_reg;
assign H_trig_SSC_Inner_flag = (set_out) ? 1'b0 : H_trig_SSC_Inner_flag_reg;
    
//temporary register for output
reg [2:0] pos_SSC_reg;
reg pre_BW_charge;
reg pre_BW_station_flag;
reg pre_Good_MF_flag;

// valid SSC flag
wire valid_SSC_BW;
assign valid_SSC_BW = valid_hit(trig_SSC_BW[3:0]);
reg valid_SSC_BW_reg;

// Latch input data
always @(posedge CLK_40) begin
    pos_SSC_reg <= pos_SSC_pre[2:0];
    pre_BW_charge <= trig_SSC_BW[7];
    pre_BW_station_flag <= trig_SSC_BW[8];
    pre_Good_MF_flag <= trig_SSC_BW[9];
    valid_SSC_BW_reg <= valid_SSC_BW;
end

// To output
always @(posedge CLK_40) begin
    trig_SSC[14:11] <= (valid_SSC_BW_reg) ? {InnerCoincidenceFlag, 3'h0} : 4'b0;
    trig_SSC[10]    <= pre_Good_MF_flag;
    trig_SSC[9]     <= (valid_SSC_BW_reg) ? trig_SSC_Inner_flag_final : 1'b0;
    trig_SSC[8]     <= pre_BW_station_flag;
    trig_SSC[7:5]   <= pos_SSC_reg[2:0];
    trig_SSC[4]     <= pre_BW_charge;
    trig_SSC[3:0]   <= trig_SSC_pT_final[3:0];
    valid_SSC       <= valid_SSC_BW_reg;
end


endmodule

