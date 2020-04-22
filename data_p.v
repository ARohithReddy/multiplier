`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:18:45 04/22/2020 
// Design Name: 
// Module Name:    data_p 
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
module data_p(data_o,data_in,lda,ldp,clrp,ldb,decb,eqz,clk
    );
	 input [15:0] data_in;
	 input lda,ldb,decb,ldp,clrp,clk;
	 output [15:0] data_o;
	 output eqz;
	 wire [15:0] x,z,bout;
	 
	 PIPO1 a (x,data_in,lda,clk);
	 PIPO2 p (data_o,z,clrp,ldp,clk);
	 adder add (z,x,data_o);
	 count b (bout,data_in,ldb,decb,clk);
	 comp eq (eqz,bout);
	 

endmodule
