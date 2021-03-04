`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2020 23:12:50
// Design Name: 
// Module Name: imm_gen
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

// lw, addi, andi, ori
// xori, slti, sltiu, srli, srai
// slli, sw
// beq, bne, blt, bge, bltu, bgeu
module imm_gen(input[31:0] in, output reg [31:0] out);
    integer i;
    always@(in) begin
    case(in[6:0])
        7'b0000011: begin   // lw
                    out[0] = in[20];
                    out[4:1] = in[24:21];
                    out[10:5] = in[30:25];
                    for (i = 11; i < 32; i = i + 1)
                        out[i] = in[31];
                    end
        7'b0010011: begin // addi.
                    out[0] = in[20];
                    out[4:1] = in[24:21];
                    out[10:5] = in[30:25];
                    for (i = 11; i < 32; i = i + 1)
                        out[i] = in[31];
                    end
                       
        7'b0100011: begin   // sw
                    out[0] = in[7];
                    out[4:1] = in[11:8];
                    out[10:5] = in[30:25];
                    for (i = 11; i < 32; i = i + 1)
                        out[i] = in[31];
                    end 
        7'b1100011: begin   // beq, bne, blt, bge, bltu, bgeu
                    out[0] = 0;
                    out[4:1] = in[11:8];
                    out[10:5] = in[30:25];
                    out[11] = in[7];
                    for (i = 12; i < 32; i = i + 1)
                        out[i] = in[31];
                    end
        default: out = 32'b0;     
    endcase
    end
endmodule
