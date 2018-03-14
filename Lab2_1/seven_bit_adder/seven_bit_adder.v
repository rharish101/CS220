`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:12:07 01/31/2018 
// Design Name: 
// Module Name:    seven_bit_adder 
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
module seven_bit_adder(Y, PB1, PB2, PB3, PB4, sum, carry);
	input [3:0] Y;
	input PB1;
	input PB2;
	input PB3;
	input PB4;
	
	reg [6:0] a;
	reg [6:0] b;
	
	output [6:0] sum;
	wire [6:0] sum;
	output carry;
	wire carry;
	
	wire [5:0] c_inter;
	
	always @(posedge PB1) begin
		a[3:0] <= Y;
	end
	always @(posedge PB2) begin
		a[6:4] <= Y[2:0];
	end
	always @(posedge PB3) begin
		b[3:0] <= Y;
	end
	always @(posedge PB4) begin
		b[6:4] <= Y[2:0];
	end
	
	full_adder fa_0(a[0], b[0], 1'b0, sum[0], c_inter[0]);
	full_adder fa_1(a[1], b[1], c_inter[0], sum[1], c_inter[1]);
	full_adder fa_2(a[2], b[2], c_inter[1], sum[2], c_inter[2]);
	full_adder fa_3(a[3], b[3], c_inter[2], sum[3], c_inter[3]);
	full_adder fa_4(a[4], b[4], c_inter[3], sum[4], c_inter[4]);
	full_adder fa_5(a[5], b[5], c_inter[4], sum[5], c_inter[5]);
	full_adder fa_6(a[6], b[6], c_inter[5], sum[6], carry);

endmodule
