`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 01/24/2019 02:09:40 PM
// Description: Simulation file for Scratch RAM. RAT assignment 3 part 2.
//////////////////////////////////////////////////////////////////////////////////


module Scratch_RAMSIM();

        logic [9:0] DATA_IN;
        logic [7:0] SCR_ADDR;
        logic SCR_WE;
        logic clk;
        logic [9:0] DATA_OUT;
        
        Scratch_RAM Scratch_RAM_inst (.*);
        
        always
           begin
               clk = 0;
               #5;
               clk = 1;
               #5;
           end
           
           
       initial
        begin
        
            for (SCR_ADDR=0; SCR_ADDR<256; SCR_ADDR++) 
                  begin
                    SCR_WE = 1;
                    DATA_IN = SCR_ADDR;
                    #10;
                  end
        end              

endmodule
