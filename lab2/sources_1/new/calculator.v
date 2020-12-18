`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2020 04:35:55 PM
// Design Name: 
// Module Name: calculator
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


module calculator(input [3:0] a, input [3:0] b, input ss, output [4:0] s,output [3:0] o1,output o,output f);

FourBitAdder g ( .a(a), .b(b), .s(s));
decoder g1 (.a(a[1:0]), .o1(o1));
multiplexer2_1 g2 (.a(a[1:0]), .ss(ss), .o(o));
multiplexer4_1 g3 (.a(a[3:0]), .s(b[1:0]), .o(f));

endmodule
