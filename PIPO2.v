`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:15:54 04/20/2020 
// Design Name: 
// Module Name:    PIPO2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module PIPO2(dout,din,clr,ld,clk
    );
	 input [15:0] din;
	 input clr,clk,ld;
	 output reg [15:0] dout;
	 
	 always @(posedge clk)
	 begin
		if(ld)
		dout<=din;
		else if (clr)
		dout<=16'h0000;
	 
	 end


endmodule
