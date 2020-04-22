`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:03:22 04/22/2020
// Design Name:   multi_fi
// Module Name:   C:/Users/user/Documents/Xilinx_pro/f1/mul_16_01/multi_f_ch.v
// Project Name:  mul_16_01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multi_fi
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multi_f_ch;

	// Inputs
	reg [15:0] data_in;
	reg start;
	reg clk;

	// Outputs
	wire [15:0] data_out;
	wire done;

	// Instantiate the Unit Under Test (UUT)
	multi_fi uut (
		.data_out(data_out), 
		.data_in(data_in), 
		.start(start), 
		.done(done), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		data_in = 0;
		start = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#150;
		data_in=16'h04;		//first operand
		
		#200;
		start=1;					//start operation
		
		#200;
		start=0;
		
      #400;
		data_in=16'h03;		//second operand
		
        
		// Add stimulus here

	end
   
	always #100 clk=~clk;
	
	
endmodule

