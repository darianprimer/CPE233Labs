`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 02/27/2019 01:00:15 PM
//////////////////////////////////////////////////////////////////////////////////


module Keypad_Driver(
    input   CLK, C, A, E,
    //input   [15:0] MAXCOUNT_S,
    output  B, G, F, D, INTERUPT,
    output  [3:0] OUTPUT_S
    );
    
    //outputs of clockdivider
    logic   sclk_s;
    
    //outputs of KEY_FSM
    logic [3:0] DATA_S;
    logic PRESS_S;
    logic LD_S;
    
    //assign MAXCOUNT_S=2272727;
    
    clockdivider    clockdivider(.clk(CLK), .MAXCOUNT(20000), .sclk(sclk_s));
    
    KEYPAD_FSM     KEY_FSM(.CLK(sclk_s), .C(C), .A(A), .E(E),   //INPUTS
                        .DATA(DATA_S), .PRESS(PRESS_S), .B(B), .G(G), .F(F), .D(D), .LD(LD_S)); //OUTPUTS
                        
    INT_FSM     INT_FSM(.CLK(CLK), .PRESS(PRESS_S), .INTERUPT(INTERUPT));
    
    Register   Register(.clk(sclk_s), .en(LD_S), .D(DATA_S), .Q(OUTPUT_S));
    
    
endmodule
