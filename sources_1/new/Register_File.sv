`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 01/24/2019 01:19:40 PM
// Description: Register file for RAT Assignment 3 part 1.
//////////////////////////////////////////////////////////////////////////////////


module Register_File(
    input [7:0] DIN,
    input [4:0] ADRX,
    input [4:0] ADRY,
    input RF_WR,
    input clk,
    output [7:0] DX_OUT,
    output [7:0] DY_OUT
    );
    
    logic [7:0] ram [0:31];
    
    // Initialize the memory to be all 0s
    initial begin
      int i;
      for (i=0; i<32; i++) begin
        ram[i] = 0;
      end
    end
    
    always_ff @ (posedge clk)
    begin
    
        if (RF_WR == 1)
            ram[ADRX] <= DIN;
   
    end

    assign DX_OUT = ram[ADRX];
    assign DY_OUT = ram[ADRY];
    
endmodule
