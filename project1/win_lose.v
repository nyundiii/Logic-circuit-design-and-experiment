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
// CREATED		"Wed Dec 01 18:13:11 2021"

module win_lose(
	Rock,
	Scissors,
	Paper,
	sw_rock,
	sw_scissors,
	sw_paper,
	win,
	draw,
	lose
);


input wire	Rock;
input wire	Scissors;
input wire	Paper;
input wire	sw_rock;
input wire	sw_scissors;
input wire	sw_paper;
output wire	win;
output wire	draw;
output wire	lose;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;




assign	SYNTHESIZED_WIRE_2 = Scissors & sw_rock;

assign	SYNTHESIZED_WIRE_6 = Rock & sw_rock;

assign	win = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_3 = Rock & sw_scissors;

assign	SYNTHESIZED_WIRE_7 = Paper & sw_paper;

assign	SYNTHESIZED_WIRE_5 = Scissors & sw_paper;

assign	SYNTHESIZED_WIRE_8 = Scissors & sw_scissors;

assign	SYNTHESIZED_WIRE_1 = Paper & sw_scissors;

assign	SYNTHESIZED_WIRE_0 = Rock & sw_paper;

assign	lose = SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_4 = Paper & sw_rock;

assign	draw = SYNTHESIZED_WIRE_6 | SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8;


endmodule
