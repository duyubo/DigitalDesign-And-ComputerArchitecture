`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/18/2020 12:02:53 AM
// Design Name: 
// Module Name: LEDCalculator
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


module LEDCalculator(input [3:0] a, input [3:0] b, output [6:0] D, output o);
    wire [4:0] s;
    FourBitAdder g1 ( .a(a), .b(b), .s(s));
    assign o = s[4];
    Decoder g2 (.s(s[3:0]),.D(D));

endmodule
