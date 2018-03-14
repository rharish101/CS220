`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:40 01/31/2018 
// Design Name: 
// Module Name:    five_four_bit_adder 
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
module five_four_bit_adder(Y, PB1, PB2, PB3, PB4, ROTC, sum, carry);
        input [3:0] Y;
        input PB1;
        input PB2;
        input PB3;
        input PB4;
		  input ROTC;

        reg [3:0] a;
        reg [3:0] b;
		  reg [3:0] c;
        reg [3:0] d;
		  reg [3:0] e;

        output [5:0] sum;
        wire [5:0] sum;
        output carry;
        wire carry;
		  
		  //???
        wire [4:0] sum_inter;
		  wire [4:0] sum_inter_2;
		  wire [5:0] sum_inter_3;
		  wire [5:0] new_e;

        always @(posedge PB1) begin
                a <= Y;
        end
        always @(posedge PB2) begin
		          b <= Y;
        end
        always @(posedge PB3) begin
                c <= Y;
        end
        always @(posedge PB4) begin
                d <= Y;
        end
		  always @(posedge ROTC) begin
                e <= Y;
        end

        four_bit_adder A1 (a, b, sum_inter[3:0], sum_inter[4]);
		  four_bit_adder A2 (c, d, sum_inter_2[3:0], sum_inter_2[4]);
		  five_bit_adder A3 (sum_inter, sum_inter_2, sum_inter_3[4:0], sum_inter_3[5]);
		  assign new_e[3:0] = e;
		  assign new_e[5:4] = 2'b00;
		  six_bit_adder A4 (sum_inter_3, new_e, sum, carry);


endmodule
