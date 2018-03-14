`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:36:22 03/07/2018 
// Design Name: 
// Module Name:    LCD_driver 
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
module LCD_driver ( clk, LINE1,LINE2,LCD_RS,LCD_E,LCD_W,data);
  `define period 1000000
  `define process_state 81
  input clk;
  input [127:0] LINE1,LINE2;
  output wire LCD_RS,LCD_E,LCD_W;
  output wire [3:0] data;
  wire [22:0] addr;
  wire [6:0] state;
  wire [1:0] counter;
  reg [22:0] addr_q,addr_d;
  reg [1:0] counter_q,counter_d;
  reg [6:0] state_q,state_d;
  reg [55:0] config_data;
  reg [0:319] mdata;
  wire rst,inc,operation;
  reg [8:0] lindex,rindex,r1index,l1index;
  reg RS_Signal;
  reg [3:0] data_out;
  LCD_base_driver driver(.RS_Signal(RS_Signal),.data_in(data_out),.counter(counter_q),.LCD_E(LCD_E),.LCD_W(LCD_W),.LCD_RS(LCD_RS),.data(data));
  assign state=state_q;
  assign addr=addr_q;
  assign counter=counter_q;
  assign process=(state<`process_state);
  assign rst= (addr==`period);
  assign inc= (counter==2'b00);
  assign operation = (state<4'd14) || state==6'd47 || state==6'd48;
  initial begin
    addr_q=23'd0;
    addr_d=23'd0;
    state_q=2'd0;
    counter_q=2'd0;
    data_out=4'h0;
    RS_Signal=1'b0;
    
  end
  always @(*) begin
    addr_d=addr_q+1'b1;
    counter_d=counter_q+1'b1;
    lindex=state_q<<2;
    rindex=lindex+2'b11;
	 l1index=lindex+2'b01;
	 r1index=lindex+2'b10;
    config_data=56'h333228060C0180;
    mdata={{config_data[55:0]},{LINE1[127:0]},{8'hC0},{LINE2[127:0]}};
	 if(process)
      state_d=state_q+1'b1;
	 else
	   state_d=7'd0;
  end
  always @(posedge clk) begin
    if (rst) begin
      addr_q<=27'd0;
      counter_q<=counter_d;
      if(inc) 
        state_q<=state_d;
		  
		  
    end
    else begin
      addr_q<=addr_d;
    end
  end
  always @(posedge clk) begin
    data_out[0]=mdata[rindex];
	 data_out[3]=mdata[lindex];
	 data_out[1]=mdata[r1index];
	 data_out[2]=mdata[l1index];
    RS_Signal= ~operation;
  end

endmodule
