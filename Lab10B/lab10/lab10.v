`timescale 1ns / 1ps
`define NUM 8
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    14:09:30 04/11/2018
// Design Name:
// Module Name:    lab10
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
module lab10(clk, leds);
    input clk;

    output [7:0] leds;
    reg [7:0] leds;

    reg [31:0] memory [13:0];
    reg [7:0] data [31:0];
    reg [7:0] arr [10:0];
    reg [7:0] pcount;
    reg [2:0] state;
    integer i;

    reg [31:0] temp;
    reg [5:0] opcode;
    reg [4:0] rs;
    reg [4:0] rt;
    reg [4:0] rd;
    reg [5:0] func;
    reg [7:0] immediate;
    reg [27:0] dest;

    reg [7:0] rs_val;
    reg [7:0] rt_val;

    initial begin
        for (i = 0; i < 8; i = i + 1) begin
            data[i] <= 0;
        end

        for (i = 8; i < 30; i = i + 1) begin
            data[i] <= 0;
        end

        for (i = 0; i < 10; i = i + 1) begin
            arr[i] <= 1;
        end
        arr[10] <= `NUM;
        arr[1] <= 8'b11111111;

        temp <= 0;
        opcode <= 0;
        rs <= 0;
        rt <= 0;
        rd <= 0;
        func <= 0;
        immediate <= 0;
        dest <= 0;

        rs_val <= 0;
        rt_val <= 0;

        pcount <= 12;
        state <= 0;

        memory[0]  <= 32'b00100100000000100000000000000000;
        memory[1]  <= 32'b00100100000000110000000000000000;
        memory[2]  <= 32'b00000000011000010010000000101010;
        memory[3]  <= 32'b00010000000001000000000000001000;
        memory[4]  <= 32'b00100100000001010000000000001010;
        memory[5]  <= 32'b00010000101000110000000000000110;
        memory[6]  <= 32'b10001100011001100000000000000000;
        memory[7]  <= 32'b00000000010001100001000000100001;
        memory[8]  <= 32'b00100100011000110000000000000001;
        memory[9]  <= 32'b00000000011000010010000000101010;
        memory[10] <= 32'b00010100000001001111111111111011;
        memory[11] <= 32'b00000011111000000000000000001000;
        memory[12] <= 32'b10011100000000010000000000001010;
        memory[13] <= 32'b00001100000000000000000000000000;

        leds = 4;
        data[30] <= 4;
        data[31] <= 0;
    end

    always @(posedge clk) begin
        if (state == 0) begin
            temp <= memory[pcount];
            state <= 1;
        end
        else if (state == 1) begin
            opcode <= temp[31:26];
            if (opcode == 0) begin // R format
                rs <= temp[25:21];
                rt <= temp[20:16];
                rd <= temp[15:11];
                func <= temp[5:0];
            end
            else if (opcode == 3) begin // J format
                dest <= temp[25:0] * 4;
            end
            else begin // I format
                rs <= temp[25:21];
                rt <= temp[20:16];
                immediate <= temp[7:0];
            end
            state <= 2;
        end
        else if (state == 2) begin
            if (opcode == 0) begin // R format
                rs_val <= data[rs];
                rt_val <= data[rt];
            end
            else if (opcode != 2) begin // I format
                rs_val <= data[rs];
            end
            state <= 3;
        end
        else if (state == 3) begin
            if (opcode == 0) begin // R format
                if (func == 6'h2a) begin // slt
                    if ($signed(rs_val) < $signed(rt_val)) begin
                        data[rd] <= 1;
                    end
                    else begin
                        data[rd] <= 0;
                    end
                end
                else if (func == 6'h21) begin // addu
                    data[rd] <= rs_val + rt_val;
                end
                else if (func == 6'h8) begin // jr
                    pcount <= rs_val;
                end
            end
            else if (opcode == 6'h9) begin // addiu
                data[rt] <= immediate + rs_val;
            end
            else if (opcode == 6'h4) begin // beq
                if (data[rt] == rs_val) begin
                    pcount <= pcount + immediate;
                end
            end
            else if (opcode == 6'h5) begin // bne
                if (data[rt] != rs_val) begin
                    pcount <= pcount + immediate;
                end
            end
            else if (opcode == 6'h3) begin // jal
                data[31] <= pcount + 1;
                pcount <= dest;
            end
            else if (opcode == 6'h23) begin // lw
                dest <= rs_val + immediate;
            end
            state <= 4;
        end
        else if (state == 4) begin
            if (opcode == 6'h23) begin // lw
                data[rt] <= arr[dest];
            end
            state <= 5;
        end
        else if (state == 5) begin
            if (pcount < 1) begin
                state <= 0;
            end
            else begin
                state <= 6;
            end
            data[2] <= data[30];
        end
        else if (state == 6) begin
            leds <= data[2];
        end
    end

endmodule
