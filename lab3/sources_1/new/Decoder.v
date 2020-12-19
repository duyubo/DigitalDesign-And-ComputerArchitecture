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


module Decoder(input [3:0] s, output [6:0] D);
    assign D[0] = (~s[1] & s[0] & ~s[3] & ~s[2] |
                    ~s[1] & ~s[0] & ~s[3] & s[2] |
                    ~s[1] & s[0] & s[3] & s[2] |
                    s[1] & s[0] & s[3] & ~s[2] );
                    
    assign D[1] = (s[3] & s[2] & s[1] |
                    ~s[3] & s[2] & s[1] & ~s[0] |
                    ~s[3] & s[2] & ~s[1] & s[0] |
                    s[3] & ~s[2] & s[1] & s[0] |
                    s[3] & s[2] & ~s[1] & ~s[0] );
                    
    assign D[2] = (~s[3] & ~s[2] & s[1] & ~s[0] | 
                    s[3] & s[2] & ~s[1] & ~s[0] |
                    s[3] & s[2] & s[1]);
                    
    assign D[3] = (~s[3] & ~s[2] & ~s[1] & s[0] |
                    ~s[3] & s[2] & ~s[1] & ~s[0] |
                    ~s[3] & s[2] & s[1] & s[0] |
                    s[3] & ~s[2] & s[1] & ~s[0] |
                    s[3] & s[2] & s[1] & s[0] );
                    
    assign D[4] = (~s[3] & ~s[2] & ~s[1] & s[0] |
                    ~s[3] & ~s[2] & s[1] & s[0] |
                    ~s[3] & s[2] & ~s[1] |
                    ~s[3] & s[2] & s[1] & s[0] |
                    s[3] & ~s[2] & ~s[1] & s[0] );
                    
    assign D[5] = (~s[3] & ~s[2] & s[1] |
                    ~s[3] & ~s[2] & ~s[1] & s[0] |
                    ~s[3] & s[2] & s[1] & s[0] |
                    s[3] & s[2] & ~s[1] & s[0]);
                    
    assign D[6] = ( ~s[3] & ~s[2] & ~s[1] |
                    ~s[3] & s[2] & s[1] & s[0] |
                    s[3] & s[2] & ~s[1] & ~s[0]);
        
    
endmodule
