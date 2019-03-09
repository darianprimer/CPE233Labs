`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// Description: Test Bench for prog rom
//////////////////////////////////////////////////////////////////////////////////


module ProgRom_tb();


    logic PROG_CLK;
    logic [9:0] PROG_ADDR;
    logic [17:0] PROG_IR;
    
    ProgRom ProgRom_inst(.*);
    
    
 always
             begin
                 PROG_CLK = 1; #5;
                 PROG_CLK = 0; #5;
             end
             
        initial
          begin
             
             //Starting address
             PROG_ADDR = 10'h40;
             #10
             
             //Address 2
             PROG_ADDR = 10'h41;
             #10
             
             //Address 3
             PROG_ADDR = 10'h42;
             #10
			 
			 //Address 4
             PROG_ADDR = 10'h42;
             #10
			 
			 //Address 5
             PROG_ADDR = 10'h43;
             #10
             
             //Address 6
             PROG_ADDR = 10'h44;
             #10
			 
			 //Address 7
             PROG_ADDR = 10'h45;
             #10
			 
			 //Address 8
             PROG_ADDR = 10'h46;
             
          end 
        
endmodule
