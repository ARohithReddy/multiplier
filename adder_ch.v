`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:39:01 04/20/2020
// Design Name:   adder
// Module Name:   C:/Users/user/Documents/Xilinx_pro/f1/mul_16_01/adder_ch.v
// Project Name:  mul_16_01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder_ch;

	// Inputs
	wire [15:0] sum;
	reg [15:0] a;
	reg [15:0] b;

	// Instantiate the Unit Under Test (UUT)
	adder uut (
		.sum(sum), 
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		//sum = 0;
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        a=16'h3453;
		  b=16'h1231;
		  #100;
		  a=16'h3451;
		  
		  b=16'h1232;
		  
		// Add stimulus here

	end
      
endmodule

