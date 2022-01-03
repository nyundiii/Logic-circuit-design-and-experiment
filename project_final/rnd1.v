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
// CREATED		"Wed Dec 01 18:14:58 2021"

module rnd1(
	clk,
	pr,
	rst,
	paper,
	rock,
	scissors
);


input wire	clk;
input wire	pr;
input wire	rst;
output wire	paper;
output wire	rock;
output wire	scissors;

wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;





random	b2v_inst(
	.pr(pr),
	.clk(clk),
	.rst(rst),
	.one(SYNTHESIZED_WIRE_40),
	.two(SYNTHESIZED_WIRE_41),
	.three(SYNTHESIZED_WIRE_42),
	.four(SYNTHESIZED_WIRE_43));

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_40 & SYNTHESIZED_WIRE_41;

assign	SYNTHESIZED_WIRE_38 = SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_6 & SYNTHESIZED_WIRE_41;

assign	SYNTHESIZED_WIRE_4 =  ~SYNTHESIZED_WIRE_42;

assign	SYNTHESIZED_WIRE_5 =  ~SYNTHESIZED_WIRE_43;

assign	SYNTHESIZED_WIRE_31 = SYNTHESIZED_WIRE_10 & SYNTHESIZED_WIRE_11;

assign	SYNTHESIZED_WIRE_18 = SYNTHESIZED_WIRE_12 & SYNTHESIZED_WIRE_13;

assign	SYNTHESIZED_WIRE_32 = SYNTHESIZED_WIRE_14 & SYNTHESIZED_WIRE_43;

assign	SYNTHESIZED_WIRE_19 = SYNTHESIZED_WIRE_42 & SYNTHESIZED_WIRE_17;

assign	paper = SYNTHESIZED_WIRE_18 | SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_14 =  ~SYNTHESIZED_WIRE_42;

assign	SYNTHESIZED_WIRE_17 =  ~SYNTHESIZED_WIRE_43;

assign	SYNTHESIZED_WIRE_24 =  ~SYNTHESIZED_WIRE_41;

assign	SYNTHESIZED_WIRE_13 = SYNTHESIZED_WIRE_40 & SYNTHESIZED_WIRE_24;

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_25 & SYNTHESIZED_WIRE_26;

assign	SYNTHESIZED_WIRE_39 = SYNTHESIZED_WIRE_42 & SYNTHESIZED_WIRE_43;

assign	SYNTHESIZED_WIRE_25 =  ~SYNTHESIZED_WIRE_42;

assign	SYNTHESIZED_WIRE_26 =  ~SYNTHESIZED_WIRE_43;

assign	rock = SYNTHESIZED_WIRE_31 | SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_33 & SYNTHESIZED_WIRE_34;

assign	SYNTHESIZED_WIRE_6 =  ~SYNTHESIZED_WIRE_40;

assign	SYNTHESIZED_WIRE_33 =  ~SYNTHESIZED_WIRE_42;

assign	SYNTHESIZED_WIRE_34 =  ~SYNTHESIZED_WIRE_43;

assign	scissors = SYNTHESIZED_WIRE_38 | SYNTHESIZED_WIRE_39;


endmodule
