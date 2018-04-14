`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    14:04:25 04/04/2018
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
module registers(clk, leds);
    input clk;

    output leds;
    reg [7:0] leds;

    reg [7:0] regs [31:0];
    reg [2:0] state;
    reg [3:0] pcounter;
    reg [31:0] memory [6:0];
    integer i;

    reg [31:0] temp;
    reg [5:0] opcode;
    reg [4:0] rs;
    reg [4:0] rt;
    reg [4:0] rd;
    reg [6:0] func;
    reg signed [7:0] immediate;

    reg signed [7:0] rs_val;
    reg signed [7:0] rt_val;
    reg signed [7:0] answer;
    reg [4:0] destination;
    reg invalid;

    initial begin
        for (i=0; i<32; i=i+1) begin
            regs[i] = 0;
        end
        pcounter = 0;
        state = 0;
        invalid = 0;
        answer = 0;
        leds = 0;

        // addiu
        memory[0] = 32'b00100100000000010000000000101101;
        memory[1] = 32'b00100100000000101111111111101100;
        memory[2] = 32'b00100100000000111111111111000100;
        memory[3] = 32'b00100100000001000000000000011110;

        // addu
        memory[4] = 32'b00000000001000100010100000010101;
        memory[5] = 32'b00000000011001000011000000010101;

        // subu
        memory[6] = 32'b00000000101001100010100000010111;
    end

    always @(posedge clk) begin
        if (state == 0) begin
            temp <= memory[pcounter];
            state <= 1;
            pcounter <= pcounter + 1;
        end
        else if (state == 1) begin
            opcode <= temp[31:26];
            rs <= temp[25:21];
            rt <= temp[20:16];
            if (opcode == 0) begin // r format
                rd <= temp[15:11];
                func <= temp[5:0];
            end
            else if (opcode == 9) begin // i format
                immediate <= temp[7:0];
            end
            state <= 2;
        end
        else if (state == 2) begin
            rs_val <= regs[rs];
            if (opcode == 0) begin // r format
                rt_val <= regs[rt];
                destination <= rd;
            end
            else begin // i format
                destination <= rt;
            end
            state <= 3;
        end
        else if (state == 3) begin
            if (opcode == 9) begin // addiu
                answer <= rs_val + immediate;
                invalid = 0;
            end
            else if (opcode == 0) begin // r format
                if (func == 21) begin // addu
                    answer <= rs_val + rt_val;
                    invalid = 0;
                end
                else if (func == 23) begin // subu
                    answer <= rs_val - rt_val;
                    invalid = 0;
                end
                else begin // invalid
                    invalid = 1;
                end
            end
            else begin // invalid
                invalid = 1;
            end
            state <= 4;
        end
        else if (state == 4) begin
            if (invalid == 0 && destination != 0) begin
                regs[destination] <= answer;
            end
            if (pcounter < 1) begin
                state <= 0;
            end
            else begin
                state <= 5;
            end
        end
        else if (state == 5) begin
            leds <= regs[destination];
        end
    end

endmodule
