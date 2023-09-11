`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2023 22:50:31
// Design Name: 
// Module Name: my_mux
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


module my_mux(
    input s,
    input i0,
    input i1,
    output out
    );
    wire sbar;
    my_nor nt(sbar,s,s);
    cmos(out,i0,sbar,s);
    cmos(out,i1,s,sbar);
    
endmodule

