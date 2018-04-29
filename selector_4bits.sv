`timescale 1ns / 1ps

module selector_4bits #(parameter number_input_width = 32, width = 3)(
    input logic [number_input_width-1:0] numero,
    input logic [width-1:0] counter, // divide el numero de entrada en grupos de 4 bits
    output logic [3:0] grupo //si o si será de ancho 4 bits.
    );
    
     always_comb begin
     
            case(counter)
                3'd0: grupo=numero[3:0];
                3'd1: grupo=numero[7:4];
                3'd2: grupo=numero[11:8];
                3'd3: grupo=numero[15:12];
                3'd4: grupo=numero[19:16];
                3'd5: grupo=numero[23:20];
                3'd6: grupo=numero[27:24];
                3'd7: grupo=numero[31:28];
                default: grupo=4'b0000;
                endcase
            end
    endmodule
