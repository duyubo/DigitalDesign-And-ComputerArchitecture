`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/20/2020 12:33:02 AM
// Design Name: 
// Module Name: LightSimu
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


module LightSimu(input clk, 
           input reset,
           input l,
           input r,
           output [5:0] light);
    
    wire n_clk;
    clk_div( .clk(clk), .rst(reset),  .clk_en(n_clk));       
    FSM f1 (.clk(n_clk), .reset(reset), .lr(l), .light(light[2:0]));
    FSM f2 (.clk(n_clk), .reset(reset), .lr(r), .light(light[5:3]));
 
endmodule
