`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/18/2020 12:01:23 AM
// Design Name: 
// Module Name: Decoder
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


module Decoder(input [3:0] s, output reg [6:0] D);

    always @ (s)
        begin
            case (s)
                4'b0000: D <= 7'b1000000;
                4'b0001: D <= 7'b1111001;
                4'b0010: D <= 7'b0100100;
                4'b0011: D <= 7'b0110000;
                4'b0100: D <= 7'b0011001;
                4'b0101: D <= 7'b0010010;
                4'b0110: D <= 7'b0000010;
                4'b0111: D <= 7'b1111000;
                4'b1000: D <= 7'b0000000;
                4'b1001: D <= 7'b0010000;
                4'b1010: D <= 7'b0001000;
                4'b1011: D <= 7'b0000011;
                4'b1100: D <= 7'b1000110;
                4'b1101: D <= 7'b0100001;
                4'b1110: D <= 7'b0000110;
                default: D <= 7'b0001110;
            endcase
        end
    
        
    
endmodule
