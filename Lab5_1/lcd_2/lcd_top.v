`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:35:13 03/14/2018 
// Design Name: 
// Module Name:    lcd_top 
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
module lcd_top(clk, lcd_rs, lcd_w, lcd_e, data);
	input clk;
	
	output lcd_rs, lcd_w, lcd_e, data;
	wire lcd_rs, lcd_w, lcd_e;
	wire [3:0] data;
	
	reg [127:0] line1, line2;
	
	initial begin
		line1 = 128'h2057454C434F4D4520544F2043534520;
		line2 = 128'h20492049204920204B414E5055522020;
	end
	
	lcd_driver UUT (line1, line2, clk, lcd_rs, lcd_w, lcd_e, data);

endmodule
