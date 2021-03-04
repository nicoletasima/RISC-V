`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2020 23:08:01
// Design Name: 
// Module Name: registers
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


module registers(input clk, reg_write, 
                 input[4:0] read_reg1, read_reg2, write_reg, 
                 input[31:0] write_data,
                 output [31:0] read_data1, read_data2);
    reg [31:0] Registers [31:0];
    reg[31:0] read_data11, read_data21;
    integer i;
    initial begin
        for (i = 0; i < 32; i = i + 1)
        begin
        Registers[i] = i;
        end
    end
    
    always@(posedge clk)
    begin
        if (reg_write == 1)
        begin
            Registers[write_reg] <= write_data;
        end
    end
    
    always@(read_reg1 or read_reg2)
    begin
        read_data11 = Registers[read_reg1];
        read_data21 = Registers[read_reg2];
    end
    
    assign read_data1 = read_data11;
    assign read_data2 = read_data21;
  
endmodule
