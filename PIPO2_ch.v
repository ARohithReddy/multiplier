`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:23:06 04/20/2020
// Design Name:   PIPO2
// Module Name:   C:/Users/user/Documents/Xilinx_pro/f1/mul_16_01/PIPO2_ch.v
// Project Name:  mul_16_01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PIPO2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PIPO2_ch;

	// Inputs
	reg [15:0] din;
	reg clr;
	reg ld;
	reg clk;

	// Outputs
	wire [15:0] dout;

	// Instantiate the Unit Under Test (UUT)
	PIPO2 uut (
		.dout(dout), 
		.din(din), 
		.clr(clr), 
		.ld(ld), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		din = 16'h3454;
		clr = 0;
		ld = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#150;
		
		ld=1;
		
		#200;
		ld=0;
		#400;
		din = 16'h3456;
		ld=1;
		#200;
		ld=0;    
		
		#400;
		clr=1;
		// Add stimulus here

	end
   

		always #100 clk=~clk;
endmodule

