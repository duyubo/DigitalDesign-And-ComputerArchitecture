`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2020 11:59:43 PM
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(input a, input b, input ci, output s, output co);
    
    wire n;
    xor g1 (n, a, b);
    xor g (s,n,ci); 
    and g2 (y1, a, b);
    and g3 (y2, b, ci);                 
    and g4 (y3, a, ci);
    or g5 (y4, y1, y2);
    or g6 (co, y3, y4);

endmodule
