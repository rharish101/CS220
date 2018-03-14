`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:09 03/07/2018 
// Design Name: 
// Module Name:    five_bit_adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module five_bit_adder(a, da, clk, opn, fa);

input [3:0] a;
input [1:0] da;
input opn, clk;
output [3:0] fa;
reg [3:0] fa;
wire [3:0] sum;
wire [3:0] cout;

full_adder FAA1 (a[0], opn^da[0], opn, sum[0], cout[0]);
full_adder FAA2 (a[1], opn^da[1], cout[0], sum[1], cout[1]);
full_adder FAA3 (a[2], opn, cout[1], sum[2], cout[2]);
full_adder FAA4 (a[3], opn, cout[2], sum[3], cout[3]);

always@(posedge clk) begin
  if(opn & !cout[3]) begin
    fa <= 0;
  end
  else if(!opn & cout[3]) begin
    fa <= 4'b1111;
  end
  else begin
         fa <= sum;
  end
end

endmodule
