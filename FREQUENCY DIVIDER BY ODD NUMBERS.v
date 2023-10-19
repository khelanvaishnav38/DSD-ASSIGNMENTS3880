`timescale 1ns / 1ps
module clk_div_odd
#(parameter N=5)
( input   clk_in,output   clk_out);

reg  [3:0] count = 4'b0;
reg     A1 = 0;
reg       B1 = 0;
reg     Tff_A = 0;
reg    Tff_B = 0;
wire    clock_out;
wire    wTff_A;
wire    wTff_B;
assign   wTff_A  = Tff_A; 
assign   wTff_B  = Tff_B; 

assign   clk_out = wTff_B ^ wTff_A; 
always@(posedge clk_in)
 begin
  if(count == N-1) 
   begin         
    count <= 4'b0000;
   end 
  else
   begin
    count <= count + 1;
   end 
 end
always@(posedge clk_in)
 begin
  if(count == 4'b0000)
   A1 <= 1;
  else
   A1 <= 0;
 end
always@(posedge clk_in)
 begin
  if(count == (N+1)/2) 
   B1 <= 1; 
  else
   B1 <= 0;
 end 
always@(negedge A1)  
 begin   
  Tff_A <= ~Tff_A;
 end

always@(negedge clk_in)
 begin
  if(B1)       
   begin 
    Tff_B <= ~Tff_B;
   end
 end
endmodule