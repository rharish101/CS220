`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:20:00 01/31/2018
// Design Name:   seven_bit_adder
// Module Name:   /media/rharish/822A-B6CA/CS220Labs/Lab2_1/seven_bit_adder/seven_bit_adder_top.v
// Project Name:  seven_bit_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seven_bit_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module seven_bit_adder_top;

	// Inputs
	reg [6:0] a;
	reg [6:0] b;

	// Outputs
	wire [6:0] sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	seven_bit_adder uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.carry(carry)
	);

	always @(sum or carry) begin
		$display("time=%d: %b + %b = %b, cout = %b\n", $time, a, b, sum, carry);
   end:q

   initial begin
        a=0; b=0;
        #5
        a=0; b=5;
        #5
        a=127; b=0;
        #5
        a=127; b=1;
        #5
        $finish;
    end
  
endmodule

