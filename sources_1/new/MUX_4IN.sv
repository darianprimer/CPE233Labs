`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 02/08/2019 01:57:34 PM
// Description: 4 Input 8-bit mux.
//////////////////////////////////////////////////////////////////////////////////


module MUX_4IN(
    input [7:0] A,
    input [7:0] B,
    input [7:0] C,
    input [7:0] D,
    input [1:0] MUX_SEL,
    output logic [7:0] OUT
    );
	
	always_comb
	begin
		if (MUX_SEL == 0)      
			OUT = A;       
			else if (MUX_SEL == 1)
				OUT = B;   
				else if (MUX_SEL == 2)
					OUT = C;
					else if (MUX_SEL == 3)
					   OUT = D;
	end
	
endmodule

