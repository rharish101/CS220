`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:29:43 02/07/2018
// Design Name:   blinker
// Module Name:   /media/raditya/822A-B6CA/CS220Labs/Lab3_1/blinking_led/blinker_top.v
// Project Name:  blinking_led
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: blinker
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module blinker_top;

	// Inputs
	reg clk;

	// Outputs
	wire led0;

	// Instantiate the Unit Under Test (UUT)
	blinker uut (
		.clk(clk), 
		.led0(led0)
	);
	
	always @(led0) begin
		$display("time=%d: clk=%b, led0=%b", $time, clk, led0);
	end

	initial begin
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		clk=1;
		#5
		clk=0;
		#5
		$finish;
	end
      
endmodule

