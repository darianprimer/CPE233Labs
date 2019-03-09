
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 01/17/2019 01:05:32 PM
// Description: Test file for Program Counter for RAT assignment 2.
//////////////////////////////////////////////////////////////////////////////////


module ProgramCounterSIM();

            logic [9:0] DIN;
            logic PC_LD;
            logic PC_INC;
            logic RST;
            logic CLK;
            logic [9:0] PC_COUNT;
            
            ProgramCounter ProgramCounter_inst (.*); 
                
            //create clock input
             always
             begin
                 CLK = 1; #5;
                 CLK = 0; #5;
             end
             
             initial
             begin
             
             //case 1
			 //Load 21 into the program counter.
             DIN = 10'b 0000010101;
             PC_LD=1;
             PC_INC=0;
             RST=0;
             #10;
             
             //case 2
			 //Load 40 into Program Counter. Chack that PC_LD has precedence over PC_INC.
             DIN = 10'b 0000101000;
             PC_LD=1;
             PC_INC=1;
             RST=0;
             #10;
			 
			 //case 3
			 //Reset Program Counter. Check that RST has precendence over everything.
			 DIN = 10'b 0000101000;
             PC_LD=1;
             PC_INC=1;
             RST=1;
             #10;
			 
			 //case 4
			 //Load 21 into the Program Counter.
			 DIN = 10'b 0000010101;
             PC_LD=1;
             PC_INC=0;
             RST=0;
             #10;
			 
			 //case 5
			 //Increment the Program Counter.
			 DIN = 10'b 0000010101;
             PC_LD=0;
             PC_INC=1;
             RST=0;
             #10;
			 
			 //case 6
			 //Increment the Program Counter.
			 DIN = 10'b 0000010101;
             PC_LD=0;
             PC_INC=1;
             RST=0;
             #10;
             
             end

endmodule
