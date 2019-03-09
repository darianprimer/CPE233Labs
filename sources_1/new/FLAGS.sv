`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// 
// Create Date: 02/05/2019 11:42:30 PM
// Description: Flags module for RAT MCU
//////////////////////////////////////////////////////////////////////////////////


module FLAGS(
    input FLG_C_SET, FLG_C_CLR, FLG_C_LD, FLG_Z_LD, FLG_LD_SEL, FLG_SHAD_LD, CLK, C, Z,
    output C_FLG, Z_FLG
    );
    
	logic SHAD_Z_S, SHAD_C_S, Z_IN, C_IN;
	
	MUX_2IN_1BIT mux_z(.A(Z), .B(SHAD_Z_S), .MUX_SEL(FLG_LD_SEL), .OUT(Z_IN));
	
	MUX_2IN_1BIT mux_c(.A(C), .B(SHAD_C_S), .MUX_SEL(FLG_LD_SEL), .OUT(C_IN));
	
    C_FLAG C_FLAG(.clk(CLK), .en(FLG_C_LD), .set(FLG_C_SET), .clr(FLG_C_CLR), .D(C_IN), .Q(C_FLG));
    
    Z_FLAG Z_FLAG(.clk(CLK), .en(FLG_Z_LD), .D(Z_IN), .Q(Z_FLG));
	
	Z_FLAG SHAD_Z(.clk(CLK), .en(FLG_SHAD_LD), .D(Z_FLG), .Q(SHAD_Z_S));
	
	Z_FLAG SHAD_C(.clk(CLK), .en(FLG_SHAD_LD), .D(C_FLG), .Q(SHAD_C_S));
endmodule
