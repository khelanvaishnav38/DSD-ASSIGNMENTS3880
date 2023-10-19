`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2023 16:38:52
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
module bcdcounter_testbench();
reg clock, reset;
wire [3:0] dout;

bcd_counter dut(clock, reset, dout);
initial begin 
clock=0;
forever #5 clock=~clock;
end
initial begin
reset=1;
#20;
reset=0;
end
endmodule