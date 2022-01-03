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
// CREATED		"Thu Dec 23 10:32:41 2021"

module week3_3(
	Player1,
	Player2,
	Eq,
	Gt,
	Ls
);


input wire	[3:0] Player1;
input wire	[3:0] Player2;
output wire	Eq;
output wire	Gt;
output wire	Ls;

wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;





week3_1_2	b2v_inst(
	.A1(Player1[0]),
	.A2(Player1[1]),
	.B1(Player2[0]),
	.B2(Player2[1]),
	.Eq(SYNTHESIZED_WIRE_19),
	.Gt(SYNTHESIZED_WIRE_17),
	.Ls(SYNTHESIZED_WIRE_21));


week3_1_2	b2v_inst1(
	.A1(Player1[2]),
	.A2(Player1[3]),
	.B1(Player2[2]),
	.B2(Player2[3]),
	.Eq(SYNTHESIZED_WIRE_18),
	.Gt(SYNTHESIZED_WIRE_7),
	.Ls(SYNTHESIZED_WIRE_14));

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_17 & SYNTHESIZED_WIRE_18;

assign	Gt = SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3;

assign	Eq = SYNTHESIZED_WIRE_19 & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_20 & SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_20 = SYNTHESIZED_WIRE_17 | SYNTHESIZED_WIRE_21 | SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_16 = SYNTHESIZED_WIRE_21 & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_15 = SYNTHESIZED_WIRE_20 & SYNTHESIZED_WIRE_14;

assign	Ls = SYNTHESIZED_WIRE_15 | SYNTHESIZED_WIRE_16;


endmodule
