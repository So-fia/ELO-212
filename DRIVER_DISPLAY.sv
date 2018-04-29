`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2018 09:55:18
// Design Name: 
// Module Name: DRIVER_DISPLAY
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


module DRIVER_DISPLAY #(parameter number_input_width = 32)(
    input logic clock,
    input logic [number_input_width-1:0] numero_binario,
    output logic [7:0] sevensegment,
    output logic [7:0] AN
    );
 
 logic [2:0] contador_cable;
 logic cable_clk_out;
 logic [3:0] cable_grupo;
 
    clk_div clk_div_inst (
        .clk_in(clock),
        .clk_o(cable_clk_out)
        );
    
    selector_4bits selector_4bits_inst(
        .numero(numero_binario),
        .counter(contador_cable),
        .grupo(cable_grupo)
        );
  
    contador contador_inst(
        .clk_out(cable_clk_out),
        .contador(contador_cable)
        );
        // Si el numero tiene ancho 32, entonces width = 3 y counter_max = 8. 
        // Si el numero tiene ancho 16, entonces width = 2 y counter_max = 4.
        // Si el numero tiene ancho 8, entonces width = 1 y counter_max = 2.
         
        
     BCD_sevenSeg BCD_sevenSeg_inst(
        .numero_de_4bits(cable_grupo),
        .sevenSegment(sevensegment)
        );
     
     counteran counteran_inst(
        .clk_out_an(cable_clk_out),
        .AN(AN)
        );
        
     

endmodule
