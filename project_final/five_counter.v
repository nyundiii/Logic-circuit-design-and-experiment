// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Thu Dec 23 09:46:22 2021"

module five_counter(
	clk,
	rst,
	cnt5
);


input wire	clk;
input wire	rst;
output wire	[2:0] cnt5;

reg	[2:0] cnt_ALTERA_SYNTHESIZED5;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;





always@(posedge clk or negedge rst)
begin
if (!rst)
	begin
	cnt_ALTERA_SYNTHESIZED5[2] <= 0;
	end
else
	begin
	cnt_ALTERA_SYNTHESIZED5[2] <= SYNTHESIZED_WIRE_0;
	end
end


always@(posedge clk or negedge rst)
begin
if (!rst)
	begin
	cnt_ALTERA_SYNTHESIZED5[1] <= 0;
	end
else
	begin
	cnt_ALTERA_SYNTHESIZED5[1] <= SYNTHESIZED_WIRE_1;
	end
end

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_5 = cnt_ALTERA_SYNTHESIZED5[2] & SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_4 =  ~cnt_ALTERA_SYNTHESIZED5[0];

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_9 =  ~cnt_ALTERA_SYNTHESIZED5[0];

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_7 & SYNTHESIZED_WIRE_8 & cnt_ALTERA_SYNTHESIZED5[0];

assign	SYNTHESIZED_WIRE_8 =  ~cnt_ALTERA_SYNTHESIZED5[1];


always@(posedge clk or negedge rst)
begin
if (!rst)
	begin
	cnt_ALTERA_SYNTHESIZED5[0] <= 0;
	end
else
	begin
	cnt_ALTERA_SYNTHESIZED5[0] <= SYNTHESIZED_WIRE_9;
	end
end

assign	SYNTHESIZED_WIRE_6 = cnt_ALTERA_SYNTHESIZED5[1] & cnt_ALTERA_SYNTHESIZED5[0];

assign	SYNTHESIZED_WIRE_7 =  ~cnt_ALTERA_SYNTHESIZED5[2];

assign	SYNTHESIZED_WIRE_10 =  ~cnt_ALTERA_SYNTHESIZED5[0];

assign	SYNTHESIZED_WIRE_2 = cnt_ALTERA_SYNTHESIZED5[1] & SYNTHESIZED_WIRE_10;

assign	cnt5 = cnt_ALTERA_SYNTHESIZED5;

endmodule
