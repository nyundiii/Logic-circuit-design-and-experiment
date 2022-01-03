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
// CREATED		"Thu Dec 23 10:32:22 2021"

module mapping(
	one_in,
	one_out
);


input wire	[4:0] one_in;
output wire	[4:0] one_out;

wire	[4:0] one_out_ALTERA_SYNTHESIZED;
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




assign	one_out_ALTERA_SYNTHESIZED[1] = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2;


assign	SYNTHESIZED_WIRE_3 =  ~one_in[0];

assign	one_out_ALTERA_SYNTHESIZED[0] =  ~SYNTHESIZED_WIRE_3;

assign	one_out_ALTERA_SYNTHESIZED[2] = SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6;

assign	one_out_ALTERA_SYNTHESIZED[3] = SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_9 & SYNTHESIZED_WIRE_10 & one_in[1];

assign	SYNTHESIZED_WIRE_0 = one_in[3] & one_in[2] & SYNTHESIZED_WIRE_11;

assign	SYNTHESIZED_WIRE_8 = one_in[3] & SYNTHESIZED_WIRE_12 & SYNTHESIZED_WIRE_13;

assign	SYNTHESIZED_WIRE_1 = one_in[4] & SYNTHESIZED_WIRE_14;

assign	SYNTHESIZED_WIRE_6 = one_in[4] & SYNTHESIZED_WIRE_15;

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_16 & one_in[2];

assign	SYNTHESIZED_WIRE_5 = one_in[2] & one_in[1];

assign	SYNTHESIZED_WIRE_7 = one_in[4] & one_in[1];

assign	SYNTHESIZED_WIRE_9 =  ~one_in[4];

assign	SYNTHESIZED_WIRE_10 =  ~one_in[3];

assign	SYNTHESIZED_WIRE_11 =  ~one_in[1];

assign	SYNTHESIZED_WIRE_14 =  ~one_in[1];

assign	SYNTHESIZED_WIRE_12 =  ~one_in[2];

assign	SYNTHESIZED_WIRE_13 =  ~one_in[1];

assign	SYNTHESIZED_WIRE_15 =  ~one_in[1];

assign	SYNTHESIZED_WIRE_16 =  ~one_in[3];

assign	one_out = one_out_ALTERA_SYNTHESIZED;
assign	one_out_ALTERA_SYNTHESIZED[4] = 0;

endmodule
