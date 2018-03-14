`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:20:50 01/17/2018
// Design Name:   two_bit_adder
// Module Name:   /media/rharish/822A-B6CA/CS220Labs/Lab1_3/two_bit_adder/two_bit_adder_top.v
// Project Name:  two_bit_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: two_bit_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module two_bit_adder_top;

	// Inputs
	reg [1:0] x;
	reg [1:0] y;

	// Outputs
	wire [1:0] z;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	two_bit_adder uut (
		.x(x), 
		.y(y), 
		.z(z), 
		.carry(carry)
	);
	
	always@(z or carry) begin
		$display("time=%d: %b + %b = %b, carry = %b\n", $time, x, y, z, carry);
	end
	
	initial begin
		x=0; y=0;
		#5
		x=1; y=0;
		#5
		x=1; y=2;
		#5
		x=3; y=2;
		#5
		x=3; y=3;
		#5
		$finish;
	end
      
endmodule

