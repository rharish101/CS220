`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:06:24 03/19/2018
// Design Name:   topcaller
// Module Name:   F:/LAB7B/test_fixture.v
// Project Name:  LAB7B
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: topcaller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_fixture;

	// Inputs
	reg [3:0] bits;
	reg clk;
	reg rot_a;
	reg rot_b;
	reg reset;

	// Outputs
	wire lcd_rs;
	wire lcd_w;
	wire lcd_e;
	wire [3:0] databits;

	// Instantiate the Unit Under Test (UUT)
	topcaller uut (
		.bits(bits), 
		.clk(clk), 
		.rot_a(rot_a), 
		.rot_b(rot_b), 
		.reset(reset), 
		.lcd_rs(lcd_rs), 
		.lcd_w(lcd_w), 
		.lcd_e(lcd_e), 
		.databits(databits)
	);

	initial begin
		// Initialize Inputs
		bits = 0;
		clk = 0;
		rot_a = 0;
		rot_b = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

