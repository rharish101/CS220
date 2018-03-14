`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:42 03/07/2018 
// Design Name: 
// Module Name:    LCD_top 
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
module LCD_top(clk,LCD_RS,LCD_E,LCD_W,data);
  output wire LCD_RS,LCD_E,LCD_W;
  output wire [3:0] data;
  input clk;
  reg [127:0] LINE1,LINE2;
  LCD_driver driverm(.clk(clk),.LINE1(LINE1),.LINE2(LINE2),.LCD_RS(LCD_RS),.LCD_E(LCD_E),.LCD_W(LCD_W),.data(data));
  //  W E L C O M E   T O   C S E    
  //2057454C434F4D4520544F2043534520
  //  I   I   T     K A N P U R    
  //20492049204920204B414E5055522020
  initial begin
  LINE1=128'h2057454C434F4D4520544F2043534520;
  LINE2=128'h20492049204920204B414E5055522020;
  end
  
endmodule
