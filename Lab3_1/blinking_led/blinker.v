`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:14:05 02/07/2018 
// Design Name: 
// Module Name:    blinker 
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
`define OFF_TIME 25000000
`define ON_TIME (`OFF_TIME*2)

module blinker(clk, led0);

	input clk;
	
	output led0;
	reg led0;
	
	reg[25:0] counter;
	integer i;
	initial begin
		led0 = 0;
		for (i=0;i<26;i=i+1)
			counter[i] = 0;
	end
		
	always @(posedge clk)
	begin
		counter = counter + 1'b1;
		if ((led0 == 1) && (counter == `OFF_TIME))
		begin
			led0 = 0;
			for (i=0;i<26;i=i+1)
				counter[i] = 0;
		end
		else
		begin
			if ((led0 == 0) && (counter == `ON_TIME))
			begin
				led0 = 1;
				for (i=0;i<26;i=i+1)
					counter[i] = 0;
			end
		end
	end

endmodule
