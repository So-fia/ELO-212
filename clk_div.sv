`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2018 23:59:31
// Design Name: 
// Module Name: clk_div
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
// mismo módulo del trabajo previo, pero con COUNTER_MAX = 1666666 para que
// la frecuencia de salida sea de 30Hz

module clk_div(
    input logic clk_in,
    //input logic reset,
    output logic clk_o);
    
    localparam COUNTER_MAX =17'd124999;
   //fout=fin/(2*(counter_max+1))
   // bits = log(counter_max+1)/log(2)
   // 400Hz: counter_max=124999 y 17 bits
    logic [16:0] counter = 17'd0;
    always_ff @(posedge clk_in) begin
        if (counter == COUNTER_MAX) begin
            counter <= 'd0;
            clk_o <= ~clk_o;
        end else begin
            counter <= counter + 'd1;
            clk_o <= clk_o;
        end
    end
endmodule
