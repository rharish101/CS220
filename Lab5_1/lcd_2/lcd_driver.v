`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:06:54 03/14/2018 
// Design Name: 
// Module Name:    lcd_driver 
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
module lcd_driver(line1, line2, clk, lcd_rs, lcd_w, lcd_e, data);
	input [127:0] line1, line2;
	input clk;
	
	output lcd_rs, lcd_w, lcd_e, data;
	reg lcd_rs, lcd_w, lcd_e;
	reg [3:0] data;
	
	reg [127:0] line_1, line_2;
	reg [19:0] counter;
	reg [1:0] state;
	reg [6:0] mini_state;
	reg [1:0] micro_state;
	initial begin
		counter = 0;
		state = 0;
		mini_state = 0;
		micro_state = 0;
		lcd_rs = 0;
		lcd_w = 0;
		lcd_e = 0;
		data = 0;
		line_1 = line1;
		line_2 = line2;
	end
	
	always @(posedge clk)
	begin
		if (counter == 1000000) begin
			if (state == 0) begin
				if (mini_state == 34) begin
					state <= state + 1;
				end
				else if (micro_state == 0) begin
					lcd_e <= 0;
				end
				else if (micro_state == 1) begin
					lcd_rs <= 0;
					lcd_w <= 0;
					if (mini_state == 1 || mini_state == 4 || mini_state == 7) begin
						data <= 3;
					end
					else if (mini_state == 10 || mini_state == 13) begin
						data <= 2;
					end
					else if (mini_state == 16) begin
						data <= 8;
					end
					else if (mini_state == 19 || mini_state == 25 || mini_state == 31) begin
						data <= 0;
					end
					else if (mini_state == 22) begin
						data <= 6;
					end
					else if (mini_state == 28) begin
						data <= 12;
					end
					else if (mini_state == 32) begin
						data <= 1;
					end
				end
				else if (micro_state == 2) begin
					lcd_e <= 1;
				end
				if (mini_state == 34) begin
					mini_state <= 0;
					micro_state <= 0;
				end
				else begin
					mini_state <= mini_state + 1;
					if (micro_state == 2) begin
						micro_state <= 0;
					end
					else begin
						micro_state <= micro_state + 1;
					end
				end
			end
			else if (state == 1) begin
				if (mini_state == 102) begin
					state <= state + 1;
				end
				else if (micro_state == 0) begin
					lcd_e <= 0;
				end
				else if (micro_state == 1) begin
					lcd_rs <= 0;
					lcd_w <= 0;
					if (mini_state == 1) begin
						data <= 8;
					end
					else if (mini_state == 4) begin
						data <= 0;
					end
					else if ((micro_state % 2) == 0) begin
						data <= line_1[7:4];
					end
					else begin
						data <= line_1[3:0];
						line_1 <= line_1 << 8;
					end
				end
				else if (micro_state == 2) begin
					lcd_e <= 1;
				end
				if (mini_state == 102) begin
					mini_state <= 0;
					micro_state <= 0;
				end
				else begin
					mini_state <= mini_state + 1;
					if (micro_state == 2) begin
						micro_state <= 0;
					end
					else begin
						micro_state <= micro_state + 1;
					end
				end
			end
			else if (state == 2) begin
				if (mini_state == 6) begin
					state <= state + 1;
				end
				else if (micro_state == 0) begin
					lcd_e <= 0;
				end
				else if (micro_state == 1) begin
					lcd_rs <= 0;
					lcd_w <= 0;
					if (mini_state == 1) begin
						data <= 12;
					end
					else if (mini_state == 4) begin
						data <= 0;
					end
				end
				else if (micro_state == 2) begin
					lcd_e <= 1;
				end
				if (mini_state == 6) begin
					mini_state <= 0;
					micro_state <= 0;
				end
				else begin
					mini_state <= mini_state + 1;
					if (micro_state == 2) begin
						micro_state <= 0;
					end
					else begin
						micro_state <= micro_state + 1;
					end
				end
			end
			else begin
				if (mini_state == 102) begin
					state <= state + 1;
				end
				else if (micro_state == 0) begin
					lcd_e <= 0;
				end
				else if (micro_state == 1) begin
					lcd_rs <= 0;
					lcd_w <= 0;
					if (mini_state == 1) begin
						data <= 8;
					end
					else if (mini_state == 4) begin
						data <= 0;
					end
					else if ((micro_state % 2) == 0) begin
						data <= line_2[7:4];
					end
					else begin
						data <= line_2[3:0];
						line_2 <= line_2 << 8;
					end
				end
				else if (micro_state == 2) begin
					lcd_e <= 1;
				end
				if (mini_state == 102) begin
					mini_state <= 0;
					micro_state <= 0;
				end
				else begin
					mini_state <= mini_state + 1;
					if (micro_state == 2) begin
						micro_state <= 0;
					end
					else begin
						micro_state <= micro_state + 1;
					end
				end
			end
			counter <= 0;
		end
		else begin
			counter <= counter + 1;
		end
	end

endmodule
