`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:57:13 02/07/2018 
// Design Name: 
// Module Name:    rippler 
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
`define SHIFT_TIME 50000000

module rippler(clk, led0, led1, led2, led3, led4, led5, led6, led7);

	input clk;
	
	output led0;
	reg led0;
	output led1;
	reg led1;
	output led2;
	reg led2;
	output led3;
	reg led3;
	output led4;
	reg led4;
	output led5;
	reg led5;
	output led6;
	reg led6;
	output led7;
	reg led7;
	
	reg [25:0] counter;
	
	initial begin
		led0 = 1;
		led1 = 0;
		led2 = 0;
		led3 = 0;
		led4 = 0;
		led5 = 0;
		led6 = 0;
		led7 = 0;
		counter = 0;
	end
	
	always @(posedge clk)
	begin
		counter = counter + 1'b1;
		if (counter == `SHIFT_TIME)
		begin
			counter = 0;
			led1 <= led0;
			led2 <= led1;
			led3 <= led2;
			led4 <= led3;
			led5 <= led4;
			led6 <= led5;
			led7 <= led6;
			led0 <= led7;
		end
	end

endmodule
