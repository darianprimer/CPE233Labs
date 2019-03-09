`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 01/17/2019 12:53:45 PM
// Description: Program Counter for RAT Assignment 2.
//////////////////////////////////////////////////////////////////////////////////


module ProgramCounter(
    input [9:0] DIN,
    input PC_LD,
    input PC_INC,
    input RST,
    input CLK,
    output logic [9:0] PC_COUNT
    );
    
    
    always_ff @ (posedge CLK)       //All signals are rising edge synchronous.
    begin
    
        if (RST==1)                 //RST holds highest precedence.
            PC_COUNT <= 10'b0000000000;     //If RST=1, set PC_COUNT=0x000.
            else if (PC_LD==1)      //PC_LD holds second precedence.
                PC_COUNT <= DIN;            //If PC_Count=1, load value from DIN.
                else if (PC_INC==1) //PC_INC holds lowest precedence.
                        PC_COUNT <= PC_COUNT +1;    //If PC_INC=1, increment PC_COUNT.  
    
    end
    
endmodule
