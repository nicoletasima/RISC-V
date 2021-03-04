`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2020 22:59:52
// Design Name: 
// Module Name: mux2_1
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


module mux2_1(input[31:0] ina, inb, input sel, output[31:0] out);
    reg[31:0] out1;
    always@(ina, inb, sel)
    begin
    if (sel == 0)
        out1 = ina;
    else if (sel == 1)
        out1 = inb;
    end
    assign out = out1;
endmodule
