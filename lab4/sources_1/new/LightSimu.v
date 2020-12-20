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
           input [1:0] lr,
           output [5:0] light);
    wire n_clk;
    clk_div( .clk(clk), .rst(reset),  .clk_en(n_clk));

    FSM(.clk(n_clk), .reset(reset), .lr(lr), .light(light));

    


endmodule
