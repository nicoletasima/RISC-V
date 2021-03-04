`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2020 20:24:10
// Design Name: 
// Module Name: pipeline_EX_MEM
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


module pipeline_EX_MEM(input clk, reset,
                       input Zero,
                       input[31:0] ALU_result,
                       input[31:0] AddSum,
                       input[31:0] mux22_out,
                       input[4:0] RD_EX,
                       input MemRead_EX, MemtoReg_EX, MemWrite_EX, RegWrite_EX, Branch_EX, ALUSrc_EX,
                       input [1:0] ALUop_EX,
                       
                       output reg Zero_out,
                       output reg[31:0] ALU_result_out,
                       output reg[31:0] AddSum_out,
                       output reg[31:0] mux22_out_out,
                       output reg[4:0] RD_EX_out,
                       output reg MemRead_MEM, MemtoReg_MEM, MemWrite_MEM, RegWrite_MEM, Branch_MEM, ALUSrc_MEM,
                       output reg [1:0] ALUop_MEM
 
    );
    
    always@(posedge clk)
    begin
        if (reset)
            begin
                AddSum_out <= 32'b0;
                Zero_out <= 0;
                ALU_result_out <= 32'b0;
                mux22_out_out <= 32'b0;
                RD_EX_out <= 5'b0;
                MemRead_MEM <= 1'b0;
                MemtoReg_MEM <= 1'b0;
                MemWrite_MEM <= 1'b0;
                RegWrite_MEM <= 1'b0;
                Branch_MEM <= 1'b0;
                ALUSrc_MEM <= 1'b0;
                ALUop_MEM <= 2'b0;
            end
        else
            begin
                AddSum_out <= AddSum;
                Zero_out <= Zero;
                ALU_result_out <= ALU_result;
                mux22_out_out <= mux22_out;
                RD_EX_out <= RD_EX;
                MemRead_MEM <= MemRead_EX;
                MemtoReg_MEM <= MemtoReg_EX;
                MemWrite_MEM <= MemWrite_EX;
                RegWrite_MEM <= RegWrite_EX;
                Branch_MEM <= Branch_EX;
                ALUSrc_MEM <= ALUSrc_EX;
                ALUop_MEM <= ALUop_EX;
            end
    end
endmodule
