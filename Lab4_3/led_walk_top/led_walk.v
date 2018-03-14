`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:55 03/07/2018 
// Design Name: 
// Module Name:    led_walk 
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
module led_walk(in, clk, rot_a, rot_b, x, y);

  input [3:0] in;
  input clk;
  input rot_a, rot_b;

  output [3:0] x;
  output [3:0] y;
  reg [3:0] x;
  reg [3:0] y;
  reg [1:0] dx, dy;
  reg opnx, opny;

  reg rot_eve, prev_rot_eve;
  wire [3:0] fx,fy;

  initial begin
    rot_eve = 0;
    opnx = 0;
    opny = 0;
    x = 4'b0000;
    y = 4'b0000;
  end

  always@(posedge clk) begin
    if(rot_a & rot_b) begin
      rot_eve <= 1;
    end
    else if(!rot_a & !rot_b) begin
      rot_eve <= 0;
    end
    prev_rot_eve <= rot_eve;
    if(!prev_rot_eve & rot_eve) begin
      if(in[3:2] == 2'b00) begin
        opnx <= 1;
        dx <= in[1:0];
        dy <= 2'b00;
      end
      else if(in[3:2] == 2'b01) begin
        opnx <= 0;
        dx <= in[1:0];
        dy <= 2'b00;
      end
      else if(in[3:2] == 2'b10) begin
        opny <= 0;
        dy <= in[1:0];
        dx <= 2'b00;
      end
      else begin
        opny <= 1;
        dy <= in[1:0];
        dx <= 2'b00;
      end
   end
  end

  five_bit_adder FA1 (x, dx, clk, opnx, fx);
  five_bit_adder FA2 (y, dy, clk, opny, fy);

  always@(posedge clk) begin
      if(!prev_rot_eve & rot_eve) begin
          x <= fx;
          y <= fy;
      end
  end
endmodule 