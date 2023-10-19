`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:40:56 01/24/2023
// Design Name:   shift_rotate
// Author Name:  Ummidi Candrika
// Project Name:  shift_rotate

// 
////////////////////////////////////////////////////////////////////////////////

module shift_rotate_tb;


	reg [7:0] a;
	reg [2:0] opcode;
	wire [7:0] result;
	integer i;
	shift_rotate uut (
		.a(a), 
		.opcode(opcode), 
		.result(result)
	);

	initial begin
	a=8'b10110101;
	opcode = 000;
		
	end
	
	initial
	begin
	for(i=0;i<6;i=i+1)
	begin
	opcode=i;
	#10;
	end
	end
	
	initial
	$monitor(" A=%b | Opcode=%b | Result =%b ",a,opcode,result);
      
endmodule
