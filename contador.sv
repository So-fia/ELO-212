`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2018 23:55:37
// Design Name: 
// Module Name: top_module
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
module contador #(parameter width =3, counter_max=8)(    // Si el numero tiene ancho 32, entonces width = 3 y counter_max = 8. 
                                                        // Si el numero tiene ancho 16, entonces width = 2 y counter_max = 4.
                                                        // Si el numero tiene ancho 8, entonces width = 1 y counter_max = 2.
    input logic clk_out,
    output logic [width-1:0] contador //se pueden cambiar la cantidad de bits
    );

localparam COUNTER_MAX=counter_max-1;
logic [width-1:0] counter;
assign counter = 'd0;
// quizás hay que definir counter = 0 como valor inicial, revisar luego de la simulacion
always_ff @(posedge clk_out) begin
                if (contador==counter_max) begin
                    contador<='d0; end
                else begin
                contador <= contador + 'd1; end
                end
endmodule