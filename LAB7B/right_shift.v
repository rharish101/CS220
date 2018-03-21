`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:46:54 03/19/2018 
// Design Name: 
// Module Name:    right_shift 
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
module right_shift(clk,a,shift,res
    );
	 input[15:0] a;
	 input clk;
	 input[3:0] shift;
	 output reg[15:0] res;
	 always@(posedge clk)begin
	 res <= ($signed(a) >>> shift);
	 end


endmodule
