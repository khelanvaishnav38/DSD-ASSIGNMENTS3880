`timescale 1ns / 1ps
module clk_div_odd_tb;
	reg clk_in;
	wire clk_out;
clk_div_odd uut (
		.clk_in(clk_in), 
		.clk_out(clk_out)
	);

	initial begin
		clk_in=1;
		end
	
	always #10 clk_in= ~clk_in;
	
	initial 
	#200 $finish;
      
endmodule
