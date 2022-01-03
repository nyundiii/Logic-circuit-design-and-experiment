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
// CREATED		"Tue Dec 21 10:47:41 2021"

module two_bit_reg_ce(
	clk,
	rst_n,
	ce,
	din,
	out
);


input wire	clk;
input wire	rst_n;
input wire	ce;
input wire	[1:0] din;
output wire	[1:0] out;

wire	[1:0] d_in;
reg	[1:0] reg_out;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;





always@(posedge clk or negedge rst_n)
begin
if (!rst_n)
	begin
	reg_out[0] <= 0;
	end
else
	begin
	reg_out[0] <= SYNTHESIZED_WIRE_0;
	end
end


always@(posedge clk or negedge rst_n)
begin
if (!rst_n)
	begin
	reg_out[1] <= 0;
	end
else
	begin
	reg_out[1] <= SYNTHESIZED_WIRE_1;
	end
end


mx_2x1	b2v_inst10(
	.s_1(d_in[0]),
	.sel(ce),
	.s_0(reg_out[0]),
	.m_out(SYNTHESIZED_WIRE_0));


mx_2x1	b2v_inst6(
	.s_1(d_in[1]),
	.sel(ce),
	.s_0(reg_out[1]),
	.m_out(SYNTHESIZED_WIRE_1));

assign	out = reg_out;
assign	d_in = din;

endmodule
