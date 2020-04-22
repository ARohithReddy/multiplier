`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:08:28 04/20/2020
// Design Name:   PIPO1
// Module Name:   C:/Users/user/Documents/Xilinx_pro/f1/mul_16_01/PIPO_ch.v
// Project Name:  mul_16_01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PIPO1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PIPO_ch;

	// Inputs
	reg [15:0] din;
	reg ld;
	reg clk;

	// Outputs
	wire [15:0] dout;

	// Instantiate the Unit Under Test (UUT)
	PIPO1 uut (
		.dout(dout), 
		.din(din), 
		.ld(ld), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		din = 16'h3451;
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
		
        
		// Add stimulus here

	end
      
	always #100 clk=~clk;
endmodule

