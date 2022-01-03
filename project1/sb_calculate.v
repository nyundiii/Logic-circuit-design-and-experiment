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
// CREATED		"Tue Dec 21 11:08:04 2021"

module sb_calculate(
	SB0,
	SB1,
	SB2,
	SB3,
	Result
);


input wire	SB0;
input wire	SB1;
input wire	SB2;
input wire	SB3;
output wire	[2:0] Result;

wire	[2:0] sbrusult;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_16;
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
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;




assign	SYNTHESIZED_WIRE_11 = SB0 ^ SB1;

assign	SYNTHESIZED_WIRE_12 = SB2 ^ SB3;

assign	SYNTHESIZED_WIRE_8 = SB0 & SB1 & SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_6 = SB0 & SYNTHESIZED_WIRE_16 & SB3;

assign	SYNTHESIZED_WIRE_7 = SB0 & SYNTHESIZED_WIRE_16 & SB2;

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_6 | SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8;

assign	sbrusult[1] = SYNTHESIZED_WIRE_9 | SYNTHESIZED_WIRE_10;

assign	sbrusult[2] = SB0 & SB1 & SB2 & SB3;

assign	sbrusult[0] = SYNTHESIZED_WIRE_11 ^ SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_15 =  ~SB0;

assign	SYNTHESIZED_WIRE_16 =  ~SB1;

assign	SYNTHESIZED_WIRE_14 =  ~SB2;

assign	SYNTHESIZED_WIRE_0 =  ~SB3;

assign	SYNTHESIZED_WIRE_5 = SYNTHESIZED_WIRE_16 & SB2 & SB3;

assign	SYNTHESIZED_WIRE_3 = SB1 & SYNTHESIZED_WIRE_14 & SB3;

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_15 & SB1 & SB2;

assign	Result = sbrusult;

endmodule
