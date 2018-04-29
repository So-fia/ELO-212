`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2018 17:38:04
// Design Name: 
// Module Name: counteran
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


module counteran(
    input logic clk_out_an,
    output logic [7:0] AN
    );

logic [2:0] counter;
always_ff @(posedge clk_out_an) begin
    if (counter == 3'b111) begin
        counter <= 3'b000;
            end
    else begin 
        counter <= counter + 3'b001;
    end
end
         
    always_comb begin
             case(counter)
                 3'd0: AN[7:0]=8'b1111_1110;
                 3'd1: AN[7:0]=8'b1111_1101;
                 3'd2: AN[7:0]=8'b1111_1011;
                 3'd3: AN[7:0]=8'b1111_0111;
                 3'd4: AN[7:0]=8'b1110_1111;
                 3'd5: AN[7:0]=8'b1101_1111;
                 3'd6: AN[7:0]=8'b1011_1111;
                 3'd7: AN[7:0]=8'b0111_1111;
                 default: AN[7:0]=8'b1111_1111;
             endcase
         end
endmodule
