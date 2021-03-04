`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2021 14:08:04
// Design Name: 
// Module Name: mux4_1
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


module mux4_1(input[31:0] ina, input[31:0] inb, input[31:0] inc,
            input[1:0] sel,
            output reg [31:0] out

    );
    always@(ina, inb, inc, sel)
    begin
        case(sel)
            2'b00: out = ina;
            2'b01: out = inb;
            2'b10: out = inc;
        endcase
    end
endmodule
