`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2020 18:17:28
// Design Name: 
// Module Name: data_memory
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


module data_memory(input clk,       
                   input mem_read, 
                   input mem_write,
                   input [31:0] address,
                   input [31:0] write_data,
                   output reg [31:0] read_data
                   );
    reg [31:0] memory [0:1023];    // memoria de date     
    integer i;
    
   initial begin
    for (i = 0; i < 1024; i = i + 1) begin
      memory[i] <= 32'b0;
    end
  end
    
    always@(*)
    begin
        if (mem_read == 1)
            read_data = memory[address[11:2]];
    end
    
    always@(posedge clk)
    begin
        if (mem_write == 1)
            memory[address[11:2]] = write_data;
    end
endmodule
