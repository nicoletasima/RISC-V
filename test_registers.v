`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2020 22:37:01
// Design Name: 
// Module Name: test_registers
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


module test_registers;
    reg clk;
    reg reg_write;
    reg[4:0] read_reg1, read_reg2, write_reg;
    reg[31:0] write_data;
    wire [31:0] read_data1, read_data2;
    
    registers regs(clk, reg_write, read_reg1, read_reg2, write_reg, write_data,read_data1, read_data2);
    
    always #10 clk=~clk;
     initial begin
    #0 clk = 0; reg_write = 0; read_reg1 = 0; read_reg2 = 0; write_reg = 0;
    #20 reg_write = 1; write_reg = 0; write_data = 10;
    #20 write_reg = 5; write_data = 39;
    #20 write_reg = 10; write_data = 100;
    #20 write_reg = 13; write_data = 56;
    #20 write_reg = 17; write_data = 78;
    #20 write_reg = 23; write_data = 215;
    #20 write_reg = 26; write_data = 99;
    
    #20 reg_write = 0; read_reg1 = 0; read_reg2 = 1;
    #20 read_reg1 = 5; read_reg2 = 6;
    #20 read_reg2 = 10;
    #20 read_reg2 = 11;
    #20 read_reg1 = 13;
    #20 read_reg1 = 17; read_reg2 = 23;
    #20 read_reg1 = 26;
end         
endmodule
