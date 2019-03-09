`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 233
// Engineer: Darian Primer
// Description: Speaker driver that can play various notes. Basys 3 onboard clock runs 
//              at 100MHz.
//////////////////////////////////////////////////////////////////////////////////


module Speaker_Driver(
    input [7:0] note_select,
    output logic [15:0] maxcount
    );
    
    always_comb
        begin
            
        case(note_select)
            0: maxcount = 0;
            1: maxcount = 47778;
            2: maxcount = 45096;
            3: maxcount = 42565;
            4: maxcount = 40176;
            5: maxcount = 37921;
            6: maxcount = 35793;
            7: maxcount = 33784;
            8: maxcount = 31888;
            9: maxcount = 30098;
            10: maxcount = 28409;
            11: maxcount = 26814;
            12: maxcount = 25309;
            13: maxcount = 23889;
            14: maxcount = 22548;
            15: maxcount = 21282;
            16: maxcount = 20088;
            17: maxcount = 18960;
            18: maxcount = 17896;
            19: maxcount = 16892;
            20: maxcount = 15944;
            21: maxcount = 15049;
            22: maxcount = 14204;
            23: maxcount = 13407;
            24: maxcount = 12654;
            25: maxcount = 11944;
            26: maxcount = 11274;
            27: maxcount = 10641;
            28: maxcount = 10044;
            29: maxcount = 9480;
            30: maxcount = 8948;
            31: maxcount = 8446;
            32: maxcount = 7972;
            33: maxcount = 7524;
            34: maxcount = 7102;
            35: maxcount = 6703;
            36: maxcount = 6327;
            default
                maxcount = 0;
        endcase
       
        end

endmodule
