`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 01/17/2019 01:50:56 PM
// Description: MUX for Program Counter. RAT assignment 2.
//////////////////////////////////////////////////////////////////////////////////


module PC_Mux(
    input [9:0] FROM_IMMED,
    input [9:0] FROM_STACK,
    input [1:0] PC_MUX_SEL,
    output logic [9:0] DIN
    );
	
	always_comb
	begin
		if (PC_MUX_SEL == 0)      
			DIN = FROM_IMMED;        //When PC_MUX_SEL is zero, load in value from FROM_IMMED.
			else if (PC_MUX_SEL == 1)
				DIN = FROM_STACK;   //When PC_MUX_SEL is one, load in value from FROM_STACK.
				else if (PC_MUX_SEL == 2)
					DIN = 10'b1111111111;  //When PC_MUX_SEL is two, load in 0x3FF.
					else
						DIN = 10'b0000000000; //Set default as 0x000.
	end
	
endmodule
