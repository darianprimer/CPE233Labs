`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 02/09/2019 10:23:58 PM
// Description: Test Bench for RAT MCU in RAT assingment 4
//////////////////////////////////////////////////////////////////////////////////


module RAT_MCU_SIM1();

        logic INTERUPT, RESET, CLK;
		logic [7:0] IN_PORT;
		logic IO_STRB;
		logic [7:0] OUT_PORT, PORT_ID;
		
		RAT_MCU RAT_MCU_inst(.*);
		
		//set up clk signal
		always
             begin
                 CLK = 0; #5;
                 CLK = 1; #5;
             end
			

		//Set test conditions
			 initial
			begin
             
			 //TEST 1
             IN_PORT = 8'd79;
			 INTERUPT=0;
			 RESET=0;
             #120;
			 
			 
			 
			end
				

endmodule
