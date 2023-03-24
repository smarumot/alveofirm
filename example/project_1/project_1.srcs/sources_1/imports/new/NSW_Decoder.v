`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/11/24 13:52:06
// Design Name: 
// Module Name: NSW_Decoder
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


module NSW_Decoder(
    input wire CLK_in,

    input wire [95:0] NSW_0_in,
    input wire [95:0] NSW_1_in,
    input wire [95:0] NSW_2_in,
    input wire [95:0] NSW_3_in,
    input wire [1:0] RoI_phi,
    
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

    output reg [239:0] NSW_decoded
);

function [5:0] decoder_phi;
    input [5:0] NSW_track;
    input [5:0] phi_subtract;
    begin
        decoder_phi[5:0] = NSW_track[5:0] - phi_subtract[5:0];
    end
endfunction

function [7:0] decoder_eta;
    input [7:0] NSW_track;
    input [7:0] eta_subtract;
    begin
        decoder_eta[7:0] = NSW_track[7:0] - eta_subtract[7:0];
    end
endfunction

function [5:0] decoder_phi_sel;
    input [5:0] NSW_track;
    input [1:0] phi_roi;
    input [5:0] phi_subtract0;
    input [5:0] phi_subtract1;
    input [5:0] phi_subtract2;
    input [5:0] phi_subtract3;
    begin
        case (phi_roi)
            2'b00 : begin
                decoder_phi_sel[5:0] = NSW_track[5:0] - phi_subtract0[5:0];
            end
            2'b01 : begin
                decoder_phi_sel[5:0] = NSW_track[5:0] - phi_subtract1[5:0];
            end
            2'b10 : begin
                decoder_phi_sel[5:0] = NSW_track[5:0] - phi_subtract2[5:0];
            end
            2'b11 : begin
                decoder_phi_sel[5:0] = NSW_track[5:0] - phi_subtract3[5:0];
            end
        endcase
    end
endfunction

function [4:0]valid_reverse;
    input [4:0]dtheta;
    begin
        if(dtheta[4] == 1'b0)begin
            valid_reverse[4:0] = {1'b0, dtheta[3:0]};
        end
        else begin
            valid_reverse[4:0] = {1'b1, (4'b1111 - dtheta[3:0])};
        end
    end
endfunction

function [14:0]valid_candidate;
    input [4:0] dtheta;
    input [5:0] dphi;
    input [7:0] deta;
    begin
        if(dtheta[4:0] == 5'b10000) begin//detecting a missing segment
            valid_candidate = 15'h4220;
        end
        else if((dphi[5:3] == 3'b000) && (deta[7:5] == 3'b000)) begin
             valid_candidate = {valid_reverse(dtheta[4:0]), dphi[3:0], deta[5:0]};
        end
        else if((dphi[5:3] == 3'b000) && (deta[7:5] == 3'b111)) begin
            valid_candidate = {valid_reverse(dtheta[4:0]), dphi[3:0], 1'b1, (5'b11111 - deta[4:0])};
        end
        else if((dphi[5:3] == 3'b111) && (deta[7:5] == 3'b000)) begin
            valid_candidate = {valid_reverse(dtheta[4:0]), 1'b1, (3'b111 - dphi[2:0]), deta[5:0]};
        end
        else if((dphi[5:3] == 3'b111) && (deta[7:5] == 3'b111)) begin
            valid_candidate = {valid_reverse(dtheta[4:0]), 1'b1, (3'b111 - dphi[2:0]), 1'b1, (5'b11111 - deta[4:0])};
        end
        else begin
            valid_candidate = 15'h4220;
        end
    end
endfunction

wire [75:0] NSW_0_aligned;
wire [75:0] NSW_1_aligned;
wire [75:0] NSW_2_aligned;
wire [75:0] NSW_3_aligned;

assign NSW_0_aligned[7:0]   = decoder_eta(NSW_0_in[7:0],   Align_eta0_in[7:0]);
assign NSW_0_aligned[26:19] = decoder_eta(NSW_0_in[31:24], Align_eta0_in[7:0]);
assign NSW_0_aligned[45:38] = decoder_eta(NSW_0_in[55:48], Align_eta0_in[7:0]);
assign NSW_0_aligned[64:57] = decoder_eta(NSW_0_in[79:72], Align_eta0_in[7:0]);
assign NSW_1_aligned[7:0]   = decoder_eta(NSW_1_in[7:0],   Align_eta1_in[7:0]);
assign NSW_1_aligned[26:19] = decoder_eta(NSW_1_in[31:24], Align_eta1_in[7:0]);
assign NSW_1_aligned[45:38] = decoder_eta(NSW_1_in[55:48], Align_eta1_in[7:0]);
assign NSW_1_aligned[64:57] = decoder_eta(NSW_1_in[79:72], Align_eta1_in[7:0]);
assign NSW_2_aligned[7:0]   = decoder_eta(NSW_2_in[7:0],   Align_eta2_in[7:0]);
assign NSW_2_aligned[26:19] = decoder_eta(NSW_2_in[31:24], Align_eta2_in[7:0]);
assign NSW_2_aligned[45:38] = decoder_eta(NSW_2_in[55:48], Align_eta2_in[7:0]);
assign NSW_2_aligned[64:57] = decoder_eta(NSW_2_in[79:72], Align_eta2_in[7:0]);
assign NSW_3_aligned[7:0]   = decoder_eta(NSW_3_in[7:0],   Align_eta3_in[7:0]);
assign NSW_3_aligned[26:19] = decoder_eta(NSW_3_in[31:24], Align_eta3_in[7:0]);
assign NSW_3_aligned[45:38] = decoder_eta(NSW_3_in[55:48], Align_eta3_in[7:0]);
assign NSW_3_aligned[64:57] = decoder_eta(NSW_3_in[79:72], Align_eta3_in[7:0]);

assign NSW_0_aligned[13:8]  = decoder_phi(NSW_0_in[13:8],  Align_phi0_in[5:0]);
assign NSW_0_aligned[32:27] = decoder_phi(NSW_0_in[37:32], Align_phi0_in[5:0]);
assign NSW_0_aligned[51:46] = decoder_phi(NSW_0_in[61:56], Align_phi0_in[5:0]);
assign NSW_0_aligned[70:65] = decoder_phi(NSW_0_in[85:80], Align_phi0_in[5:0]);
assign NSW_1_aligned[13:8]  = decoder_phi(NSW_1_in[13:8],  Align_phi1_in[5:0]);
assign NSW_1_aligned[32:27] = decoder_phi(NSW_1_in[37:32], Align_phi1_in[5:0]);
assign NSW_1_aligned[51:46] = decoder_phi(NSW_1_in[61:56], Align_phi1_in[5:0]);
assign NSW_1_aligned[70:65] = decoder_phi(NSW_1_in[85:80], Align_phi1_in[5:0]);
assign NSW_2_aligned[13:8]  = decoder_phi(NSW_2_in[13:8],  Align_phi2_in[5:0]);
assign NSW_2_aligned[32:27] = decoder_phi(NSW_2_in[37:32], Align_phi2_in[5:0]);
assign NSW_2_aligned[51:46] = decoder_phi(NSW_2_in[61:56], Align_phi2_in[5:0]);
assign NSW_2_aligned[70:65] = decoder_phi(NSW_2_in[85:80], Align_phi2_in[5:0]);
assign NSW_3_aligned[13:8]  = decoder_phi(NSW_3_in[13:8],  Align_phi3_in[5:0]);
assign NSW_3_aligned[32:27] = decoder_phi(NSW_3_in[37:32], Align_phi3_in[5:0]);
assign NSW_3_aligned[51:46] = decoder_phi(NSW_3_in[61:56], Align_phi3_in[5:0]);
assign NSW_3_aligned[70:65] = decoder_phi(NSW_3_in[85:80], Align_phi3_in[5:0]);

assign NSW_0_aligned[18:14] = NSW_0_in[18:14];
assign NSW_0_aligned[37:33] = NSW_0_in[42:38];
assign NSW_0_aligned[56:52] = NSW_0_in[66:62];
assign NSW_0_aligned[75:71] = NSW_0_in[90:86];
assign NSW_1_aligned[18:14] = NSW_1_in[18:14];
assign NSW_1_aligned[37:33] = NSW_1_in[42:38];
assign NSW_1_aligned[56:52] = NSW_1_in[66:62];
assign NSW_1_aligned[75:71] = NSW_1_in[90:86];
assign NSW_2_aligned[18:14] = NSW_2_in[18:14];
assign NSW_2_aligned[37:33] = NSW_2_in[42:38];
assign NSW_2_aligned[56:52] = NSW_2_in[66:62];
assign NSW_2_aligned[75:71] = NSW_2_in[90:86];
assign NSW_3_aligned[18:14] = NSW_3_in[18:14];
assign NSW_3_aligned[37:33] = NSW_3_in[42:38];
assign NSW_3_aligned[56:52] = NSW_3_in[66:62];
assign NSW_3_aligned[75:71] = NSW_3_in[90:86];

wire [7:0] NSW_0_deta_0, NSW_0_deta_1, NSW_0_deta_2, NSW_0_deta_3;
wire [7:0] NSW_1_deta_0, NSW_1_deta_1, NSW_1_deta_2, NSW_1_deta_3;
wire [7:0] NSW_2_deta_0, NSW_2_deta_1, NSW_2_deta_2, NSW_2_deta_3;
wire [7:0] NSW_3_deta_0, NSW_3_deta_1, NSW_3_deta_2, NSW_3_deta_3;

wire [5:0] NSW_0_dphi_0, NSW_0_dphi_1, NSW_0_dphi_2, NSW_0_dphi_3;
wire [5:0] NSW_1_dphi_0, NSW_1_dphi_1, NSW_1_dphi_2, NSW_1_dphi_3;
wire [5:0] NSW_2_dphi_0, NSW_2_dphi_1, NSW_2_dphi_2, NSW_2_dphi_3;
wire [5:0] NSW_3_dphi_0, NSW_3_dphi_1, NSW_3_dphi_2, NSW_3_dphi_3;

assign NSW_0_deta_0[7:0] = decoder_eta(NSW_0_aligned[7:0],   Eta_sub[7:0]);
assign NSW_0_deta_1[7:0] = decoder_eta(NSW_0_aligned[26:19], Eta_sub[7:0]);
assign NSW_0_deta_2[7:0] = decoder_eta(NSW_0_aligned[45:38], Eta_sub[7:0]);
assign NSW_0_deta_3[7:0] = decoder_eta(NSW_0_aligned[64:57], Eta_sub[7:0]);
assign NSW_1_deta_0[7:0] = decoder_eta(NSW_1_aligned[7:0],   Eta_sub[7:0]);
assign NSW_1_deta_1[7:0] = decoder_eta(NSW_1_aligned[26:19], Eta_sub[7:0]);
assign NSW_1_deta_2[7:0] = decoder_eta(NSW_1_aligned[45:38], Eta_sub[7:0]);
assign NSW_1_deta_3[7:0] = decoder_eta(NSW_1_aligned[64:57], Eta_sub[7:0]);
assign NSW_2_deta_0[7:0] = decoder_eta(NSW_2_aligned[7:0],   Eta_sub[7:0]);
assign NSW_2_deta_1[7:0] = decoder_eta(NSW_2_aligned[26:19], Eta_sub[7:0]);
assign NSW_2_deta_2[7:0] = decoder_eta(NSW_2_aligned[45:38], Eta_sub[7:0]);
assign NSW_2_deta_3[7:0] = decoder_eta(NSW_2_aligned[64:57], Eta_sub[7:0]);
assign NSW_3_deta_0[7:0] = decoder_eta(NSW_3_aligned[7:0],   Eta_sub[7:0]);
assign NSW_3_deta_1[7:0] = decoder_eta(NSW_3_aligned[26:19], Eta_sub[7:0]);
assign NSW_3_deta_2[7:0] = decoder_eta(NSW_3_aligned[45:38], Eta_sub[7:0]);
assign NSW_3_deta_3[7:0] = decoder_eta(NSW_3_aligned[64:57], Eta_sub[7:0]);

assign NSW_0_dphi_0[5:0] = decoder_phi_sel(NSW_0_aligned[13:8],  RoI_phi[1:0], Phi_sub0[5:0], Phi_sub1[5:0], Phi_sub2[5:0], Phi_sub3[5:0]);
assign NSW_0_dphi_1[5:0] = decoder_phi_sel(NSW_0_aligned[32:27], RoI_phi[1:0], Phi_sub0[5:0], Phi_sub1[5:0], Phi_sub2[5:0], Phi_sub3[5:0]);
assign NSW_0_dphi_2[5:0] = decoder_phi_sel(NSW_0_aligned[51:46], RoI_phi[1:0], Phi_sub0[5:0], Phi_sub1[5:0], Phi_sub2[5:0], Phi_sub3[5:0]);
assign NSW_0_dphi_3[5:0] = decoder_phi_sel(NSW_0_aligned[70:65], RoI_phi[1:0], Phi_sub0[5:0], Phi_sub1[5:0], Phi_sub2[5:0], Phi_sub3[5:0]);
assign NSW_1_dphi_0[5:0] = decoder_phi_sel(NSW_1_aligned[13:8],  RoI_phi[1:0], Phi_sub0[5:0], Phi_sub1[5:0], Phi_sub2[5:0], Phi_sub3[5:0]);
assign NSW_1_dphi_1[5:0] = decoder_phi_sel(NSW_1_aligned[32:27], RoI_phi[1:0], Phi_sub0[5:0], Phi_sub1[5:0], Phi_sub2[5:0], Phi_sub3[5:0]);
assign NSW_1_dphi_2[5:0] = decoder_phi_sel(NSW_1_aligned[51:46], RoI_phi[1:0], Phi_sub0[5:0], Phi_sub1[5:0], Phi_sub2[5:0], Phi_sub3[5:0]);
assign NSW_1_dphi_3[5:0] = decoder_phi_sel(NSW_1_aligned[70:65], RoI_phi[1:0], Phi_sub0[5:0], Phi_sub1[5:0], Phi_sub2[5:0], Phi_sub3[5:0]);
assign NSW_2_dphi_0[5:0] = decoder_phi_sel(NSW_2_aligned[13:8],  RoI_phi[1:0], Phi_sub0[5:0], Phi_sub1[5:0], Phi_sub2[5:0], Phi_sub3[5:0]);
assign NSW_2_dphi_1[5:0] = decoder_phi_sel(NSW_2_aligned[32:27], RoI_phi[1:0], Phi_sub0[5:0], Phi_sub1[5:0], Phi_sub2[5:0], Phi_sub3[5:0]);
assign NSW_2_dphi_2[5:0] = decoder_phi_sel(NSW_2_aligned[51:46], RoI_phi[1:0], Phi_sub0[5:0], Phi_sub1[5:0], Phi_sub2[5:0], Phi_sub3[5:0]);
assign NSW_2_dphi_3[5:0] = decoder_phi_sel(NSW_2_aligned[70:65], RoI_phi[1:0], Phi_sub0[5:0], Phi_sub1[5:0], Phi_sub2[5:0], Phi_sub3[5:0]);
assign NSW_3_dphi_0[5:0] = decoder_phi_sel(NSW_3_aligned[13:8],  RoI_phi[1:0], Phi_sub0[5:0], Phi_sub1[5:0], Phi_sub2[5:0], Phi_sub3[5:0]);
assign NSW_3_dphi_1[5:0] = decoder_phi_sel(NSW_3_aligned[32:27], RoI_phi[1:0], Phi_sub0[5:0], Phi_sub1[5:0], Phi_sub2[5:0], Phi_sub3[5:0]);
assign NSW_3_dphi_2[5:0] = decoder_phi_sel(NSW_3_aligned[51:46], RoI_phi[1:0], Phi_sub0[5:0], Phi_sub1[5:0], Phi_sub2[5:0], Phi_sub3[5:0]);
assign NSW_3_dphi_3[5:0] = decoder_phi_sel(NSW_3_aligned[70:65], RoI_phi[1:0], Phi_sub0[5:0], Phi_sub1[5:0], Phi_sub2[5:0], Phi_sub3[5:0]);

wire [14:0] NSW_0_decoded_0, NSW_0_decoded_1, NSW_0_decoded_2, NSW_0_decoded_3;
wire [14:0] NSW_1_decoded_0, NSW_1_decoded_1, NSW_1_decoded_2, NSW_1_decoded_3;
wire [14:0] NSW_2_decoded_0, NSW_2_decoded_1, NSW_2_decoded_2, NSW_2_decoded_3;
wire [14:0] NSW_3_decoded_0, NSW_3_decoded_1, NSW_3_decoded_2, NSW_3_decoded_3;

assign NSW_0_decoded_0[14:0] = valid_candidate(NSW_0_aligned[18:14], NSW_0_dphi_0[5:0], NSW_0_deta_0[7:0]);
assign NSW_0_decoded_1[14:0] = valid_candidate(NSW_0_aligned[37:33], NSW_0_dphi_1[5:0], NSW_0_deta_1[7:0]);
assign NSW_0_decoded_2[14:0] = valid_candidate(NSW_0_aligned[56:52], NSW_0_dphi_2[5:0], NSW_0_deta_2[7:0]);
assign NSW_0_decoded_3[14:0] = valid_candidate(NSW_0_aligned[75:71], NSW_0_dphi_3[5:0], NSW_0_deta_3[7:0]);
assign NSW_1_decoded_0[14:0] = valid_candidate(NSW_1_aligned[18:14], NSW_1_dphi_0[5:0], NSW_1_deta_0[7:0]);
assign NSW_1_decoded_1[14:0] = valid_candidate(NSW_1_aligned[37:33], NSW_1_dphi_1[5:0], NSW_1_deta_1[7:0]);
assign NSW_1_decoded_2[14:0] = valid_candidate(NSW_1_aligned[56:52], NSW_1_dphi_2[5:0], NSW_1_deta_2[7:0]);
assign NSW_1_decoded_3[14:0] = valid_candidate(NSW_1_aligned[75:71], NSW_1_dphi_3[5:0], NSW_1_deta_3[7:0]);
assign NSW_2_decoded_0[14:0] = valid_candidate(NSW_2_aligned[18:14], NSW_2_dphi_0[5:0], NSW_2_deta_0[7:0]);
assign NSW_2_decoded_1[14:0] = valid_candidate(NSW_2_aligned[37:33], NSW_2_dphi_1[5:0], NSW_2_deta_1[7:0]);
assign NSW_2_decoded_2[14:0] = valid_candidate(NSW_2_aligned[56:52], NSW_2_dphi_2[5:0], NSW_2_deta_2[7:0]);
assign NSW_2_decoded_3[14:0] = valid_candidate(NSW_2_aligned[75:71], NSW_2_dphi_3[5:0], NSW_2_deta_3[7:0]);
assign NSW_3_decoded_0[14:0] = valid_candidate(NSW_3_aligned[18:14], NSW_3_dphi_0[5:0], NSW_3_deta_0[7:0]);
assign NSW_3_decoded_1[14:0] = valid_candidate(NSW_3_aligned[37:33], NSW_3_dphi_1[5:0], NSW_3_deta_1[7:0]);
assign NSW_3_decoded_2[14:0] = valid_candidate(NSW_3_aligned[56:52], NSW_3_dphi_2[5:0], NSW_3_deta_2[7:0]);
assign NSW_3_decoded_3[14:0] = valid_candidate(NSW_3_aligned[75:71], NSW_3_dphi_3[5:0], NSW_3_deta_3[7:0]);

always @(posedge CLK_in) begin
    NSW_decoded[14:0]    <= NSW_0_decoded_0[14:0];
    NSW_decoded[29:15]   <= NSW_0_decoded_1[14:0];
    NSW_decoded[44:30]   <= NSW_0_decoded_2[14:0];
    NSW_decoded[59:45]   <= NSW_0_decoded_3[14:0];
    NSW_decoded[74:60]   <= NSW_1_decoded_0[14:0];
    NSW_decoded[89:75]   <= NSW_1_decoded_1[14:0];
    NSW_decoded[104:90]  <= NSW_1_decoded_2[14:0];
    NSW_decoded[119:105] <= NSW_1_decoded_3[14:0];
    NSW_decoded[134:120] <= NSW_2_decoded_0[14:0];
    NSW_decoded[149:135] <= NSW_2_decoded_1[14:0];
    NSW_decoded[164:150] <= NSW_2_decoded_2[14:0];
    NSW_decoded[179:165] <= NSW_2_decoded_3[14:0];
    NSW_decoded[194:180] <= NSW_3_decoded_0[14:0];
    NSW_decoded[209:195] <= NSW_3_decoded_1[14:0];
    NSW_decoded[224:210] <= NSW_3_decoded_2[14:0];
    NSW_decoded[239:225] <= NSW_3_decoded_3[14:0];
end



endmodule
