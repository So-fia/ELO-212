`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2018 09:31:04
// Design Name: 
// Module Name: ALU
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


module ALU(
    input logic [7:0] A,B,
    input logic [3:0] Button,
    output logic [31:0] Result

    );

    always_comb begin
        case (Button)
            4'b0001: begin Result=A+B; end
            4'b0010: begin Result=A-B; end
            4'b0100: begin Result=A&B; end
            4'b1000: begin Result=A|B;  end
            4'b0000: begin Result = {8'd0,B,8'd0,A}; end
            default: begin Result = 'b0; end      
        endcase
    end
endmodule