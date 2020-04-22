`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:16:46 04/20/2020
// Design Name:   count
// Module Name:   C:/Users/user/Documents/Xilinx_pro/f1/mul_16_01/count_ch.v
// Project Name:  mul_16_01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: count
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module count_ch;

	// Inputs
	reg [15:0] din;
	reg ld;
	reg dec;
	reg clk;

	// Outputs
	wire [15:0] dout;

	// Instantiate the Unit Under Test (UUT)
	count uut (
		.dout(dout), 
		.din(din), 
		.ld(ld), 
		.dec(dec), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		din = 0;
		ld = 0;
		dec = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		#50
		din=16'h9;
		
		#100
        
		// Add stimulus here
		ld=1;
		#200;
		ld=0;
		dec=1;

	end
	
	always #100 clk=~clk;
      
endmodule

