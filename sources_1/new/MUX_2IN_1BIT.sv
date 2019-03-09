`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 02/26/2019 11:41:25 PM
// Description: 2 Input, Single bit mux
//////////////////////////////////////////////////////////////////////////////////


module MUX_2IN_1BIT(

    input  A,
    input  B,
    input  MUX_SEL,
    output logic  OUT
    );
	
	always_comb
	begin
		if (MUX_SEL == 0)      
			OUT = A;       
			else if (MUX_SEL == 1)
				OUT = B;   
	end
	
endmodule

