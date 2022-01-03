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
// CREATED		"Thu Dec 23 11:07:32 2021"

module two_bit_compare(
	A2,
	B2,
	A1,
	B1,
	draw,
	Awin,
	Alose
);


input wire	A2;
input wire	B2;
input wire	A1;
input wire	B1;
output wire	draw;
output wire	Awin;
output wire	Alose;

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
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;




assign	SYNTHESIZED_WIRE_7 = A2 ~^ B2;

assign	SYNTHESIZED_WIRE_8 = A1 ~^ B1;

assign	SYNTHESIZED_WIRE_5 = SYNTHESIZED_WIRE_0 & B2 & B1;

assign	Awin = SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3;

assign	Alose = SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_15 =  ~A1;

assign	SYNTHESIZED_WIRE_14 =  ~A2;

assign	SYNTHESIZED_WIRE_10 =  ~A2;

assign	SYNTHESIZED_WIRE_13 =  ~B1;

assign	SYNTHESIZED_WIRE_12 =  ~B1;

assign	SYNTHESIZED_WIRE_11 =  ~B2;

assign	SYNTHESIZED_WIRE_9 =  ~B2;

assign	SYNTHESIZED_WIRE_0 =  ~A1;

assign	draw = SYNTHESIZED_WIRE_7 & SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_3 = A2 & SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_6 = SYNTHESIZED_WIRE_10 & B2;

assign	SYNTHESIZED_WIRE_1 = A1 & SYNTHESIZED_WIRE_11 & SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_2 = A2 & A1 & SYNTHESIZED_WIRE_13;

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_14 & SYNTHESIZED_WIRE_15 & B1;


endmodule
