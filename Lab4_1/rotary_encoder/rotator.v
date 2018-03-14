`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:24:38 02/14/2018 
// Design Name: 
// Module Name:    rotator 
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
module rotator(clk, rot_event, rot_dir, leds);
	input clk, rot_event, rot_dir;
	
	output leds;
	reg [7:0] leds;
	
	reg prev_rot_event;
	
	initial begin
		leds = 8'b00000001;
		prev_rot_event = 0;
	end
	
	always @(posedge clk)
	begin
		if ((prev_rot_event == 0) && (rot_event == 1))
		begin
			if (rot_dir == 0) begin
				leds[0] <= leds[1];
				leds[1] <= leds[2];
				leds[2] <= leds[3];
				leds[3] <= leds[4];
				leds[4] <= leds[5];
				leds[5] <= leds[6];
				leds[6] <= leds[7];
				leds[7] <= leds[0];
			end
			else begin
				leds[1] <= leds[0];
				leds[2] <= leds[1];
				leds[3] <= leds[2];
				leds[4] <= leds[3];
				leds[5] <= leds[4];
				leds[6] <= leds[5];
				leds[7] <= leds[6];
				leds[0] <= leds[7];
			end
		end
		prev_rot_event <= rot_event;
	end

endmodule
