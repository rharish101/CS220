`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:36:47 02/14/2018 
// Design Name: 
// Module Name:    rotary_encoder 
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
module rotary_encoder(clk, rot_a, rot_b, leds);
	input clk, rot_a, rot_b;
	
	output leds;
	wire [7:0] leds;
	
	wire rot_event, rot_dir;
	
	rotation_info uut1 (clk, rot_a, rot_b, rot_event, rot_dir);
	rotator uut2 (clk, rot_event, rot_dir, leds);

endmodule
