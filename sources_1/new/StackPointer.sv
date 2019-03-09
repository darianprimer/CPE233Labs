`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 02/23/2019 11:02:11 AM 
// Description: Stack Pointer module for RAT MCU
//////////////////////////////////////////////////////////////////////////////////


module StackPointer(

    input [7:0] DATA,
    input LD,
    input INCR,
    input DECR,
    input RST,
    input CLK,
    output logic [7:0] OUT
    );
    
    
    always_ff @ (posedge CLK)       //All signals are rising edge synchronous.
    begin
    
        if (RST==1)                 //RST holds highest precedence.
            OUT <= 8'b00000000;     //If RST=1, set OUT=0x00.
            else if (LD==1)      //LD holds second precedence.
                OUT <= DATA;            //If OUT=1, load value from DATA.
                else if (INCR==1)   //INCR holds third precedence.
                        OUT <= OUT +1;    //If INCR=1, increment OUT.  
                        else if (DECR==1)   //DECR holds lowest precedence.
                            OUT <= OUT -1;      //if DECR=1, decrement OUT.    
    
    end
    
endmodule

    

