module ROM_sevenSegment
 #(
 parameter addr_width = 16, 
 addr_bits = 4, 
 data_width = 7
 )
 (
input wire [addr_bits-1:0] addr,
output reg [data_width-1:0] data 
);
always @*
 begin
 case(addr)
 4'b0000 : data = 7'b1000000; 
 4'b0001 : data = 7'b1111001; 
4'b0010 : data = 7'b0100100; 
 4'b0011 : data = 7'b0110000; 
4'b0100 : data = 7'b0011001; 
 4'b0101 : data = 7'b0010010; 
 4'b0110 : data = 7'b0000010; 
 4'b0111 : data = 7'b1111000; 
4'b1000 : data = 7'b0000000; 
 4'b1001 : data = 7'b0010000; 
 4'b1010 : data = 7'b0001000; 
   4'b1011 : data = 7'b0000011; 
   4'b1100 : data = 7'b1000110; 
 4'b1101 : data = 7'b0100001; 
 4'b1110 : data = 7'b0000110; 
 default : data = 7'b0001110; 
endcase
 end
 endmodule