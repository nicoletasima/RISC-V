`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2020 21:42:12
// Design Name: 
// Module Name: IF_ID_Pipeline
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


module IF_ID_Pipeline(input clk, reset, load,
                      input[31:0] in_PC, in_IM,
                      output reg[31:0] out_PC, out_IM);
    always@(posedge clk) begin
        if (reset == 1)
            begin
            out_PC = 0;
            out_IM = 0;
            end
        else if (load == 1)
            begin
            out_PC <= in_PC;
            out_IM <= in_IM;
            end
    end
endmodule
