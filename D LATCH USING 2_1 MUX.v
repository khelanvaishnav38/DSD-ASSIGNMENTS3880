`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2023 17:24:54
// Design Name: 
// Module Name: 
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


module DFFusingMUX(input d1, d0, sel, clk, rst, output reg q);
reg d;

always @ (*)
    begin
        case(sel)
            0 : d = d0;
            1 : d = d1;
        endcase
    end

always @(posedge clk)
     begin
         if(rst)
             q <= 0;
         else
             q <= d;
     end
 endmodule  
