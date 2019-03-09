`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 01/24/2019 01:32:29 PM
// Description: Simulation File for Register File.
//////////////////////////////////////////////////////////////////////////////////


module Register_FileSIM();
    
       logic [7:0] DIN;
       logic [4:0] ADRX;
       logic [4:0] ADRY;
       logic RF_WR;
       logic clk;
       logic [7:0] DX_OUT;
       logic [7:0] DY_OUT;
       
       Register_File Register_File_inst(.*);
       
       always
                   begin
                       clk = 0;
                       #5;
                       clk = 1;
                       #5;
                   end
                   
       initial
        begin
        
        //case 1
        DIN = 4;
        ADRX = 1;
        ADRY = 3;
        RF_WR = 1;
        #10
        
        //case 2
        DIN = 9;
        ADRX = 3;
        ADRY = 1;
        RF_WR = 1;
        #10    
                   
        //case 3
        DIN = 12;
        ADRX = 5;
        ADRY = 3;
        RF_WR = 1;
        #10           
                   
        //case 4
        DIN = 33;
        ADRX = 8;
        ADRY = 5;
        RF_WR = 1;
        #10           
                   
        //case 5
        DIN = 33;
        ADRX = 1;
        ADRY = 8;
        RF_WR = 0;
        #10           
                   
        //case 6
        DIN = 33;
        ADRX = 3;
        ADRY = 5;
        RF_WR = 1;
        #10           
                   
        //case 7
        DIN = 33;
        ADRX = 3;
        ADRY = 3;
        RF_WR = 0;
        #10
        
        
        
          for (ADRX=0; ADRX<32; ADRX++) 
          begin
            RF_WR = 1;
            DIN = ADRX;
            ADRY = 31-ADRX;
            #10;
          end          
                               
       end            
endmodule
