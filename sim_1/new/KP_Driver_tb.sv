`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2019 01:38:33 PM
// Design Name: 
// Module Name: KP_Driver_tb
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


module KP_Driver_tb( );
   logic CLK, A, C, E; 
   logic B, G, F, D, INTERUPT;
   logic [3:0] DATA_S;
   
   Keypad_Driver Keypad_Driver_inst(.*);
   
    always 
      begin
          CLK = 0; #5;
          CLK = 1; #5;
      end
      
      initial
      begin
         C = 1;
         A=0;
         E=0;
         #30;
         
         C = 0;
         A=0;
         E=0;
         #30;
         
         C = 1;
         A=0;
         E=0;
         #10;  
         
         C = 0;
         A=0;
         E=0;
         #10;
         
         A = 1;
         C=0;
         E=0;
         #30;
         
         A = 0;
         C=0;
         E=0;
         #30;
         
         A = 1; 
         C=0;
         E=0;
         #10;
         
         A = 0;
         C=0;
         E=0;
         #10;
         
         E = 1;
         C=0;
         A=0;
         #10;
         
         E = 0;
         C=0;
         A=0;
         #10;
         
         E = 1;
         C=0;
         A=0;
         #10;

         E = 0;
         C=0;
         A=0;
         #10;

         
         E = 1;
         C=0;
         A=0;
         #10;
         
      end
          
endmodule
