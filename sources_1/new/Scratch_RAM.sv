`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 01/24/2019 02:02:58 PM
// Description: Scract RAM for RAT Assignment 3 Part 2.
//////////////////////////////////////////////////////////////////////////////////


module Scratch_RAM(
    input [9:0] DATA_IN,
    input [7:0] SCR_ADDR,
    input SCR_WE,
    input clk,
    output [9:0] DATA_OUT
    );
    
    logic [9:0] ram [0:255];
        
        // Initialize the memory to be all 0s
        initial begin
          int i;
          for (i=0; i<256; i++) begin
            ram[i] = 0;
          end
        end
    
    always_ff @ (posedge clk)
            begin
            
                if (SCR_WE == 1)
                    ram[SCR_ADDR] <= DATA_IN;
            end
    assign DATA_OUT = ram[SCR_ADDR];
    
endmodule
