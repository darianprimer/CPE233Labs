`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Bridget Benson 
// Create Date: 09/24/2018 01:53:20 PM
// Description: 4-bit binary to seven segment hex code 
//////////////////////////////////////////////////////////////////////////////////


module BinSseg(
    input [3:0] binary,    
    output logic [7:0] seg,
	output [3:0] an
    );   
    //-----------Fixed the binseeg for ya.
    //always block for converting binary into 7 segment format
    always_comb
    begin
        case (binary) //case statement
            0 : seg = 8'b00000011;//0
            1 : seg = 8'b10011111;//1
            2 : seg = 8'b00100101;//2
            3 : seg = 8'b00001101;//3
            4 : seg = 8'b10011001;//4
            5 : seg = 8'b01001001;//5
            6 : seg = 8'b01000001;//6
            7 : seg = 8'b00011111;//7
            8 : seg = 8'b00000001;//8
            9 : seg = 8'b00011001;//9
            10: seg = 8'b00010001;//A
            11: seg = 8'b11000001;//b
//            12: seg = 8'b10001101; dont need this because default takes care of this.
            //switch off 7 segment character when the bcd digit is not a decimal number.
            default : seg = 8'b11111111; 
        endcase
     end
	 
	 assign an = 4'b1110;

        
endmodule
