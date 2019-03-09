`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2019 01:04:13 PM
// Design Name: 
// Module Name: KEY_FSM
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


module KeyFSM(
    input CLK, C, A, E,
    output logic [3:0] DATA,
    output logic PRESS, B, G, F, D
    );
   
   typedef enum {STB, STG, STF, STD} STATE;
   STATE NS, PS=STB;
   
   always_ff @ (posedge CLK)
	begin
	
			PS<=NS;
	
	end 
   
   always_comb
	begin
	
		//Initialize all outputs to zero.
		DATA=0; PRESS=0; B=0; G=0; F=0; D=0;
		
		case(PS)
			STB: begin
				B=1;
				
				
				if(C==1)
					begin
					DATA=1;
					PRESS=1;
					end
					else if(A==1)
						begin
						DATA=2;
						PRESS=1;
						end
						else if(E==1)
							begin
							DATA=3;
							PRESS=3;
							end
							else
								begin
								DATA=0;
								PRESS=13;
								end
								
					NS = STG;
				end
				
			STG: begin
				G=1;
				
				
				if(C==1)
					begin
					DATA=4;
					PRESS=1;
					end
					else if(A==1)
						begin
						DATA=5;
						PRESS=1;
						end
						else if(E==1)
							begin
							DATA=6;
							PRESS=3;
							end
							else
								begin
								DATA=13;
								PRESS=0;
								end
								
					NS = STF;
				end	
				
				
			STF: begin
				F=1;
				
				
				if(C==1)
					begin
					DATA=7;
					PRESS=1;
					end
					else if(A==1)
						begin
						DATA=8;
						PRESS=1;
						end
						else if(E==1)
							begin
							DATA=9;
							PRESS=3;
							end
							else
								begin
								DATA=13;
								PRESS=0;
								end
								
					NS = STD;
				end	
				
				
			STD: begin
				D=1;
				
				
				if(C==1)
					begin
					DATA=0;
					PRESS=1;
					end
					else if(A==1)
						begin
						DATA=0;
						PRESS=1;
						end
						else if(E==1)
							begin
							DATA=0;
							PRESS=3;
							end
							else
								begin
								DATA=13;
								PRESS=0;
								end
								
					NS = STB;
				end
						
				endcase
				
		end
   
endmodule

