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
// CREATED		"Thu Dec 23 10:33:41 2021"

module week3_1_2(
	A1,
	A2,
	B1,
	B2,
	Eq,
	Gt,
	Ls
);


input wire	A1;
input wire	A2;
input wire	B1;
input wire	B2;
output wire	Eq;
output wire	Gt;
output wire	Ls;

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
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;




assign	SYNTHESIZED_WIRE_18 =  ~A1;

assign	SYNTHESIZED_WIRE_4 = A1 & SYNTHESIZED_WIRE_0 & SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_5 = A1 & A2 & SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_6 = A2 & SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_3 =  ~B2;

assign	SYNTHESIZED_WIRE_0 =  ~B1;

assign	SYNTHESIZED_WIRE_2 =  ~B1;

assign	SYNTHESIZED_WIRE_1 =  ~B2;

assign	Gt = SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_13 = SYNTHESIZED_WIRE_7 & B2;

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_8 & SYNTHESIZED_WIRE_9 & B1;

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_10 & B1 & B2;

assign	SYNTHESIZED_WIRE_7 =  ~A2;

assign	SYNTHESIZED_WIRE_8 =  ~A1;

assign	SYNTHESIZED_WIRE_10 =  ~A1;

assign	SYNTHESIZED_WIRE_9 =  ~A2;

assign	Ls = SYNTHESIZED_WIRE_11 | SYNTHESIZED_WIRE_12 | SYNTHESIZED_WIRE_13;

assign	SYNTHESIZED_WIRE_19 =  ~A2;

assign	Eq = SYNTHESIZED_WIRE_14 | SYNTHESIZED_WIRE_15 | SYNTHESIZED_WIRE_16 | SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_14 = SYNTHESIZED_WIRE_18 & SYNTHESIZED_WIRE_19 & SYNTHESIZED_WIRE_20 & SYNTHESIZED_WIRE_21;

assign	SYNTHESIZED_WIRE_17 = A1 & SYNTHESIZED_WIRE_22 & B1 & SYNTHESIZED_WIRE_23;

assign	SYNTHESIZED_WIRE_15 = A1 & A2 & B1 & B2;

assign	SYNTHESIZED_WIRE_16 = SYNTHESIZED_WIRE_24 & A2 & SYNTHESIZED_WIRE_25 & B2;

assign	SYNTHESIZED_WIRE_25 =  ~B1;

assign	SYNTHESIZED_WIRE_21 =  ~B2;

assign	SYNTHESIZED_WIRE_22 =  ~A2;

assign	SYNTHESIZED_WIRE_23 =  ~B2;

assign	SYNTHESIZED_WIRE_20 =  ~B1;

assign	SYNTHESIZED_WIRE_24 =  ~A1;


endmodule
