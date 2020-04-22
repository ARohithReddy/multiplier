`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:48:19 04/22/2020 
// Design Name: 
// Module Name:    multi_fi 
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
module multi_fi(data_out,data_in,start,done,clk
    );
	 input [15:0] data_in;
	 input start, clk;
	 output [15:0] data_out;
	 output done;
	 
	 wire lda,ldp,clrp,ldb,decb,eqz,start,done;
	 
	 data_p d (data_out,data_in,lda,ldp,clrp,ldb,decb,eqz,clk);
	 contrl_p c (lda,ldp,clrp,ldb,decb,eqz,start,done,clk);
	 
endmodule
