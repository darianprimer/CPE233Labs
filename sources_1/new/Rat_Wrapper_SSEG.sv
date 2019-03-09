`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 02/23/2019 02:15:24 PM
// Description: Rat WRAPPER module with a seven segment display implemented.
//////////////////////////////////////////////////////////////////////////////////


module Rat_Wrapper_SSEG(
    input CLK,
    input BTNC,
    input [7:0] SWITCHES,
    output [7:0] LEDS,
    output [7:0] CATHODES,
    output [3:0] ANODES
    );
    
    
     logic MODE;             // 0 - display hex, 1 - display decimal
     logic [15:0] DATA_IN;
     
     RAT_WRAPPER RAT_WRAPPER(.CLK(CLK), .BTNC(BTNC), .SWITCHES(SWITCHES), .LEDS(LEDS));
	 
	 always_ff @ (posedge CLK)
	 begin
	   if (LEDS[7]==1)
	       DATA_IN = DATA_IN+1;
	       else
	           DATA_IN=DATA_IN;
	 end
	 
	 
	     SevSegDisp SevSegDisp(.CLK(CLK), .MODE(1), .DATA_IN(DATA_IN), .CATHODES(CATHODES), .ANODES(ANODES));
     
     
     
endmodule
