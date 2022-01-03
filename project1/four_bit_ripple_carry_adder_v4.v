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
// CREATED		"Thu Dec 23 10:26:21 2021"

module four_bit_ripple_carry_adder_v4(
	C_in,
	carry,
	A,
	C_out,
	Sum
);


input wire	C_in;
input wire	carry;
input wire	[3:0] A;
output wire	C_out;
output wire	[3:0] Sum;

wire	[3:1] B;
wire	[3:0] Sum_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;





week3_1_4	b2v_inst(
	.A(A[0]),
	.B(carry),
	.Cin(C_in),
	.S(Sum_ALTERA_SYNTHESIZED[0]),
	.Cout(SYNTHESIZED_WIRE_0));



week3_1_4	b2v_inst2(
	.A(A[1]),
	.B(B[1]),
	.Cin(SYNTHESIZED_WIRE_0),
	.S(Sum_ALTERA_SYNTHESIZED[1]),
	.Cout(SYNTHESIZED_WIRE_1));


week3_1_4	b2v_inst3(
	.A(A[2]),
	.B(B[2]),
	.Cin(SYNTHESIZED_WIRE_1),
	.S(Sum_ALTERA_SYNTHESIZED[2]),
	.Cout(SYNTHESIZED_WIRE_2));


week3_1_4	b2v_inst4(
	.A(A[3]),
	.B(B[3]),
	.Cin(SYNTHESIZED_WIRE_2),
	.S(Sum_ALTERA_SYNTHESIZED[3]),
	.Cout(C_out));



assign	Sum = Sum_ALTERA_SYNTHESIZED;
assign	B[1] = 0;
assign	B[2] = 0;
assign	B[3] = 0;

endmodule
