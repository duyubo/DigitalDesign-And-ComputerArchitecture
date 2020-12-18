`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2020 12:57:57 PM
// Design Name: 
// Module Name: multiolexer4_1
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


module multiplexer4_1(input [3:0] a, input [1:0] s, output o);
    wire [1:0] n;
    multiplexer2_1 g1 (.a(a[3:2]), .ss(s[0]), .o(n[1]));
    multiplexer2_1 g2 (.a(a[1:0]), .ss(s[0]), .o(n[0]));
    multiplexer2_1 g3 (.a(n), .ss(s[1]), .o(o));
    
endmodule
