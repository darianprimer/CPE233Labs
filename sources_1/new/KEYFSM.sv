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


module KEYFSM(
    input CLK, C, A, E,
    output logic [3:0] DATA,
    output logic PRESS, B, G, F, D, LD
    );
    
    typedef enum {ST_B, ST_D, ST_F, ST_G} STATE;
    
    STATE NS, PS = ST_B;
    
    always_ff @ (posedge CLK)
    begin
        PS <= NS;
    end
    
    always_comb
    begin
    //initialize all outputs to zero
    
    DATA = 0; PRESS = 0; B = 0; G = 0; F = 0; D = 0; 
    
    case (PS)
       ST_B: 
       begin 
          B = 1;
		  NS=ST_G;
		  LD=1;
		  
          if (C == 1)
          begin
             DATA = 1;
             PRESS = 1;
			 NS = PS;
          end
             
          else if (A == 1)
          begin 
             DATA = 2;
             PRESS = 1;
			 NS = PS;
          end
          
          else if (E == 1)
          begin
             DATA = 3;
             PRESS = 1;
			 NS = PS;
          end
          
          else
          begin
             DATA = 13;
             PRESS = 0;
          end
       end
       
       ST_G: 
       begin 
          G = 1;
		  NS=ST_F;
		  LD=1;
          if (C == 1)
          begin
             DATA = 4;
             PRESS = 1;
			 NS = PS;
          end
                 
          else if (A == 1)
          begin 
             DATA = 5;
             PRESS = 1;
			 NS = PS;
          end
              
          else if (E == 1)
          begin
             DATA = 13;
             PRESS = 1;
			 NS = PS;
          end
              
          else
          begin
             DATA = 13;
             PRESS = 0;
          end          
       end
          
       ST_F: 
       begin 
          F = 1;
		  NS = ST_D;
		  LD=1;
          if (C == 1)
          begin
             DATA = 7;
             PRESS = 1;
			 NS = PS;
          end
                    
          else if (A == 1)
          begin 
             DATA = 8;
             PRESS = 1;
			 NS = PS;
          end
                   
          else if (E == 1)
          begin
             DATA = 9;
             PRESS = 1;
			 NS = PS;
          end
                   
          else
          begin
             DATA = 13;
             PRESS = 0;
          end                
       end
             
       ST_D: 
       begin 
          D = 1;
		  NS = ST_B;
		  LD=1;
          if (C == 1)
          begin
             DATA = 10;
             PRESS = 1;
			 NS = PS;
          end
                         
          else if (A == 1)
          begin 
             DATA = 0;
             PRESS = 1;
			 NS = PS;
          end
                      
          else if (E == 1)
          begin
             DATA = 11;
             PRESS = 1;
			 NS = PS;
          end
                      
          else
          begin
             DATA = 13;
             PRESS = 0;
          end               
       end
       
       default: 
       begin
          NS = ST_B;
       end
       
       endcase
       
    end //always_comb
     
    
endmodule

