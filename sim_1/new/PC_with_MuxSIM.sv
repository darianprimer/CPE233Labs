`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 01/17/2019 02:24:58 PM
// Description: Test file for program counter linked with mux. RAT assignment 2.
//////////////////////////////////////////////////////////////////////////////////


module PC_with_MuxSIM();

			logic [9:0] FROM_IMMED;
			logic [9:0] FROM_STACK;
			logic [1:0] PC_MUX_SEL;
			logic PC_LD;
			logic PC_INC;
			logic RST;
			logic CLK;
			logic [9:0] PC_COUNT;
			
			PC_with_Mux PC_with_Mux_inst(.*);
			
			always
			begin
				CLK = 0;
				#5;
				CLK = 1;
				#5;
			end
			
			
			initial
			begin
			
				//case 1
				//load FROM_IMMED value(40) into the program counter.
				FROM_IMMED = 10'b0000101000;
				FROM_STACK = 10'b0000001111;
				PC_MUX_SEL = 0;
				PC_LD = 1;
				PC_INC = 0;
				RST = 0;
				#10
				
				//case 2
				//load FROM_STACK value(15) into the program counter.
				FROM_IMMED = 10'b0000101000;
				FROM_STACK = 10'b0000001111;
				PC_MUX_SEL = 1;
				PC_LD = 1;
				PC_INC = 0;
				RST = 0;
				#10
				
				//case 3
				//load 0X3FF into the program counter.
				FROM_IMMED = 10'b0000101000;
				FROM_STACK = 10'b0000001111;
				PC_MUX_SEL = 2;
				PC_LD = 1;
				PC_INC = 0;
				RST = 0;
				#10
				
				//case 4
				//load DEFAULT(0) into the program counter.
				FROM_IMMED = 10'b0000101000;
				FROM_STACK = 10'b0000001111;
				PC_MUX_SEL = 3;
				PC_LD = 1;
				PC_INC = 0;
				RST = 0;
				#10
				
				//case 5
				//load FROM_IMMED value(40) into the program counter. Test that PC_LD has precedence over PC_INC
				FROM_IMMED = 10'b0000101000;
				FROM_STACK = 10'b0000001111;
				PC_MUX_SEL = 0;
				PC_LD = 1;
				PC_INC = 1;
				RST = 0;
				#10
				
				//case 6
				//increment value in Program Counter.
				FROM_IMMED = 10'b0000101000;
				FROM_STACK = 10'b0000001111;
				PC_MUX_SEL = 0;
				PC_LD = 0;
				PC_INC = 1;
				RST = 0;
				#10
				
				//case 7
				//increment value in Program Counter.
				FROM_IMMED = 10'b0000101000;
				FROM_STACK = 10'b0000001111;
				PC_MUX_SEL = 0;
				PC_LD = 0;
				PC_INC = 1;
				RST = 0;
				#10
				
				//case 8
				//increment value in Program Counter.
				FROM_IMMED = 10'b0000101000;
				FROM_STACK = 10'b0000001111;
				PC_MUX_SEL = 0;
				PC_LD = 0;
				PC_INC = 1;
				RST = 0;
				#10
				
				//case 9
				//Reset value in Program Counter. Check that RST holds first priority.
				FROM_IMMED = 10'b0000101000;
				FROM_STACK = 10'b0000001111;
				PC_MUX_SEL = 0;
				PC_LD = 1;
				PC_INC = 1;
				RST = 1;
				
			end	

endmodule
