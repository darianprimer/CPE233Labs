`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2019 07:47:03 PM
// Design Name: 
// Module Name: RATWRAPPER_SIM
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RATWRAPPER_SIM();
    logic CLK;
    logic BTNC;
    logic BTN_INT;
    logic [7:0] SWITCHES;
    logic [7:0] LEDS;
    logic [7:0] CATHODES;
    logic [3:0] ANODES;
    
    RAT_WRAPPER RAT_WRAPPER_INST(.*);
   always
    begin
        CLK=0; #5;
        CLK=1; #5;
    end
    
//    always
//        begin
//        BTN_INT=1; #12;
//        BTN_INT=0; #30;
//        BTN_INT=1; #200;
//     end
    
     //int i;
    initial
        begin
//        for (i=0; i<200; i++)
//        begin
//        BTN_INT=0;
//        #300
        BTN_INT=0;
        #300;
        BTN_INT=1;
        #30;
        BTN_INT=0;
        #300;
        BTN_INT=1;
        #10;
        BTN_INT=0;
        
//        #30;
//        BTN_INT=0;
//        #50;
//        end
        
        end
        
endmodule
