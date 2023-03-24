`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/16 09:21:53
// Design Name: 
// Module Name: LUT_CRCcalculator
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
module LUT_CRCcalculator (
    input  wire        CLK_in,
    input  wire        reset_in,
    input  wire [4:0]  Data_in,
    input  wire        LUT_CRC_enable_in, 
    input  wire [3:0]  LUT_CRC_type_in,
    output reg  [14:0] LUT_rd_address_out,
    output reg  [3:0]  LUT_rd_type_out,
    output reg  [7:0]  LUT_rd_RoI_out,
    output reg  [15:0] crc_out,
    output reg         valid_out
);

parameter [3:0] BW_POS        = 4'h1;
parameter [3:0] NSW_POS       = 4'h2;
parameter [3:0] NSW_ANGLE     = 4'h3;
parameter [3:0] NSW_PT_MERGER = 4'h4;
parameter [3:0] RPC_POS       = 4'h5;
parameter [3:0] RPC_DPHI      = 4'h6;
parameter [3:0] RPC_DZ        = 4'h7;
parameter [3:0] RPC_PT_MERGER = 4'h8;
parameter [3:0] WHICH_INNER   = 4'h9;

parameter [14:0] nAddress_BW_POS        = 15'h3fff;
parameter [14:0] nAddress_NSW_POS       = 15'h1fff;
parameter [14:0] nAddress_NSW_ANGLE     = 15'h3fff;
parameter [14:0] nAddress_NSW_PT_MERGER = 15'hfff;
parameter [14:0] nAddress_RPC_POS       = 15'h1fff;
parameter [14:0] nAddress_RPC_DPHI      = 15'h7ff;
parameter [14:0] nAddress_RPC_DZ        = 15'h7ff;
parameter [14:0] nAddress_RPC_PT_MERGER = 15'hfff;
parameter [14:0] nAddress_WHICH_INNER   = 15'h7f;

parameter [7:0] nRoI_BW_POS        = 8'd144;
parameter [7:0] nRoI_NSW_POS       = 8'd144;
parameter [7:0] nRoI_NSW_ANGLE     = 8'd144;
parameter [7:0] nRoI_NSW_PT_MERGER = 8'd144;
parameter [7:0] nRoI_RPC_POS       = 8'd32;
parameter [7:0] nRoI_RPC_DPHI      = 8'd32;
parameter [7:0] nRoI_RPC_DZ        = 8'd32;
parameter [7:0] nRoI_RPC_PT_MERGER = 8'd32;
parameter [7:0] nRoI_WHICH_INNER   = 8'd32;

parameter [7:0] RoI_step_BW_POS        = 8'd8;
parameter [7:0] RoI_step_NSW_POS       = 8'd8;
parameter [7:0] RoI_step_NSW_ANGLE     = 8'd8;
parameter [7:0] RoI_step_NSW_PT_MERGER = 8'd8;
parameter [7:0] RoI_step_RPC_POS       = 8'd8;
parameter [7:0] RoI_step_RPC_DPHI      = 8'd8;
parameter [7:0] RoI_step_RPC_DZ        = 8'd8;
parameter [7:0] RoI_step_RPC_PT_MERGER = 8'd8;
parameter [7:0] RoI_step_WHICH_INNER   = 8'd8;

reg [14:0] Address;
reg [7:0]  RoI;
reg [4:0]  Data;
reg [2:0]  counter_start;
reg [2:0]  counter_end;
reg        valid_tmp;
wire  [15:0] CRC;

always @ (posedge CLK_in) begin

    if (reset_in) begin
        LUT_rd_address_out <= 15'h0;
        LUT_rd_type_out    <= 4'h0;        
        LUT_rd_RoI_out     <= 8'h0;
        RoI                <= 8'h0;
        Data               <= 5'h0;
        valid_out          <= 1'b0;
        valid_tmp          <= 1'b0;
        counter_start      <= 3'h0;        
        counter_end        <= 3'h0;
        crc_out            <= 16'h0;
        
        case (LUT_CRC_type_in)
           BW_POS        : begin
              RoI     <= 8'd0;
              Address <= 15'h2000; // SSC0
           end
           NSW_POS       : begin
              RoI     <= 8'd40; // SSC5
              Address <= 15'h0;
           end
           NSW_ANGLE     : begin
              RoI     <= 8'd40; // SSC5
              Address <= 15'h0;
           end
           NSW_PT_MERGER : begin
              RoI     <= 8'd40; // SSC5
              Address <= 15'h0;
           end
           RPC_POS       : begin
              RoI     <= 8'd0;
              Address <= 15'h1000; // SSC0
           end
           RPC_DPHI      : begin
              RoI     <= 8'd0;
              Address <= 15'h400; // SSC0
           end
           RPC_DZ        : begin
              RoI     <= 8'd0;
              Address <= 15'h400; // SSC0
           end
           RPC_PT_MERGER : begin
              RoI     <= 8'd0;
              Address <= 15'h0;
           end
           WHICH_INNER   : begin
              RoI     <= 8'd0;
              Address <= 15'h40; // SSC0
           end      
        endcase
    end
    else if ( LUT_CRC_enable_in == 1'b1 ) begin
        
        if (valid_tmp == 1'b0 && valid_out == 1'b0) begin                            
            
            case (LUT_CRC_type_in)
               BW_POS : begin                                                
                  LUT_rd_type_out    <= BW_POS;
             
                  // taking into account delay of data from LUT. 3 clocks delay for Data_in. 1 clock delay for crc_out.
                  if (counter_start == 3'h0) begin
                     counter_start      <= counter_start + 3'h1;                
                  end
                  else if (counter_start < 3'h4) begin
                     LUT_rd_address_out <= Address;
                     Address            <= Address + 1; 
                     LUT_rd_RoI_out     <= RoI;                                                
                     Data               <= 5'h0;
                     crc_out            <= 16'h0;
                     counter_start      <= counter_start + 3'h1;                
                  end
                  else if (counter_start == 3'h4) begin
                     LUT_rd_address_out <= Address;
                     Address            <= Address + 1;                     
                     LUT_rd_RoI_out     <= RoI;                                                
                     Data               <= Data_in;
                     crc_out            <= 16'h0; 
                     counter_start      <= counter_start + 3'h1;                
                  end           
                  else if (counter_start == 3'h5) begin           
                                                                
                     if ( LUT_rd_address_out < nAddress_BW_POS - 15'h1 ) begin
                        LUT_rd_address_out <= Address;
                        LUT_rd_RoI_out     <= RoI;                         
                        Address            <= Address + 1;
                        Data               <= Data_in;
                        crc_out            <= CRC;                         
                     end
                     else if ( LUT_rd_address_out == nAddress_BW_POS - 15'h1 ) begin
                        LUT_rd_address_out <= Address;
                        Address            <= 15'h0;
                        LUT_rd_RoI_out     <= RoI;                         
                        Data               <= Data_in;
                        crc_out            <= CRC;                    
                     end    
                     else if ( LUT_rd_address_out == nAddress_BW_POS ) begin                                                                                      
                        if ( LUT_rd_RoI_out < nRoI_BW_POS ) begin
                            LUT_rd_address_out <= 15'h0;
                            Address            <= Address + 1;
                            RoI                <= RoI + RoI_step_BW_POS;                            
                            LUT_rd_RoI_out     <= RoI;  
                            Data               <= Data_in;
                            crc_out            <= CRC;                                                     
                        end
                        else if ( LUT_rd_RoI_out == nRoI_BW_POS) begin                     
                            LUT_rd_RoI_out <= RoI;                            
                            Data           <= Data_in;
                            crc_out        <= CRC;
                            valid_tmp      <= 1'b1;
                            counter_end    <= 3'h0;
                        end                  
                     end    
                   
                   end  
                  
               end 
               NSW_POS : begin                                                
                  LUT_rd_type_out    <= NSW_POS;
             
                  // taking into account delay of data from LUT. 3 clocks delay for Data_in. 1 clock delay for crc_out.
                  if (counter_start == 3'h0) begin
                     counter_start      <= counter_start + 3'h1;                
                  end
                  else if (counter_start < 3'h4) begin
                     LUT_rd_address_out <= Address;
                     Address            <= Address + 1; 
                     LUT_rd_RoI_out     <= RoI;                                                
                     Data               <= 5'h0;
                     crc_out            <= 16'h0;
                     counter_start      <= counter_start + 3'h1;                
                  end
                  else if (counter_start == 3'h4) begin
                     LUT_rd_address_out <= Address;
                     Address            <= Address + 1;                     
                     LUT_rd_RoI_out     <= RoI;                                                
                     Data               <= Data_in;
                     crc_out            <= 16'h0; 
                     counter_start      <= counter_start + 3'h1;                
                  end           
                  else if (counter_start == 3'h5) begin            
                                                                
                     if ( LUT_rd_address_out < nAddress_NSW_POS - 15'h1 ) begin
                        LUT_rd_address_out <= Address;
                        LUT_rd_RoI_out     <= RoI;                         
                        Address            <= Address + 1;
                        Data               <= Data_in;
                        crc_out            <= CRC;                         
                     end
                     else if ( LUT_rd_address_out == nAddress_NSW_POS - 15'h1 ) begin
                        LUT_rd_address_out <= Address;
                        Address            <= 15'h0;
                        LUT_rd_RoI_out     <= RoI;                         
                        Data               <= Data_in;
                        crc_out            <= CRC;                    
                     end    
                     else if ( LUT_rd_address_out == nAddress_NSW_POS ) begin                                                                                      
                        if ( LUT_rd_RoI_out < nRoI_NSW_POS ) begin
                            LUT_rd_address_out <= 15'h0;
                            Address            <= Address + 1;
                            RoI                <= RoI + RoI_step_NSW_POS;                            
                            LUT_rd_RoI_out     <= RoI;  
                            Data               <= Data_in;
                            crc_out            <= CRC;                                                     
                        end
                        else if ( LUT_rd_RoI_out == nRoI_NSW_POS) begin                     
                            LUT_rd_RoI_out <= RoI;                            
                            Data           <= Data_in;
                            crc_out        <= CRC;
                            valid_tmp      <= 1'b1;
                            counter_end    <= 3'h0;
                        end                  
                     end    
                   
                   end  
                  
               end
               NSW_ANGLE : begin                                                
                  LUT_rd_type_out    <= NSW_ANGLE;
             
                  // taking into account delay of data from LUT. 3 clocks delay for Data_in. 1 clock delay for crc_out.
                  if (counter_start == 3'h0) begin
                     counter_start      <= counter_start + 3'h1;                
                  end
                  else if (counter_start < 3'h4) begin
                     LUT_rd_address_out <= Address;
                     Address            <= Address + 1; 
                     LUT_rd_RoI_out     <= RoI;                                                
                     Data               <= 5'h0;
                     crc_out            <= 16'h0;
                     counter_start      <= counter_start + 3'h1;                
                  end
                  else if (counter_start == 3'h4) begin
                     LUT_rd_address_out <= Address;
                     Address            <= Address + 1;                     
                     LUT_rd_RoI_out     <= RoI;                                                
                     Data               <= Data_in;
                     crc_out            <= 16'h0; 
                     counter_start      <= counter_start + 3'h1;                
                  end           
                  else if (counter_start == 3'h5) begin             
                                                                
                     if ( LUT_rd_address_out < nAddress_NSW_ANGLE - 15'h1 ) begin
                        LUT_rd_address_out <= Address;
                        LUT_rd_RoI_out     <= RoI;                         
                        Address            <= Address + 1;
                        Data               <= Data_in;
                        crc_out            <= CRC;                         
                     end
                     else if ( LUT_rd_address_out == nAddress_NSW_ANGLE - 15'h1 ) begin
                        LUT_rd_address_out <= Address;
                        Address            <= 15'h0;
                        LUT_rd_RoI_out     <= RoI;                         
                        Data               <= Data_in;
                        crc_out            <= CRC;                    
                     end    
                     else if ( LUT_rd_address_out == nAddress_NSW_ANGLE ) begin                                                                                      
                        if ( LUT_rd_RoI_out < nRoI_NSW_ANGLE ) begin
                            LUT_rd_address_out <= 15'h0;
                            Address            <= Address + 1;
                            RoI                <= RoI + RoI_step_NSW_ANGLE;                            
                            LUT_rd_RoI_out     <= RoI;  
                            Data               <= Data_in;
                            crc_out            <= CRC;                                                     
                        end
                        else if ( LUT_rd_RoI_out == nRoI_NSW_ANGLE) begin                     
                            LUT_rd_RoI_out <= RoI;                            
                            Data           <= Data_in;
                            crc_out        <= CRC;
                            valid_tmp      <= 1'b1;
                            counter_end    <= 3'h0;
                        end                  
                     end    
                   
                   end  
                  
               end 
               NSW_PT_MERGER : begin                                                
                  LUT_rd_type_out    <= NSW_PT_MERGER;
             
                  // taking into account delay of data from LUT. 3 clocks delay for Data_in. 1 clock delay for crc_out.
                  if (counter_start == 3'h0) begin
                     counter_start      <= counter_start + 3'h1;                
                  end
                  else if (counter_start < 3'h4) begin
                     LUT_rd_address_out <= Address;
                     Address            <= Address + 1; 
                     LUT_rd_RoI_out     <= RoI;                                                
                     Data               <= 5'h0;
                     crc_out            <= 16'h0;
                     counter_start      <= counter_start + 3'h1;                
                  end
                  else if (counter_start == 3'h4) begin
                     LUT_rd_address_out <= Address;
                     Address            <= Address + 1;                     
                     LUT_rd_RoI_out     <= RoI;                                                
                     Data               <= Data_in;
                     crc_out            <= 16'h0; 
                     counter_start      <= counter_start + 3'h1;                
                  end           
                  else if (counter_start == 3'h5) begin          
                                                                
                     if ( LUT_rd_address_out < nAddress_NSW_PT_MERGER - 15'h1 ) begin
                        LUT_rd_address_out <= Address;
                        LUT_rd_RoI_out     <= RoI;                         
                        Address            <= Address + 1;
                        Data               <= Data_in;
                        crc_out            <= CRC;                         
                     end
                     else if ( LUT_rd_address_out == nAddress_NSW_PT_MERGER - 15'h1 ) begin
                        LUT_rd_address_out <= Address;
                        Address            <= 15'h0;
                        LUT_rd_RoI_out     <= RoI;                         
                        Data               <= Data_in;
                        crc_out            <= CRC;                    
                     end    
                     else if ( LUT_rd_address_out == nAddress_NSW_PT_MERGER ) begin                                                                                      
                        if ( LUT_rd_RoI_out < nRoI_NSW_PT_MERGER ) begin
                            LUT_rd_address_out <= 15'h0;
                            Address            <= Address + 1;
                            RoI                <= RoI + RoI_step_NSW_PT_MERGER;                            
                            LUT_rd_RoI_out     <= RoI;  
                            Data               <= Data_in;
                            crc_out            <= CRC;                                                     
                        end
                        else if ( LUT_rd_RoI_out == nRoI_NSW_PT_MERGER) begin                     
                            LUT_rd_RoI_out <= RoI;                            
                            Data           <= Data_in;
                            crc_out        <= CRC;
                            valid_tmp      <= 1'b1;
                            counter_end    <= 3'h0;
                        end                  
                     end    
                   
                   end  
                  
               end  
               RPC_POS : begin                                                
                  LUT_rd_type_out    <= RPC_POS;
             
                  // taking into account delay of data from LUT. 3 clocks delay for Data_in. 1 clock delay for crc_out.
                  if (counter_start == 3'h0) begin
                     counter_start      <= counter_start + 3'h1;                
                  end
                  else if (counter_start < 3'h4) begin
                     LUT_rd_address_out <= Address;
                     Address            <= Address + 1; 
                     LUT_rd_RoI_out     <= RoI;                                                
                     Data               <= 5'h0;
                     crc_out            <= 16'h0;
                     counter_start      <= counter_start + 3'h1;                
                  end
                  else if (counter_start == 3'h4) begin
                     LUT_rd_address_out <= Address;
                     Address            <= Address + 1;                     
                     LUT_rd_RoI_out     <= RoI;                                                
                     Data               <= Data_in;
                     crc_out            <= 16'h0; 
                     counter_start      <= counter_start + 3'h1;                
                  end           
                  else if (counter_start == 3'h5) begin           
                                                                
                     if ( LUT_rd_address_out < nAddress_RPC_POS - 15'h1 ) begin
                        LUT_rd_address_out <= Address;
                        LUT_rd_RoI_out     <= RoI;                         
                        Address            <= Address + 1;
                        Data               <= Data_in;
                        crc_out            <= CRC;                         
                     end
                     else if ( LUT_rd_address_out == nAddress_RPC_POS - 15'h1 ) begin
                        LUT_rd_address_out <= Address;
                        Address            <= 15'h0;
                        LUT_rd_RoI_out     <= RoI;                         
                        Data               <= Data_in;
                        crc_out            <= CRC;                    
                     end    
                     else if ( LUT_rd_address_out == nAddress_RPC_POS ) begin                                                                                      
                        if ( LUT_rd_RoI_out < nRoI_RPC_POS ) begin
                            LUT_rd_address_out <= 15'h0;
                            Address            <= Address + 1;
                            RoI                <= RoI + RoI_step_RPC_POS;                            
                            LUT_rd_RoI_out     <= RoI;  
                            Data               <= Data_in;
                            crc_out            <= CRC;                                                     
                        end
                        else if ( LUT_rd_RoI_out == nRoI_RPC_POS) begin                     
                            LUT_rd_RoI_out <= RoI;                            
                            Data           <= Data_in;
                            crc_out        <= CRC;
                            valid_tmp      <= 1'b1;
                            counter_end    <= 3'h0;
                        end                  
                     end    
                   
                   end  
                  
               end
               RPC_DPHI : begin                                                
                  LUT_rd_type_out    <= RPC_DPHI;
             
                  // taking into account delay of data from LUT. 3 clocks delay for Data_in. 1 clock delay for crc_out.
                  if (counter_start == 3'h0) begin
                     counter_start      <= counter_start + 3'h1;                
                  end
                  else if (counter_start < 3'h4) begin
                     LUT_rd_address_out <= Address;
                     Address            <= Address + 1; 
                     LUT_rd_RoI_out     <= RoI;                                                
                     Data               <= 5'h0;
                     crc_out            <= 16'h0;
                     counter_start      <= counter_start + 3'h1;                
                  end
                  else if (counter_start == 3'h4) begin
                     LUT_rd_address_out <= Address;
                     Address            <= Address + 1;                     
                     LUT_rd_RoI_out     <= RoI;                                                
                     Data               <= Data_in;
                     crc_out            <= 16'h0; 
                     counter_start      <= counter_start + 3'h1;                
                  end           
                  else if (counter_start == 3'h5) begin       
                                                                
                     if ( LUT_rd_address_out < nAddress_RPC_DPHI - 15'h1 ) begin
                        LUT_rd_address_out <= Address;
                        LUT_rd_RoI_out     <= RoI;                         
                        Address            <= Address + 1;
                        Data               <= Data_in;
                        crc_out            <= CRC;                         
                     end
                     else if ( LUT_rd_address_out == nAddress_RPC_DPHI - 15'h1 ) begin
                        LUT_rd_address_out <= Address;
                        Address            <= 15'h0;
                        LUT_rd_RoI_out     <= RoI;                         
                        Data               <= Data_in;
                        crc_out            <= CRC;                    
                     end    
                     else if ( LUT_rd_address_out == nAddress_RPC_DPHI ) begin                                                                                      
                        if ( LUT_rd_RoI_out < nRoI_RPC_DPHI ) begin
                            LUT_rd_address_out <= 15'h0;
                            Address            <= Address + 1;
                            RoI                <= RoI + RoI_step_RPC_DPHI;                            
                            LUT_rd_RoI_out     <= RoI;  
                            Data               <= Data_in;
                            crc_out            <= CRC;                                                     
                        end
                        else if ( LUT_rd_RoI_out == nRoI_RPC_DPHI) begin                     
                            LUT_rd_RoI_out <= RoI;                            
                            Data           <= Data_in;
                            crc_out        <= CRC;
                            valid_tmp      <= 1'b1;
                            counter_end    <= 3'h0;
                        end                  
                     end    
                   
                   end  
                  
               end
               RPC_DZ : begin                                                
                  LUT_rd_type_out    <= RPC_DZ;
             
                  // taking into account delay of data from LUT. 3 clocks delay for Data_in. 1 clock delay for crc_out.
                  if (counter_start == 3'h0) begin
                     counter_start      <= counter_start + 3'h1;                
                  end
                  else if (counter_start < 3'h4) begin
                     LUT_rd_address_out <= Address;
                     Address            <= Address + 1; 
                     LUT_rd_RoI_out     <= RoI;                                                
                     Data               <= 5'h0;
                     crc_out            <= 16'h0;
                     counter_start      <= counter_start + 3'h1;                
                  end
                  else if (counter_start == 3'h4) begin
                     LUT_rd_address_out <= Address;
                     Address            <= Address + 1;                     
                     LUT_rd_RoI_out     <= RoI;                                                
                     Data               <= Data_in;
                     crc_out            <= 16'h0; 
                     counter_start      <= counter_start + 3'h1;                
                  end           
                  else if (counter_start == 3'h5) begin            
                                                                
                     if ( LUT_rd_address_out < nAddress_RPC_DZ - 15'h1 ) begin
                        LUT_rd_address_out <= Address;
                        LUT_rd_RoI_out     <= RoI;                         
                        Address            <= Address + 1;
                        Data               <= Data_in;
                        crc_out            <= CRC;                         
                     end
                     else if ( LUT_rd_address_out == nAddress_RPC_DZ - 15'h1 ) begin
                        LUT_rd_address_out <= Address;
                        Address            <= 15'h0;
                        LUT_rd_RoI_out     <= RoI;                         
                        Data               <= Data_in;
                        crc_out            <= CRC;                    
                     end    
                     else if ( LUT_rd_address_out == nAddress_RPC_DZ ) begin                                                                                      
                        if ( LUT_rd_RoI_out < nRoI_RPC_DZ ) begin
                            LUT_rd_address_out <= 15'h0;
                            Address            <= Address + 1;
                            RoI                <= RoI + RoI_step_RPC_DZ;                            
                            LUT_rd_RoI_out     <= RoI;  
                            Data               <= Data_in;
                            crc_out            <= CRC;                                                     
                        end
                        else if ( LUT_rd_RoI_out == nRoI_RPC_DZ) begin                     
                            LUT_rd_RoI_out <= RoI;                            
                            Data           <= Data_in;
                            crc_out        <= CRC;
                            valid_tmp      <= 1'b1;
                            counter_end    <= 3'h0;
                        end                  
                     end    
                   
                   end  
                  
               end            
               RPC_PT_MERGER : begin                                                
                  LUT_rd_type_out    <= RPC_PT_MERGER;
             
                  // taking into account delay of data from LUT. 3 clocks delay for Data_in. 1 clock delay for crc_out.
                  if (counter_start == 3'h0) begin
                     counter_start      <= counter_start + 3'h1;                
                  end
                  else if (counter_start < 3'h4) begin
                     LUT_rd_address_out <= Address;
                     Address            <= Address + 1; 
                     LUT_rd_RoI_out     <= RoI;                                                
                     Data               <= 5'h0;
                     crc_out            <= 16'h0;
                     counter_start      <= counter_start + 3'h1;                
                  end
                  else if (counter_start == 3'h4) begin
                     LUT_rd_address_out <= Address;
                     Address            <= Address + 1;                     
                     LUT_rd_RoI_out     <= RoI;                                                
                     Data               <= Data_in;
                     crc_out            <= 16'h0; 
                     counter_start      <= counter_start + 3'h1;                
                  end           
                  else if (counter_start == 3'h5) begin           
                                                                
                     if ( LUT_rd_address_out < nAddress_RPC_PT_MERGER - 15'h1 ) begin
                        LUT_rd_address_out <= Address;
                        LUT_rd_RoI_out     <= RoI;                         
                        Address            <= Address + 1;
                        Data               <= Data_in;
                        crc_out            <= CRC;                         
                     end
                     else if ( LUT_rd_address_out == nAddress_RPC_PT_MERGER - 15'h1 ) begin
                        LUT_rd_address_out <= Address;
                        Address            <= 15'h0;
                        LUT_rd_RoI_out     <= RoI;                         
                        Data               <= Data_in;
                        crc_out            <= CRC;                    
                     end    
                     else if ( LUT_rd_address_out == nAddress_RPC_PT_MERGER ) begin                                                                                      
                        if ( LUT_rd_RoI_out < nRoI_RPC_PT_MERGER ) begin
                            LUT_rd_address_out <= 15'h0;
                            Address            <= Address + 1;
                            RoI                <= RoI + RoI_step_RPC_PT_MERGER;                            
                            LUT_rd_RoI_out     <= RoI;  
                            Data               <= Data_in;
                            crc_out            <= CRC;                                                     
                        end
                        else if ( LUT_rd_RoI_out == nRoI_RPC_PT_MERGER) begin                     
                            LUT_rd_RoI_out <= RoI;                            
                            Data           <= Data_in;
                            crc_out        <= CRC;
                            valid_tmp      <= 1'b1;
                            counter_end    <= 3'h0;
                        end                  
                     end    
                   
                   end  
                  
               end 
               WHICH_INNER : begin                                                
                  LUT_rd_type_out    <= WHICH_INNER;
             
                  // taking into account delay of data from LUT. 3 clocks delay for Data_in. 1 clock delay for crc_out.
                  if (counter_start == 3'h0) begin
                     counter_start      <= counter_start + 3'h1;                
                  end
                  else if (counter_start < 3'h4) begin
                     LUT_rd_address_out <= Address;
                     Address            <= Address + 1; 
                     LUT_rd_RoI_out     <= RoI;                                                
                     Data               <= 5'h0;
                     crc_out            <= 16'h0;
                     counter_start      <= counter_start + 3'h1;                
                  end
                  else if (counter_start == 3'h4) begin
                     LUT_rd_address_out <= Address;
                     Address            <= Address + 1;                     
                     LUT_rd_RoI_out     <= RoI;                                                
                     Data               <= Data_in;
                     crc_out            <= 16'h0; 
                     counter_start      <= counter_start + 3'h1;                
                  end           
                  else if (counter_start == 3'h5) begin       
                                                                
                     if ( LUT_rd_address_out < nAddress_WHICH_INNER - 15'h1 ) begin
                        LUT_rd_address_out <= Address;
                        LUT_rd_RoI_out     <= RoI;                         
                        Address            <= Address + 1;
                        Data               <= Data_in;
                        crc_out            <= CRC;                         
                     end
                     else if ( LUT_rd_address_out == nAddress_WHICH_INNER - 15'h1 ) begin
                        LUT_rd_address_out <= Address;
                        Address            <= 15'h0;
                        LUT_rd_RoI_out     <= RoI;                         
                        Data               <= Data_in;
                        crc_out            <= CRC;                    
                     end    
                     else if ( LUT_rd_address_out == nAddress_WHICH_INNER ) begin                                                                                      
                        if ( LUT_rd_RoI_out < nRoI_WHICH_INNER ) begin
                            LUT_rd_address_out <= 15'h0;
                            Address            <= Address + 1;
                            RoI                <= RoI + RoI_step_WHICH_INNER;                            
                            LUT_rd_RoI_out     <= RoI;  
                            Data               <= Data_in;
                            crc_out            <= CRC;                                                     
                        end
                        else if ( LUT_rd_RoI_out == nRoI_WHICH_INNER) begin                     
                            LUT_rd_RoI_out <= RoI;                            
                            Data           <= Data_in;
                            crc_out        <= CRC;
                            valid_tmp      <= 1'b1;
                            counter_end    <= 3'h0;
                        end                  
                     end    
                   
                   end  
                  
               end 
                                                                                                          
               default : begin
               end             
            endcase        
         end
         else if (valid_tmp == 1'b1 && valid_out == 1'b0 ) begin 
            if ( counter_end < 3'h2 ) begin  // This is a counter to stop CRC calculation at the end of LUT.
                LUT_rd_RoI_out <= RoI;                            
                Data           <= Data_in;
                crc_out        <= CRC;           
                counter_end    <= counter_end + 3'h1;    
            end
            else if (counter_end == 3'h2 ) begin
                crc_out     <= CRC;            
                valid_out   <= 1'b1;
            end         
         end
         else begin // valid_out == 1'b1
         end
         
    end //  LUT_CRC_enable_in == 1'b1
end


// polynomial: x^16 + x^12 + x^5 + 1
// data width: 8
// convention: the first serial bit is D[7]
function [15:0] nextCRC16_D8;
    
    input [7:0] Data;
    input [15:0] crc;
    reg [7:0] d;
    reg [15:0] c;
    reg [15:0] newcrc;
    
    begin
        d = Data;
        c = crc;

        newcrc[0] = d[4] ^ d[0] ^ c[8] ^ c[12];
        newcrc[1] = d[5] ^ d[1] ^ c[9] ^ c[13];
        newcrc[2] = d[6] ^ d[2] ^ c[10] ^ c[14];
        newcrc[3] = d[7] ^ d[3] ^ c[11] ^ c[15];
        newcrc[4] = d[4] ^ c[12];
        newcrc[5] = d[5] ^ d[4] ^ d[0] ^ c[8] ^ c[12] ^ c[13];
        newcrc[6] = d[6] ^ d[5] ^ d[1] ^ c[9] ^ c[13] ^ c[14];
        newcrc[7] = d[7] ^ d[6] ^ d[2] ^ c[10] ^ c[14] ^ c[15];
        newcrc[8] = d[7] ^ d[3] ^ c[0] ^ c[11] ^ c[15];
        newcrc[9] = d[4] ^ c[1] ^ c[12];
        newcrc[10] = d[5] ^ c[2] ^ c[13];
        newcrc[11] = d[6] ^ c[3] ^ c[14];
        newcrc[12] = d[7] ^ d[4] ^ d[0] ^ c[4] ^ c[8] ^ c[12] ^ c[15];
        newcrc[13] = d[5] ^ d[1] ^ c[5] ^ c[9] ^ c[13];
        newcrc[14] = d[6] ^ d[2] ^ c[6] ^ c[10] ^ c[14];
        newcrc[15] = d[7] ^ d[3] ^ c[7] ^ c[11] ^ c[15];
        nextCRC16_D8 = newcrc;
    end
endfunction

assign CRC = nextCRC16_D8( { 3'h0, Data[4:0]}, crc_out);

endmodule // crc