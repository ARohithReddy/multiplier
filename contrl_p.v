`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:41:25 04/22/2020 
// Design Name: 
// Module Name:    contrl_p 
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
module contrl_p(lda,ldp,clrp,ldb,decb,eqz,start,done,clk
    );
	 input eqz,start,clk;
	 output reg lda,ldp,clrp,ldb,decb,done;
	 
	 reg [2:0] state;
	 
	 parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100;
	 
	 always @ (posedge clk)
	 begin
		case (state)
		
		s0 : if (start)
					state<=s1;
		s1 : state<=s2;
		s2 : state<=s3;			  
		s3 : if(eqz)
				state<=s4;
		s4 : state<=s0;
		default : state<=s0;
		
		endcase
	 end
	 
	 always @ (posedge clk)
	 begin
		case (state)
		
		s0 : begin
					lda<=0;
					ldp<=0;
					clrp<=0;
					ldb<=0;
					decb<=0;
					done<=0;
			  end
		s1 : begin
					lda<=1;
					ldp<=0;
					clrp<=0;
					ldb<=0;
					decb<=0;
					done<=0;
			  end
		s2 : begin
					lda<=0;
					ldp<=0;
					clrp<=1;
					ldb<=1;
					decb<=0;
					done<=0;
			  end			  
		s3 : begin
					lda<=0;
					ldp<=1;
					clrp<=0;
					ldb<=0;
					decb<=1;
					done<=0;
			  end
		s4 : begin
					lda<=0;
					ldp<=0;
					clrp<=0;
					ldb<=0;
					decb<=0;
					done<=1;
			  end
		default : begin
						lda<=0;
						ldp<=0;
						clrp<=0;
						ldb<=0;
						decb<=0;
						done<=0;
					 end
		
		endcase
	 end
	 
	 
endmodule
