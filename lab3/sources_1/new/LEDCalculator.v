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


module LEDCalculator(input [3:0] a, input [3:0] b, input [1:0] s, output [6:0] D, output o, output [3:0] AN);
    wire [4:0] s1;
    FourBitAdder g1 ( .a(a), .b(b), .s(s1));
    assign o = s1[4];
    Decoder g2 (.s(s1[3:0]),.D(D));
    Decoder2_4(.a(s), .o1(AN));

endmodule
