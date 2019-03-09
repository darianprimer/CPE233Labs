`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 01/17/2019 01:58:29 PM 
// Description: Test File for PC_Mux. RAT assignment 2 
//////////////////////////////////////////////////////////////////////////////////


module PC_MuxSIM();

	logic [9:0] FROM_IMMED;
    logic [9:0] FROM_STACK;
    logic [1:0] PC_MUX_SEL;
    logic [9:0] DIN;
	
	PC_Mux PC_Mux_inst(.*);
	
	initial
	begin
	
		//case 1
		//select value FROM_IMMED
		FROM_IMMED = 10'b1110011001;
		FROM_STACK = 10'b0000000000;
		PC_MUX_SEL = 0;
		#10
		
		//case 2
		//select value FROM_STACK
		FROM_IMMED = 10'b1110011001;
		FROM_STACK = 10'b0000000000;
		PC_MUX_SEL = 1;
		#10
		
		//case 1
		//select value 0x3FF
		FROM_IMMED = 10'b1110011001;
		FROM_STACK = 10'b0000000000;
		PC_MUX_SEL = 2;
		#10
		
		//case 1
		//select value 0.
		FROM_IMMED = 10'b1110011001;
		FROM_STACK = 10'b0000000000;
		PC_MUX_SEL = 3;
	
	end	
		
endmodule
