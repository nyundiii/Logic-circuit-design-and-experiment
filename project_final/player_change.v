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
// CREATED		"Thu Dec 23 09:38:59 2021"

module player_change(
	pin_name1,
	a,
	b,
	c,
	d,
	e,
	f,
	g
);


input wire	pin_name1;
output wire	a;
output wire	b;
output wire	c;
output wire	d;
output wire	e;
output wire	f;
output wire	g;

wire	SYNTHESIZED_WIRE_4;

assign	c = pin_name1;
assign	f = 0;
assign	a = SYNTHESIZED_WIRE_4;
assign	d = SYNTHESIZED_WIRE_4;
assign	e = SYNTHESIZED_WIRE_4;
assign	g = SYNTHESIZED_WIRE_4;



assign	SYNTHESIZED_WIRE_4 =  ~pin_name1;

assign	b = SYNTHESIZED_WIRE_4 | pin_name1;



endmodule
