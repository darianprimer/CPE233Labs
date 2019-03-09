`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 02/27/2019 12:43:58 PM 
// Description: Interupt FSM for Peripheral Assignment 3
//////////////////////////////////////////////////////////////////////////////////


module INT_FSM(
    input CLK,
    input PRESS,
    output logic INTERUPT
    );
	
	typedef enum {START, ST1, ST2, ST3, ST4, ST5, ST6, DONE} STATE;
	STATE NS, PS=START;
	
	always_ff @ (posedge CLK)
	begin
	
			PS<=NS;
	
	end 
	
	always_comb
	begin
	
		//Initialize all outputs to zero.
		INTERUPT=0;
		
		case(PS)
			START: begin
				INTERUPT=0;
				if(PRESS==1)
					NS=ST1;
				else
					NS=START;
				end
				
			ST1: begin
				INTERUPT=1;
				NS=ST2;
				end
				
			ST2: begin
				INTERUPT=1;
				NS=ST3;
				end
				
			ST3: begin
				INTERUPT=1;
				NS=ST4;
				end
				
			ST4: begin
				INTERUPT=1;
				NS=ST5;
				end
				
			ST5: begin
				INTERUPT=1;
				NS=ST6;
				end
				
			ST6: begin
				INTERUPT=1;
				NS=DONE;
				end
				
			DONE: begin
				INTERUPT=0;
				if(PRESS==1)
					NS=DONE;
				else
					NS=START;
				end
				
			default: begin
				NS=START;
			         end
		endcase
	end
endmodule
