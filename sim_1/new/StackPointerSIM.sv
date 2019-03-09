`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2019 11:11:04 AM
// Design Name: 
// Module Name: StackPointerSIM
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


module StackPointerSIM();

logic [7:0] DATA;
            logic LD;
            logic INCR;
            logic DECR;
            logic RST;
            logic CLK;
            logic [7:0] OUT;
            
            StackPointer StackPointer_inst (.*); 
                
            //create clock input
             always
             begin
                 CLK = 0; #5;
                 CLK = 1; #5;
             end
             
             initial
             begin
             
             //case 1
			 //Load 21 into the program counter.
             DATA = 8'b 00010101;
             LD=1;
             INCR=0;
             RST=0;
             DECR=0;
             #10;
             
             //case 2
			 //Load 40 into Program Counter. Chack that LD has precedence over INCR.
             DATA = 8'b 00101000;
             LD=1;
             INCR=1;
             RST=0;
             DECR=1;
             #10;
			 
			 //case 3
			 //Reset Program Counter. Check that RST has precendence over everything.
			 DATA = 8'b 00101000;
             LD=1;
             INCR=1;
             RST=1;
             DECR=1;
             #10;
			 
			 //case 4
			 //Load 21 into the Program Counter.
			 DATA = 8'b 00010101;
             LD=1;
             INCR=0;
             RST=0;
             DECR=1;
             #10;
			 
			 //case 5
			 //Increment the Program Counter.
			 DATA = 8'b 00010101;
             LD=0;
             INCR=1;
             RST=0;
             DECR=0;
             #10;
			 
			 //case 6
			 //Increment the Program Counter.
			 DATA = 8'b 00010101;
             LD=0;
             INCR=1;
             RST=0;
             DECR=1;
             #10;
             
              //case 7
             //Decrement the Program Counter.
             DATA = 8'b 00010101;
             LD=0;
             INCR=0;
             RST=0;
             DECR=1;
             #10;
             
             //case 7
          //Decrement the Program Counter.
          DATA = 8'b 00010101;
          LD=0;
          INCR=0;
          RST=0;
          DECR=1;
          #10;
             
             end

endmodule

