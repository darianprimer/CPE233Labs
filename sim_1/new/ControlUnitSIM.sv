`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2019 01:45:25 PM
// Design Name: 
// Module Name: ControlUnit_tb
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


module ControlUnitSIM();
    
    /////////INPUTS
    logic C, Z, INTERUPT, RESET, CLK = 0;
    logic [4:0] OPCODE_HI_5 = 0;
    logic [1:0] OPCODE_LO_2 = 0;
    
    /////////OUTPUTS
    logic IO_STRB;
    
    // Interrupt
//    logic I_SET;
//    logic I_CLR;
    
    // ProgramCounter
    logic PC_LD;
    logic PC_INC;
    logic [1:0] PC_MUX_SEL;
    logic RST;
    
    // ALU
    logic ALU_OPY_SEL;
    logic [3:0] ALU_SEL;
    
    // RegisterFile
    logic RF_WR;
    logic [1:0] RF_WR_SEL;
    
    // StackPointer
//    logic SP_LD;
//    logic SP_INCR;
//    logic SP_DECR;
    
    // ScratchRAM
//    logic SCR_WE;
//    logic [1:0] SCR_ADDR_SEL;
//    logic SCR_DATA_SEL;
    
    // Flags
    logic FLG_C_SET;
    logic FLG_C_CLR;
    logic FLG_C_LD;
    logic FLG_Z_LD;
//    logic FLG_LD_SEL;
//    logic FLG_SHAD_LD;
    
    ControlUnit cu (.*);
    
    always begin
        CLK = 0; #5;
        CLK = 1; #5;
    end
    
//    logic IN = 7'b1100100;
//    //logic MOV_RR = 7'b0001001;
//    logic MOV_RI = 7'b1101100;
//    logic EXOR_RR = 7'b0000010;
//    //logic EXOR_RI = 7'b1001000;
//    logic OUT = 7'b1101000;
//    logic BRN = 7'b0010000;
    
    initial begin
        #5;
        
        // IN
        OPCODE_HI_5 = 5'b11001;
        OPCODE_LO_2 = 2'b00;
        #20;
        
        // IN
        OPCODE_HI_5 = 5'b11001;
        OPCODE_LO_2 = 2'b11;  //changed
        #20;
        
        // MOV RR
//        OPCODE_HI_5 = 5'b00010;
//        OPCODE_LO_2 = 2'b01;
//        #20;
        
        // MOV RI
        OPCODE_HI_5 = 5'b11011;
        OPCODE_LO_2 = 2'b00;
        #20;
        
        // MOV RI
        OPCODE_HI_5 = 5'b11011;
        OPCODE_LO_2 = 2'b10;  //changed
        #20;
        
        // EXOR RR
        OPCODE_HI_5 = 5'b00000;
        OPCODE_LO_2 = 2'b10;
        #20;
        
//        // EXOR RI
//        OPCODE_HI_5 = 5'b10010;
//        OPCODE_LO_2 = 2'b00;
//        #20;
        
//        // EXOR RI
//        OPCODE_HI_5 = 5'b10010;
//        OPCODE_LO_2 = 2'b10;  //changed
//        #20;
        
        // OUT
        OPCODE_HI_5 = 5'b11010;
        OPCODE_LO_2 = 2'b00;
        #20;
        
        // OUT
        OPCODE_HI_5 = 5'b11010;
        OPCODE_LO_2 = 2'b01;  //changed
        #20;
        
        // BRN
        OPCODE_HI_5 = 5'b00100;
        OPCODE_LO_2 = 2'b00;
        #20;
    end

endmodule
