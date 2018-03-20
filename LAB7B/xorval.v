`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:41:16 03/19/2018 
// Design Name: 
// Module Name:    xorval 
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
module xorval(a,b,c
    );
	 input[15:0]a;
	 input[15:0]b;
	 output wire [15:0]  c;
	assign c=a^b;

endmodule
