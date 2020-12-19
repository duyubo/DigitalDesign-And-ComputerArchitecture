`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2020 11:58:57 PM
// Design Name: 
// Module Name: FourBitAdder
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


module FourBitAdder(input [3:0] a, input [3:0] b, output [4:0] s);
    wire [2:0]n;
    FullAdder a1 ( .a(a[0]), .b(b[0]), .ci(0), .s(s[0]), .co(n[0]));
    FullAdder a2 ( .a(a[1]), .b(b[1]), .ci(n[0]), .s(s[1]), .co(n[1]));
    FullAdder a3 ( .a(a[2]), .b(b[2]), .ci(n[1]), .s(s[2]), .co(n[2]));
    FullAdder a4 ( .a(a[3]), .b(b[3]), .ci(n[2]), .s(s[3]), .co(s[4]));
    
endmodule

