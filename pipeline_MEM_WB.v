`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2020 20:24:46
// Design Name: 
// Module Name: pipeline_MEM_WB
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


module pipeline_MEM_WB(input clk, reset,
                       input[31:0] Read_data,
                       input[31:0] Address, 
                       input[4:0] Rd,
                       input MemRead_MEM, MemtoReg_MEM, MemWrite_MEM, RegWrite_MEM, Branch_MEM, ALUSrc_MEM,
                       input [1:0] ALUop_MEM,
                       
                       output reg[31:0] Read_data_out,
                       output reg[31:0] Address_out,
                       output reg[4:0] Rd_out,
                       output reg MemRead_WB, MemtoReg_WB, MemWrite_WB, RegWrite_WB, Branch_WB, ALUSrc_WB,
                       output reg [1:0] ALUop_WB
 
    );
    
    always@(posedge clk)
    begin
        if (reset)
            begin
                Read_data_out <= 32'b0;
                Address_out <= 32'b0;
                Rd_out <= 5'b0;
                MemRead_WB <= 1'b0;
                MemtoReg_WB <= 1'b0;
                MemWrite_WB <= 1'b0;
                RegWrite_WB <= 1'b0;
                Branch_WB <= 1'b0;
                ALUSrc_WB <= 1'b0;
                ALUop_WB <= 2'b0;
            end
        else
            begin
                Read_data_out <= Read_data;
                Address_out <= Address;
                Rd_out <= Rd;
                MemRead_WB <= MemRead_MEM;
                MemtoReg_WB <= MemtoReg_MEM;
                MemWrite_WB <= MemWrite_MEM;
                RegWrite_WB <= RegWrite_MEM;
                Branch_WB <= Branch_MEM;
                ALUSrc_WB <= ALUSrc_MEM;
                ALUop_WB <= ALUop_MEM;
            end
    end
endmodule
