`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:19:17 01/17/2018 
// Design Name: 
// Module Name:    two_bit_adder 
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
module two_bit_adder(x,y,z,carry);
	// Inputs
	input [1:0] x;
	input [1:0] y;

	// Outputs
	output [1:0] z;
	wire [1:0] z;
	output carry;
	wire carry;
	
	// Intermediate
	wire carry0;

	// Instantiate the Unit Under Test (UUT)
	full_adder FA0 (x[0], y[0], 1'b0, z[0], carry0);
	full_adder FA1 (x[1], y[1], carry0, z[1], carry);

endmodule
