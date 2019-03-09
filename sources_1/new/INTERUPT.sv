`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 02/26/2019 01:57:14 PM
// Description: Interupt module for RAT MCU
//////////////////////////////////////////////////////////////////////////////////


module INTERUPT(
    input CLK,
    input SET,
    input CLR,
    output logic OUT = 0
    );
    
     always_ff @ (posedge CLK)
       begin
           if(CLR)
               OUT<=0;
               else if(SET)
                   OUT<=1;
       end
       
endmodule
