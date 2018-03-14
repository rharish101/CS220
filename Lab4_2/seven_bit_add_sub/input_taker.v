`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:11:52 02/14/2018 
// Design Name: 
// Module Name:    input_taker 
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
module input_taker(clk, rot_event, rot_dir, slide, sum, carry);
    input clk, rot_event, rot_dir;
	input [3:0] slide;

    output sum, carry;
    wire [6:0] sum;
	wire carry;

    reg prev_rot_event, opcode;
	reg [2:0] rot_steps;
	reg [6:0] a;
	reg [6:0] b;
	wire [6:0] c_int;

    initial begin
        prev_rot_event = 0;
		rot_steps = 0;
		a = 127;
		b = 0;
		opcode = 0;
    end
	 
    always @(posedge clk)
    begin
        if ((prev_rot_event == 0) && (rot_event == 1))
        begin
				if (rot_dir == 0) begin
					if (rot_steps == 0) begin
						a[3:0] <= slide;
					end
					else if (rot_steps == 1) begin
						a[6:4] <= slide[2:0];
					end
					else if (rot_steps == 2) begin
						b[3:0] <= slide;
					end
					else if (rot_steps == 3) begin
						b[6:4] <= slide[2:0];
					end
					else begin
						opcode <= slide[0];
					end
                    rot_steps <= rot_steps + 1;
				end
				else
					rot_steps <= 0;
        end
        prev_rot_event <= rot_event;
    end
	 
	 full_adder uut0 (a[0], b[0]^opcode, opcode, sum[0], c_int[0]);
	 full_adder uut1 (a[1], b[1]^opcode, c_int[0], sum[1], c_int[1]);
	 full_adder uut2 (a[2], b[2]^opcode, c_int[1], sum[2], c_int[2]);
	 full_adder uut3 (a[3], b[3]^opcode, c_int[2], sum[3], c_int[3]);
	 full_adder uut4 (a[4], b[4]^opcode, c_int[3], sum[4], c_int[4]);
	 full_adder uut5 (a[5], b[5]^opcode, c_int[4], sum[5], c_int[5]);
	 full_adder uut6 (a[6], b[6]^opcode, c_int[5], sum[6], c_int[6]);
     assign carry = (opcode & (c_int[5] ^ c_int[6])) | ((~opcode) & c_int[6]);

endmodule
