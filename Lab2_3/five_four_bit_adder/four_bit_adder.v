`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:15 01/31/2018 
// Design Name: 
// Module Name:    four_bit_adder 
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
module four_bit_adder(x,y,z,carry);
        // Inputs
        input [3:0] x;
        input [3:0] y;

        // Outputs
        output [3:0] z;
        wire [3:0] z;
        output carry;
        wire carry;

        // Intermediate
        wire [2:0] carry_int;

        // Instantiate the Unit Under Test (UUT)
        full_adder FA0 (x[0], y[0], 1'b0, z[0], carry_int[0]);
        full_adder FA1 (x[1], y[1], carry_int[0], z[1], carry_int[1]);
		  full_adder FA2 (x[2], y[2], carry_int[1], z[2], carry_int[2]);
        full_adder FA3 (x[3], y[3], carry_int[2], z[3], carry);

endmodule
