`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// https://github.com/Caskman/MIPS-Processor-in-Verilog/blob/master/if_id_reg.v
// Create Date: 08.11.2020 23:09:35
// Design Name: 
// Module Name: IF
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


module IF(input clk, reset, input PCSrc, PC_write, 
           input [31:0] PC_Branch, output [31:0] PC_IF, INSTRUCTION_IF);
   wire[31:0] pc_output;
   wire[31:0] mux_output;
   wire[31:0] adder_output;
   wire[31:0] im_output;
   
   mux2_1 mux(adder_output, PC_Branch, PCSrc, mux_output);
   PC pc1(clk, reset, PC_write, mux_output, pc_output);
   adder ad1(pc_output, 4, adder_output);
   instruction_memory im(pc_output[11:2], im_output); 
   
   assign PC_IF = pc_output;
   assign INSTRUCTION_IF = im_output;
       
endmodule
