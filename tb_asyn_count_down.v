`timescale 1ns / 1ps



module async_counter_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] count;
	wire [3:0] countbar;

	// Instantiate the Unit Under Test (UUT)
	async_counter uut (
		.count(count), 
		.countbar(countbar), 
		.clk(clk), 
		.rst(rst)
	);

 initial
  begin
    clk = 0;
    rst = 1; 
    #23;// Just give enough time to reset the design
    rst = 0;
    #200;
    $finish;
  end
  always #5 clk = ~clk;
      
endmodule
