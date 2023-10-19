`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2023 17:35:23
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


module tb;
reg d1,d0;
reg clk;
reg rst;
wire q;

d_latch d3(q,d1,d0,clk,rst);

initial 
  begin 
    clk = 1'b0;
    forever #20 clk = ~clk ;
  end
  
initial 
  begin
    rst = 1'b1;
    #40;
    rst = 1'b0;
    #40;
    d0 = 1'b0;
    d1= 1'b0;
    #40
    d0 = 1'b1;
    d1 = 1'b0;
    #40;
    
    $finish ;
  end
endmodule   
