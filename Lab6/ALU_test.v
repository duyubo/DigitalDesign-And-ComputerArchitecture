`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: ETH Zurich
// Engineer: Frank K. Gurkaynak
//
// Create Date:   15:24:03 03/17/2011
// Design Name:   alu
// Module Name:   ALU_test.v
// Project Name:  Lab5b
// Target Device:  
// Tool versions:  
// Description: Simple testbench to test the ALU
//
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_test;

	// Inputs
   reg [31:0]	a;
   reg [31:0]	b;
   reg [3:0]	aluop;

   // Outputs
   wire [31:0]	result;
   wire			zero;

   // Test clock 
   reg			clk ; // in this version we do not really need the clock

   // Expected outputs
   reg [31:0]	exp_result;
   reg			exp_zero;

   // Vector and Error counts
   reg [10:0]	vec_cnt, err_cnt;

   // TO DO:
   // Define an array called 'testvec' that is wide enough to hold the inputs:
   //   aluop, a, b 
	//
   // and the expected output
   //   exp_result
	//
	reg [99:0] testvec [11:0];
   // for each testcase.
   // Note: we will not store 'exp_zero' in this array.
    
    
   // The test clock generation
   always				// process always triggers
	begin
		clk=1; #50;		// clk is 1 for 50 ns 
		clk=0; #50;		// clk is 0 for 50 ns
	end					// generate a 100 ns clock

   // Initialization
	initial
	begin
		// TO DO:
		// Read the content of the file testvectors_hex.txt into the 
		// array testvec. The file contains values in hexadecimal format
        $readmemh("C:/Users/86182/Lab6/Lab6.srcs/sim_1/imports/lab6_files/testvectors_hex.txt", testvec);
        
		err_cnt=0; // number of errors
		vec_cnt=0; // number of vectors
	end
   
   // TO DO:
   // calculate the value of 'exp_zero' from the 'exp_result'
   // 
   
   // Tests
	always @ (posedge clk)		// trigger with the test clock
	begin
		// Wait 20 ns, so that we can safely apply the inputs
		#20; 

		// Assign the signals from the testvec array
		{aluop,a,b,exp_result}= testvec[vec_cnt]; 
        if (exp_result == 32'b0)
            exp_zero = 1;
        else
            exp_zero = 0;
        
		// Wait another 60ns after which we will be at 80ns
		#60; 

		// Check if output is not what we expect to see
		if ((result !== exp_result) | (zero !== exp_zero))
		begin                                         
			// Display message
			$display("Error at %5d ns: Aluop %b a=%h b=%h", $time, aluop,a,b);	// %h displays hex
			$display("       %h (%h expected)",result,exp_result);
			$display(" Zero: %b (%b expected)",zero,exp_zero);							// %b displays binary
			err_cnt = err_cnt + 1;																// increment error count
		end

		vec_cnt = vec_cnt + 1;																	// next vector
	
		// We use === so that we can also test for X
		//$display("equal? = %b",(testvec[vec_cnt][99:96] === 4'bxxxx));
		if ((aluop === 4'bxxxx))
		begin
			// End of test, no more entries...
			$display ("%d tests completed with %d errors", vec_cnt, err_cnt);
			
			// Wait so that we can see the last result
			#20; 
			
			// Terminate simulation
            $finish;
		end
	end

   // TO DO:
   // Instantiate the Unit Under Test (UUT)
   //alu  myAlu (.A(a), .B(b), .AluOp(aluop), .result(result), .z(zero));
   bad_ALU bAlu ( .a(a), .b(b), .aluop(aluop), .result(result), .zero(zero));
   
endmodule
