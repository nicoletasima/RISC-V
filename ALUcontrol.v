`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2020 16:57:14
// Design Name: 
// Module Name: ALUcontrol
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


module ALUcontrol(input [1:0] ALUop,
                  input [6:0] funct7,
                  input [2:0] funct3,
                  output reg [3:0] ALUinput);
                  
    always@(ALUop, funct3, funct7)
    begin
        casex({ALUop, funct3, funct7})
            12'b00xxxxxxxxxx: ALUinput <= 4'b0010;   // ld, sd
            12'b100000000000: ALUinput <= 4'b0010;   // add
            12'b100000100000: ALUinput <= 4'b0110;   // sub
            12'b101110000000: ALUinput <= 4'b0000;   // and
            12'b101100000000: ALUinput <= 4'b0001;   // or
            12'b11110xxxxxxx: ALUinput <= 4'b0001;   // ori
            12'b101000000000: ALUinput <= 4'b0011;   // xor
            12'b1x1010000000: ALUinput <= 4'b0101;   // srl, srli
            12'b1x0010000000: ALUinput <= 4'b0100;   // sll, slli
            12'b1x1010100000: ALUinput <= 4'b1001;   // sra, srai
            12'b100110000000: ALUinput <= 4'b0111;   // sltu
            12'b100100000000: ALUinput <= 4'b1000;   // slt
            12'b0100xxxxxxxx: ALUinput <= 4'b0110;   // beq
            12'b0110xxxxxxxx: ALUinput <= 4'b1000;   // blt, bge
            12'b0111xxxxxxxx: ALUinput <= 4'b0111;   // bltu, bgeu
        endcase
    end                  
endmodule
