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
// CREATED		"Thu Dec 23 10:27:00 2021"

module week3_1_4(
	A,
	B,
	Cin,
	Cout,
	S
);


input wire	A;
input wire	B;
input wire	Cin;
output wire	Cout;
output wire	S;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;





week3_1_3	b2v_inst(
	.A(A),
	.B(B),
	.S(SYNTHESIZED_WIRE_2),
	.C(SYNTHESIZED_WIRE_0));

assign	Cout = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1;


week3_1_3	b2v_inst2(
	.A(SYNTHESIZED_WIRE_2),
	.B(Cin),
	.S(S),
	.C(SYNTHESIZED_WIRE_1));


endmodule
