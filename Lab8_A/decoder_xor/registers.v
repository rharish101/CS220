`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    14:03:07 03/28/2018
// Design Name:
// Module Name:    registers
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
module registers(clk, switch, leds);
    input clk;
    input switch;

    output leds;
    reg [7:0] leds;

    reg [7:0] xor_out;
    reg [7:0] data [31:0];
    reg [4:0] counter;
    integer i;

    initial begin
        data[0] = 3;
        data[1] = 4;
        data[2] = 7;
        data[3] = 2;
        data[4] = 3;
        data[5] = 5;
        data[6] = 0;
        data[7] = 2;

        for (i = 8; i < 32; i = i + 1) begin
            data[i] = 0;
        end

        counter = 0;
        xor_out = 0;
    end

    always @(posedge clk) begin
        if (data[counter] == 0) begin
            xor_out <= xor_out ^ 8'b10000000;
        end
        else if (data[counter] == 1) begin
            xor_out <= xor_out ^ 8'b01000000;
        end
        else if (data[counter] == 2) begin
            xor_out <= xor_out ^ 8'b00100000;
        end
        else if (data[counter] == 3) begin
            xor_out <= xor_out ^ 8'b00010000;
        end
        else if (data[counter] == 4) begin
            xor_out <= xor_out ^ 8'b00001000;
        end
        else if (data[counter] == 5) begin
            xor_out <= xor_out ^ 8'b00000100;
        end
        else if (data[counter] == 6) begin
            xor_out <= xor_out ^ 8'b00000010;
        end
        else if (data[counter] == 7) begin
            xor_out <= xor_out ^ 8'b00000001;
        end

        if (counter < 8) begin
            counter <= counter + 1;
        end

        if (switch == 0) begin
            leds <= xor_out;
        end
        else begin
            leds[0] <= ^xor_out;
            leds[7:1] <= 0;
        end
    end

endmodule
