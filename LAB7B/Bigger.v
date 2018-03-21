`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:30:55 03/19/2018 
// Design Name: 
// Module Name:    Bigger 
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
module Bigger(a,b,c
    );
	 input[15:0]a;
	 input[15:0]b;
	 output wire [15:0]c;
	 assign c=($signed(a)<$signed(b))?1:0;


endmodule
