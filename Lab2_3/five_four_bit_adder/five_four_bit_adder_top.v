`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:29:53 01/31/2018
// Design Name:   five_four_bit_adder
// Module Name:   /media/rharish/822A-B6CA/CS220Labs/Lab2_3/five_four_bit_adder/five_four_bit_adder_top.v
// Project Name:  five_four_bit_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: five_four_bit_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module five_four_bit_adder_top;

	// Inputs
	reg [3:0] Y;
	reg PB1;
	reg PB2;
	reg PB3;
	reg PB4;
	reg ROTC;

	// Outputs
	wire [5:0] sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	five_four_bit_adder uut (
		.Y(Y), 
		.PB1(PB1), 
		.PB2(PB2), 
		.PB3(PB3), 
		.PB4(PB4), 
		.ROTC(ROTC), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
		Y = 0;
		PB1 = 0;
		PB2 = 0;
		PB3 = 0;
		PB4 = 0;
		ROTC = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

