`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 01/22/2019 11:26:18 PM 
// Description: Speaker driver for CPE 233 Peripheral Assignment 1.
//////////////////////////////////////////////////////////////////////////////////


module Speaker(
    input clk,
    input [7:0] switches,
    output logic note_frequency
    );
    
    logic [15:0] t1;
    
    Speaker_Driver Speaker_Driver(.note_select(switches), .maxcount(t1));
    clockdivider clockdivider(.clk(clk), .MAXCOUNT(t1), .sclk(note_frequency));
    
endmodule
