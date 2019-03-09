`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 01/17/2019 02:16:18 PM
// Description: Top level file for Program Counter and Mux.
//////////////////////////////////////////////////////////////////////////////////


module PC_with_Mux(
			input [9:0] FROM_IMMED,
			input [9:0] FROM_STACK,
			input [1:0] PC_MUX_SEL,
			input PC_LD,
			input PC_INC,
			input RST,
			input CLK,
			output logic [9:0] PC_COUNT
    );
	
			logic [9:0] t1;
			
			PC_Mux PC_Mux(.FROM_IMMED(FROM_IMMED), .FROM_STACK(FROM_STACK), .PC_MUX_SEL(PC_MUX_SEL), .DIN(t1));
			         //Use Mux to select the value for DIN. DIN is sent to Program Counter.
			ProgramCounter ProgramCounter(.DIN(t1), .PC_LD(PC_LD), .PC_INC(PC_INC), .RST(RST), .CLK(CLK), .PC_COUNT(PC_COUNT));
			         //Program counter gets DIN value from PC_Mux. All other values are inputs. 
			         //Outputs PC_COUNT value.
			
			
endmodule
