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
// CREATED		"Tue Dec 21 10:48:26 2021"

module random(
	rst,
	clk,
	pr,
	one,
	two,
	three,
	four
);


input wire	rst;
input wire	clk;
input wire	pr;
output wire	one;
output wire	two;
output wire	three;
output wire	four;

wire	SYNTHESIZED_WIRE_0;
reg	DFF_inst7;
reg	SYNTHESIZED_WIRE_1;
reg	DFF_inst;
reg	DFF_inst5;

assign	one = DFF_inst;
assign	two = DFF_inst5;
assign	three = SYNTHESIZED_WIRE_1;
assign	four = DFF_inst7;




always@(posedge clk or negedge rst or negedge pr)
begin
if (!rst)
	begin
	DFF_inst <= 0;
	end
else
if (!pr)
	begin
	DFF_inst <= 1;
	end
else
	begin
	DFF_inst <= SYNTHESIZED_WIRE_0;
	end
end

assign	SYNTHESIZED_WIRE_0 = DFF_inst7 ^ SYNTHESIZED_WIRE_1;


always@(posedge clk or negedge rst or negedge pr)
begin
if (!rst)
	begin
	DFF_inst5 <= 0;
	end
else
if (!pr)
	begin
	DFF_inst5 <= 1;
	end
else
	begin
	DFF_inst5 <= DFF_inst;
	end
end


always@(posedge clk or negedge rst or negedge pr)
begin
if (!rst)
	begin
	SYNTHESIZED_WIRE_1 <= 0;
	end
else
if (!pr)
	begin
	SYNTHESIZED_WIRE_1 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_1 <= DFF_inst5;
	end
end


always@(posedge clk or negedge rst or negedge pr)
begin
if (!rst)
	begin
	DFF_inst7 <= 0;
	end
else
if (!pr)
	begin
	DFF_inst7 <= 1;
	end
else
	begin
	DFF_inst7 <= SYNTHESIZED_WIRE_1;
	end
end


endmodule
