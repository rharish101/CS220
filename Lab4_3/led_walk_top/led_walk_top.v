`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:47:34 03/07/2018 
// Design Name: 
// Module Name:    led_walk_top 
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
module led_walk_top(in, clk, rot_a, rot_b, led);

  input [3:0] in;
  input clk, rot_a, rot_b;

  output [7:0] led;
  wire [7:0] led;

  wire [3:0] x;
  wire [3:0] y;
  
  led_walk LW (in, clk, rot_a, rot_b, x, y);

  assign led[3:0] = x;
  assign led[7:4] = y;
endmodule
