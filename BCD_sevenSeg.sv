`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2018 18:12:22
// Design Name: 
// Module Name: BCD_sevenSeg
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


module BCD_sevenSeg(
    input logic [3:0] numero_de_4bits,
    output logic [7:0] sevenSegment
    );
    
    always_comb begin
        
        case(numero_de_4bits)
        4'd0: sevenSegment=8'b00000011;
        4'd1: sevenSegment=8'b10011111;
        4'd2: sevenSegment=8'b00100101;
        4'd3: sevenSegment=8'b00001101;
        4'd4: sevenSegment=8'b10011001;
        4'd5: sevenSegment=8'b01001001;
        4'd6: sevenSegment=8'b01000001;
        4'd7: sevenSegment=8'b00011111;
        4'd8: sevenSegment=8'b00000001;
        4'd9: sevenSegment=8'b00001001;
        4'd10: sevenSegment=8'b00010001;
        4'd11: sevenSegment=8'b11000001;
        4'd12: sevenSegment=8'b01100011;
        4'd13: sevenSegment=8'b10000101;
        4'd14: sevenSegment=8'b01100001;
        4'd15: sevenSegment=8'b01110001;
        default: sevenSegment <= 8'b11111111;
        endcase
    end

endmodule
