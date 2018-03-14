`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:24:22 01/31/2018 
// Design Name: 
// Module Name:    one_bit_compare 
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
module one_bit_compare(a, b, less_prev, more_prev, equal_prev, less_now, more_now, equal_now);
	input a;
	input b;
	input less_prev;
	input more_prev;
	input equal_prev;
	
	output less_now;
	output more_now;
	output equal_now;
	wire less_now;
	wire more_now;
	wire equal_now;
	
	assign less_now = (~more_prev) & (less_prev | (a < b));
	assign more_now = (~less_prev) & (more_prev | (a > b));
	assign equal_now = equal_prev & (a == b);

endmodule
