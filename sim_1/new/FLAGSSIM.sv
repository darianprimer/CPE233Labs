`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2019 11:25:39 PM
// Design Name: 
// Module Name: FLAGSSIM
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


module FLAGSSIM();

logic FLG_C_SET, FLG_C_CLR, FLG_C_LD, FLG_Z_LD, FLG_LD_SEL, FLG_SHAD_LD, CLK, C, Z;
logic C_FLG, Z_FLG;


FLAGS FLAGS_inst(.*);
 always
                   begin
                       CLK = 0;
                       #5;
                       CLK = 1;
                       #5;
                   end

initial
    begin
    
    FLG_SHAD_LD=0;
    FLG_Z_LD=0;
    Z=0;
    FLG_LD_SEL=0;
    FLG_C_SET=0;
    FLG_C_LD=0;
    C=0;
    FLG_C_CLR=0;
    #10;
    
        
    FLG_SHAD_LD=0;
    FLG_Z_LD=1;
    Z=1;
    FLG_LD_SEL=0;
    FLG_C_SET=0;
    FLG_C_LD=1;
    C=1;
    FLG_C_CLR=0;
    #10;
    
    FLG_SHAD_LD=0;
    FLG_Z_LD=0;
    Z=0;
    FLG_LD_SEL=1;
    FLG_C_SET=0;
    FLG_C_LD=0;
    C=0;
    FLG_C_CLR=0;
    #10;
    
    FLG_SHAD_LD=1;
    FLG_Z_LD=0;
    Z=0;
    FLG_LD_SEL=1;
    FLG_C_SET=0;
    FLG_C_LD=0;
    C=0;
    FLG_C_CLR=0;
    #10;
    end
endmodule
