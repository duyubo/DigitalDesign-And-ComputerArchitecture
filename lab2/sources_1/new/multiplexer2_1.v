`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2020 11:20:23 PM
// Design Name: 
// Module Name: multiplexer
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


module multiplexer2_1(input [1:0] a, input ss, output o);
    
    wire n;
    wire n1, n2;
    not g (n,ss);
    and g1 (n1, ss, a[1]);
    and g2 (n2, n, a[0]);
    or g3 (o, n1, n2);

endmodule
