`timescale 1ns / 1ps
module fixedpriority_arbiter_tb(); 
wire [3:0] GNT;

reg [3:0] REQ;
reg clk,reset ;

fixedpoint_arbiter dut(.GNT(GNT),.REQ(REQ),.clk(clk),.reset(reset));

initial
clk=0;
always #4 clk <= ~clk ;

initial 
begin
reset =0;
#4 reset =1;
repeat(20)
begin
#5  REQ<=$random();

end
#100 $finish();
end
initial begin
$monitor("REQ=%b,GNT=%b,reset=%b",REQ,GNT,reset);
end
endmodule
