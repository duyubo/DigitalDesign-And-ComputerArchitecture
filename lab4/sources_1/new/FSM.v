`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/19/2020 11:18:42 PM
// Design Name: 
// Module Name: FSM
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


module FSM(input clk, 
           input reset,
           input  lr,
           output [2:0] light);

   reg  [2:0] state, nextstate;
   
   parameter S0 = 3'b000;
   parameter S1 = 3'b001;
   parameter S2 = 3'b011;
   parameter S3 = 3'b111;

   // state register
   
  
   always @ (posedge clk, posedge reset)
      if (reset) state <= S0;
      else      state <= nextstate;
   
         
   always @ (*) // next state logic
      case (state)
         S0: if (lr == 1)
                  nextstate = S1;
             else nextstate = S0; 
         S1: 
             nextstate = S2;
         S2:
             nextstate = S3;
         default: nextstate = S0;
      endcase

    assign light = state;

endmodule 