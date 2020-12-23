`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/22/2020 10:42:22 PM
// Design Name: 
// Module Name: ALU
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


module ALU(input [31:0] A, input [31:0] B, input [3:0] AluOp, output [31:0] result, output z);
    
    reg [31:0] r; 
    always @(*)
    begin
        case(AluOp)
        4'b0000: r = A + B;
        4'b0010: r = A - B;
        4'b0100: r = A & B;
        4'b0101: r = A | B;
        4'b0110: r = A ^ B;
        4'b0111: r = ~ (A | B);
        default: 
            r= {31'b0, 1'b1} & (A - B); 
        endcase
    end
    
    assign result = r;
    assign zero = (r == 32'b0) ? 1:0;

endmodule
