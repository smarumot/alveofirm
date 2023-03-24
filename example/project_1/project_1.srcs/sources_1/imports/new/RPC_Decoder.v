`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/12/05 06:16:28
// Design Name: 
// Module Name: RPC_Decoder
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


module RPC_Decoder(
    input wire CLK_in,

    input wire [95:0] RPC_in,
    input wire [1:0] RoI_phi,
    
    input wire [5:0] Align_eta_in,
    input wire [5:0] Align_phi_in,
    input wire [5:0] Eta_sub,
    input wire [5:0] Phi_sub0,
    input wire [5:0] Phi_sub1,
    input wire [5:0] Phi_sub2,
    input wire [5:0] Phi_sub3,

    output reg [63:0] RPC_decoded
);

function [5:0] decoder_phi;
    input [5:0] RPC_track;
    input [5:0] phi_subtract;
    begin
        decoder_phi[5:0] = RPC_track[5:0] - phi_subtract[5:0];
    end
endfunction

function [5:0] decoder_eta;
    input [5:0] RPC_track;
    input [5:0] eta_subtract;
    begin
        decoder_eta[5:0] = RPC_track[5:0] - eta_subtract[5:0];
    end
endfunction

function [5:0] decoder_phi_sel;
    input [5:0] RPC_track;
    input [1:0] phi_roi;
    input [5:0] phi_subtract0;
    input [5:0] phi_subtract1;
    input [5:0] phi_subtract2;
    input [5:0] phi_subtract3;
    begin
        case (phi_roi)
            2'b00 : begin
                decoder_phi_sel[5:0] = RPC_track[5:0] - phi_subtract0[5:0];
            end
            2'b01 : begin
                decoder_phi_sel[5:0] = RPC_track[5:0] - phi_subtract1[5:0];
            end
            2'b10 : begin
                decoder_phi_sel[5:0] = RPC_track[5:0] - phi_subtract2[5:0];
            end
            2'b11 : begin
                decoder_phi_sel[5:0] = RPC_track[5:0] - phi_subtract3[5:0];
            end
        endcase
    end
endfunction

function [2:0]valid_reverse;
    input [2:0]phieta;
    begin
        if(phieta[2] == 1'b0)begin
            valid_reverse[2:0] = {1'b0, phieta[1:0]};
        end
        else begin
            valid_reverse[2:0] = {1'b1, (2'b11 - phieta[1:0])};
        end
    end
endfunction

function [15:0]valid_candidate;
    input [5:0] phieta;    
    input [5:0] dphi;
    input [5:0] deta;
    begin
        if((dphi[5:4] == 2'b00) && (deta[5:4] == 2'b00)) begin
            valid_candidate = {valid_reverse(phieta[5:3]), valid_reverse(phieta[2:0]), dphi[4:0], deta[4:0]};
        end
        else if((dphi[5:4] == 2'b00) && (deta[5:4] == 2'b11)) begin
            valid_candidate = {valid_reverse(phieta[5:3]), valid_reverse(phieta[2:0]), dphi[4:0], 1'b1, (4'b1111 - deta[3:0])};
        end
        else if((dphi[5:4] == 2'b11) && (deta[5:4] == 2'b00)) begin
            valid_candidate = {valid_reverse(phieta[5:3]), valid_reverse(phieta[2:0]), 1'b1, (4'b1111 - dphi[3:0]), deta[4:0]};
        end
        else if((dphi[5:4] == 2'b11) && (deta[5:4] == 2'b11)) begin
            valid_candidate = {valid_reverse(phieta[5:3]), valid_reverse(phieta[2:0]), 1'b1, (4'b1111 - dphi[3:0]), 1'b1, (4'b1111 - deta[3:0])};
        end
        else begin
            valid_candidate = 16'h9210;
        end
    end
endfunction

wire [71:0] RPC_aligned;

assign RPC_aligned[5:0]   = decoder_eta(RPC_in[5:0],   Align_eta_in[5:0]);
assign RPC_aligned[23:18] = decoder_eta(RPC_in[29:24], Align_eta_in[5:0]);
assign RPC_aligned[41:36] = decoder_eta(RPC_in[53:48], Align_eta_in[5:0]);
assign RPC_aligned[59:54] = decoder_eta(RPC_in[77:72], Align_eta_in[5:0]);

assign RPC_aligned[11:6]  = decoder_phi(RPC_in[11:6],  Align_phi_in[5:0]);
assign RPC_aligned[29:24] = decoder_phi(RPC_in[35:30], Align_phi_in[5:0]);
assign RPC_aligned[47:42] = decoder_phi(RPC_in[59:54], Align_phi_in[5:0]);
assign RPC_aligned[65:60] = decoder_phi(RPC_in[83:78], Align_phi_in[5:0]);

assign RPC_aligned[17:12] = RPC_in[17:12];
assign RPC_aligned[35:30] = RPC_in[41:36];
assign RPC_aligned[53:48] = RPC_in[65:60];
assign RPC_aligned[71:66] = RPC_in[89:84];

wire [5:0] RPC_deta_0, RPC_deta_1, RPC_deta_2, RPC_deta_3;

wire [5:0] RPC_dphi_0, RPC_dphi_1, RPC_dphi_2, RPC_dphi_3;

assign RPC_deta_0[5:0] = decoder_eta(RPC_aligned[5:0],   Eta_sub[5:0]);
assign RPC_deta_1[5:0] = decoder_eta(RPC_aligned[23:18], Eta_sub[5:0]);
assign RPC_deta_2[5:0] = decoder_eta(RPC_aligned[41:36], Eta_sub[5:0]);
assign RPC_deta_3[5:0] = decoder_eta(RPC_aligned[59:54], Eta_sub[5:0]);

assign RPC_dphi_0[5:0] = decoder_phi_sel(RPC_aligned[11:6],  RoI_phi[1:0], Phi_sub0[5:0], Phi_sub1[5:0], Phi_sub2[5:0], Phi_sub3[5:0]);
assign RPC_dphi_1[5:0] = decoder_phi_sel(RPC_aligned[29:24], RoI_phi[1:0], Phi_sub0[5:0], Phi_sub1[5:0], Phi_sub2[5:0], Phi_sub3[5:0]);
assign RPC_dphi_2[5:0] = decoder_phi_sel(RPC_aligned[47:42], RoI_phi[1:0], Phi_sub0[5:0], Phi_sub1[5:0], Phi_sub2[5:0], Phi_sub3[5:0]);
assign RPC_dphi_3[5:0] = decoder_phi_sel(RPC_aligned[65:60], RoI_phi[1:0], Phi_sub0[5:0], Phi_sub1[5:0], Phi_sub2[5:0], Phi_sub3[5:0]);

wire [15:0] RPC_decoded_0, RPC_decoded_1, RPC_decoded_2, RPC_decoded_3;

assign RPC_decoded_0[15:0] = valid_candidate(RPC_aligned[17:12], RPC_dphi_0[5:0], RPC_deta_0[5:0]);
assign RPC_decoded_1[15:0] = valid_candidate(RPC_aligned[35:30], RPC_dphi_1[5:0], RPC_deta_1[5:0]);
assign RPC_decoded_2[15:0] = valid_candidate(RPC_aligned[53:48], RPC_dphi_2[5:0], RPC_deta_2[5:0]);
assign RPC_decoded_3[15:0] = valid_candidate(RPC_aligned[71:66], RPC_dphi_3[5:0], RPC_deta_3[5:0]);

always @(posedge CLK_in) begin
    RPC_decoded[15:0]    <= RPC_decoded_0[15:0];
    RPC_decoded[31:16]   <= RPC_decoded_1[15:0];
    RPC_decoded[47:32]   <= RPC_decoded_2[15:0];
    RPC_decoded[63:48]   <= RPC_decoded_3[15:0];
end

endmodule

