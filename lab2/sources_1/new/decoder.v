`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2020 11:08:31 PM
// Design Name: 
// Module Name: decoder
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


module decoder(input [1:0] a, output [3:0] o1);
    
    wire [1:0]n;
    not gNot1 (n[0], a[0]);//b
    not gNot2 (n[1], a[1]);//a
    
    and g1 (o1[3],a[0],a[1]);
    and g2 (o1[2],n[0],a[1]);
    and g3 (o1[1],a[0],n[1]);
    and g4 (o1[0],n[0],n[1]);

endmodule
