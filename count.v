`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:08:08 04/20/2020 
// Design Name: 
// Module Name:    count 
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
module count(dout,din,ld,dec,clk
    );
	 input [15:0] din;
	 input dec,clk,ld;
	 output reg [15:0] dout;
	 
	 always @ (posedge clk)
	 begin
		if (ld) dout<=din;
		else if (dec) dout<=dout-1;
	 end
	 
endmodule
