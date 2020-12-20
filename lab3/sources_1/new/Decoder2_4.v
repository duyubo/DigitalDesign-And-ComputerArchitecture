`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/18/2020 02:45:32 PM
// Design Name: 
// Module Name: Decoder2_4
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


module Decoder2_4(input [1:0] a, output [3:0] o1);
    
    wire [1:0]n;
    not gNot1 (n[0], a[0]);
    not gNot2 (n[1], a[1]);
    
    or g1 (o1[3],n[0],n[1]);
    or g2 (o1[2],a[0],n[1]);
    or g3 (o1[1],n[0],a[1]);
    or g4 (o1[0],a[0],a[1]);

endmodule
