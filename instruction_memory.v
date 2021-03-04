`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2020 23:03:20
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory(input[9:0] address, output reg[31:0] instruction);
    reg [31:0] mem [0:1023];
    initial
    begin
        $readmemh("code.mem", mem);
    end
    
    always@(address) begin
        instruction = mem[address];   
    end
endmodule
