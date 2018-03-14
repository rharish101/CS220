`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:10:44 02/14/2018 
// Design Name: 
// Module Name:    rotation_info 
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
module rotation_info(clk, rot_a, rot_b, rot_event, rot_dir);
    input clk, rot_a, rot_b;
        
    output rot_event, rot_dir;
    reg rot_event, rot_dir;
        
    always @(posedge clk)
    begin
        if ((rot_a == 1) && (rot_b == 1)) 
            rot_event = 1;
        else if ((rot_a == 0) && (rot_b == 0)) 
            rot_event = 0;
        else if ((rot_a == 0) && (rot_b == 1)) 
            rot_dir = 0;
        else if ((rot_a == 1) && (rot_b == 0)) 
            rot_dir = 1;
    end 

endmodule
