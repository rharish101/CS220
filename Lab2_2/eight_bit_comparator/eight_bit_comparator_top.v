`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:40:42 01/31/2018
// Design Name:   eight_bit_comparator
// Module Name:   /media/rharish/822A-B6CA/CS220Labs/Lab2_2/eight_bit_comparator/eight_bit_comparator_top.v
// Project Name:  eight_bit_comparator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eight_bit_comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module eight_bit_comparator_top;

	// Inputs
	reg [3:0] Y;
	reg PB1;
	reg PB2;
	reg PB3;
	reg PB4;

	// Outputs
	wire less;
	wire more;
	wire equal;

	// Instantiate the Unit Under Test (UUT)
	eight_bit_comparator uut (
		.Y(Y), 
		.PB1(PB1), 
		.PB2(PB2), 
		.PB3(PB3), 
		.PB4(PB4), 
		.less(less), 
		.more(more), 
		.equal(equal)
	);

	always @(less or more or equal) begin
		$display("time=%d: %b vs %b = %b, %b, %b\n", $time, a, b, less, more, equal);
   end

   initial begin
        a=5; b=0;
        #5
        a=0; b=5;
        #5
        a=255; b=254;
        #5
        a=255; b=255;
        #5
        $finish;
    end	
      
endmodule

