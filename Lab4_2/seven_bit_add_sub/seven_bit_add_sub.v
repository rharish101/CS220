`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:38 02/14/2018 
// Design Name: 
// Module Name:    seven_bit_add_sub 
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
module seven_bit_add_sub(clk, rot_a, rot_b, slide, sum, carry);
	input clk, rot_a, rot_b;
	input [3:0] slide;
	
	output sum, carry;
	wire [6:0] sum;
	wire carry;
	
	wire rot_event, rot_dir;
	
	rotation_info uut1 (clk, rot_a, rot_b, rot_event, rot_dir);
	input_taker uut2 (clk, rot_event, rot_dir, slide, sum, carry);

endmodule
