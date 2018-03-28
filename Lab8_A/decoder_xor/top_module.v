`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    14:21:06 03/28/2018
// Design Name:
// Module Name:    top_module
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
module top_module(clk, leds);
    input clk;

    output leds;
    reg [7:0] leds;

    wire [7:0] xor_output;
    wire parity;

    registers uut (clk, xor_output, parity);

    // TODO: Push button

endmodule
