`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2018 17:35:02
// Design Name: 
// Module Name: Discernir
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


module Discernir #(parameter width=16)(
    input logic [2*(width)-1:0] Result,
    input logic [3:0] Button,
    output logic [width-1:0] R_LED,
    output logic [2*(width)-1:0] R_DISPLAY
    );
    
     always_comb begin
           case (Button)
               4'b0001: begin R_DISPLAY = Result; R_LED = 'd0; end
               4'b0010: begin R_DISPLAY = Result; R_LED = 'd0; end
               4'b0100: begin R_DISPLAY = 'd0; R_LED = Result; end
               4'b1000: begin R_DISPLAY = 'd0; R_LED = Result; end
               4'b0000: begin R_DISPLAY = Result; R_LED = {Result[23:16],Result[7:0]} ; end
               default: begin R_DISPLAY = 'd0; R_LED = 'd0; end      
           endcase
       end
endmodule
