`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 02/08/2019 01:57:34 PM
// Description: 2 Input 10-bit mux.
//////////////////////////////////////////////////////////////////////////////////


module MUX_2IN(
    input [9:0] A,
    input [9:0] B,
    input MUX_SEL,
    output logic [9:0] OUT
    );
	
	always_comb
	begin
		if (MUX_SEL == 0)      
			OUT = A;       
			else if (MUX_SEL == 1)
				OUT = B;   
	end
	
endmodule

