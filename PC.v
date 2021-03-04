`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2020 23:01:26
// Design Name: 
// Module Name: PC
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


module PC(input clk, res, write, input[31:0] in, output reg[31:0] out);
    always@(posedge clk)
    begin
        if (res == 1)
            out = 32'b0;
        else
        begin
            if (write == 1) 
                    out = in;
         end
    end
endmodule
