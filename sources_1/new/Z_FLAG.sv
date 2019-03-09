`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 02/05/2019 11:43:05 PM
// Description: 1-Bit redister for ZERO flag.
//////////////////////////////////////////////////////////////////////////////////


module Z_FLAG
    (input clk,
    input en,
    input D,
    output logic Q = 0
    );
    
    always_ff @ (posedge clk)
    begin
        if(en)
            Q=D;
            //else
                //Q=Q;
    end
    
endmodule
