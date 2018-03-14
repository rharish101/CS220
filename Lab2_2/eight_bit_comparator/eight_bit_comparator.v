`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:29:38 01/31/2018 
// Design Name: 
// Module Name:    eight_bit_comparator 
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
module eight_bit_comparator(Y, PB1, PB2, PB3, PB4, less, more, equal);
	input [3:0] Y;
   input PB1;
   input PB2;
   input PB3;
   input PB4;

	reg [7:0] a;
	reg [7:0] b;
	
	output less;
	output more;
	output equal;
	wire less;
	wire more;
	wire equal;
	
	wire [6:0] lesses;
	wire [6:0] mores;
	wire [6:0] equals;
	
	always @(posedge PB1) begin
       a[3:0] <= Y;
   end
   always @(posedge PB2) begin
       a[7:4] <= Y;
   end
   always @(posedge PB3) begin
       b[3:0] <= Y;
   end
   always @(posedge PB4) begin
       b[7:4] <= Y;
   end
	
	one_bit_compare c_7 (a[7], b[7], 1'b0, 1'b0, 1'b1, lesses[6], mores[6], equals[6]);
	one_bit_compare c_6 (a[6], b[6], lesses[6], mores[6], equals[6], lesses[5], mores[5], equals[5]);
	one_bit_compare c_5 (a[5], b[5], lesses[5], mores[5], equals[5], lesses[4], mores[4], equals[4]);
	one_bit_compare c_4 (a[4], b[4], lesses[4], mores[4], equals[4], lesses[3], mores[3], equals[3]);
	one_bit_compare c_3 (a[3], b[3], lesses[3], mores[3], equals[3], lesses[2], mores[2], equals[2]);
	one_bit_compare c_2 (a[2], b[2], lesses[2], mores[2], equals[2], lesses[1], mores[1], equals[1]);
	one_bit_compare c_1 (a[1], b[1], lesses[1], mores[1], equals[1], lesses[0], mores[0], equals[0]);
	one_bit_compare c_0 (a[0], b[0], lesses[0], mores[0], equals[0], less, more, equal);

endmodule
