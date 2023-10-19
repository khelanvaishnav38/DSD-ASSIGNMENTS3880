
module shift_rotate (a, opcode, result);
input [7:0] a;
input [2:0] opcode;
output [7:0] result;
wire [7:0] a;
wire [2:0] opcode;
reg [7:0] result;

parameter sra_op = 3'b000, 
srl_op = 3'b001,           
sla_op = 3'b010,           
sll_op = 3'b011,           
ror_op = 3'b100,         
rol_op = 3'b101;         

always @ (a or opcode)
begin
case (opcode)
sra_op : result = {a[7], a[7], a[6], a[5],
 a[4], a[3], a[2], a[1]};
srl_op : result = a >> 1;
sla_op : result = {a[6], a[5], a[4], a[3],
 a[2], a[1], a[0], 1'b0};
 sll_op : result = a << 1;
ror_op : result = {a[0], a[7], a[6], a[5],
a[4], a[3], a[2], a[1]};
rol_op : result = {a[6], a[5], a[4], a[3],
a[2], a[1], a[0], a[7]};
default : result = 0;
endcase
end
endmodule