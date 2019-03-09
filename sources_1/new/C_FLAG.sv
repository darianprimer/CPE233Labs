`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 02/05/2019 11:43:05 PM
// Description: 1-Bit redister for carry flag.
//////////////////////////////////////////////////////////////////////////////////


module C_FLAG
    (input clk,
    input en,
    input set,
    input clr,
    input D,
    output logic Q = 0
    );
    
    always_ff @ (posedge clk, negedge clr)
    begin
        if(clr)
            Q=0;
        else if(set)
            Q=1;
        else if(en)
            Q=D;
    end
    
endmodule
