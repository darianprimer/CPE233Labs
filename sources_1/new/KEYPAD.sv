`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 02/28/2019 11:41:53 AM
// Description: Keypad Top module w/ sseg
//////////////////////////////////////////////////////////////////////////////////


module KEYPAD(
    input   CLK, C, A, E,
   //input   [15:0] MAXCOUNT_S,
   output  INTERUPT,
   output B, G, F, D,
   output  [7:0] seg,
   output  [3:0] an    
   );

   logic [3:0] OUTPUT_S;
   
   
   
   Keypad_Driver Keypad_Driver(.CLK(CLK), .C(C), .A(A), .E(E), 
                               .B(B), .G(G), .F(F), .D(D), .INTERUPT(INTERUPT), .OUTPUT_S(OUTPUT_S));
                               
   BinSseg  BinSseg(.binary(OUTPUT_S), .seg(seg), .an(an));
   
endmodule
