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
// CREATED		"Tue Dec 21 10:48:02 2021"

module test4(
	rst,
	clk,
	trigger,
	pr,
	base1,
	base2,
	base3,
	base4
);


input wire	rst;
input wire	clk;
input wire	trigger;
input wire	pr;
output wire	[3:0] base1;
output wire	[3:0] base2;
output wire	[3:0] base3;
output wire	[3:0] base4;

wire	[3:0] number;
wire	SYNTHESIZED_WIRE_0;
wire	[3:0] SYNTHESIZED_WIRE_1;
wire	[3:0] SYNTHESIZED_WIRE_18;
wire	[3:0] SYNTHESIZED_WIRE_19;
wire	[3:0] SYNTHESIZED_WIRE_20;
wire	[3:0] SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	[3:0] SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	[3:0] SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	[3:0] SYNTHESIZED_WIRE_16;





random	b2v_inst(
	.pr(pr),
	.clk(clk),
	.rst(rst),
	.one(number[0]),
	.two(number[1]),
	.three(number[2]),
	.four(number[3]));


con1	b2v_inst1(
	.reset(rst),
	.clock(clk),
	.trigger(trigger),
	.random(number),
	.En(SYNTHESIZED_WIRE_0),
	.final1(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst1.state1 = 0;
	defparam	b2v_inst1.state2 = 1;
	defparam	b2v_inst1.state3 = 2;
	defparam	b2v_inst1.state4 = 3;


four_bit_reg_ce	b2v_inst12(
	.ce(SYNTHESIZED_WIRE_0),
	.clk(clk),
	.rst_n(rst),
	.din(SYNTHESIZED_WIRE_1),
	.out(SYNTHESIZED_WIRE_18));


con3	b2v_inst13(
	.reset(rst),
	.clock(clk),
	.trigger(trigger),
	.final1(SYNTHESIZED_WIRE_18),
	.final2(SYNTHESIZED_WIRE_19),
	.random(number),
	.En(SYNTHESIZED_WIRE_15),
	.final3(SYNTHESIZED_WIRE_16));
	defparam	b2v_inst13.state1 = 0;
	defparam	b2v_inst13.state2 = 1;
	defparam	b2v_inst13.state3 = 2;
	defparam	b2v_inst13.state4 = 3;


com	b2v_inst14(
	.reset(rst),
	.clock(clk),
	.n(SYNTHESIZED_WIRE_18),
	.out_n(base1));
	defparam	b2v_inst14.state1 = 0;
	defparam	b2v_inst14.state2 = 1;
	defparam	b2v_inst14.state3 = 2;
	defparam	b2v_inst14.state4 = 3;


con4	b2v_inst15(
	.reset(rst),
	.clock(clk),
	.trigger(trigger),
	.final1(SYNTHESIZED_WIRE_18),
	.final2(SYNTHESIZED_WIRE_19),
	.final3(SYNTHESIZED_WIRE_20),
	.random(number),
	.En(SYNTHESIZED_WIRE_13),
	.final4(SYNTHESIZED_WIRE_14));
	defparam	b2v_inst15.state1 = 0;
	defparam	b2v_inst15.state2 = 1;
	defparam	b2v_inst15.state3 = 2;
	defparam	b2v_inst15.state4 = 3;


com	b2v_inst16(
	.reset(rst),
	.clock(clk),
	.n(SYNTHESIZED_WIRE_19),
	.out_n(base2));
	defparam	b2v_inst16.state1 = 0;
	defparam	b2v_inst16.state2 = 1;
	defparam	b2v_inst16.state3 = 2;
	defparam	b2v_inst16.state4 = 3;


com	b2v_inst17(
	.reset(rst),
	.clock(clk),
	.n(SYNTHESIZED_WIRE_20),
	.out_n(base3));
	defparam	b2v_inst17.state1 = 0;
	defparam	b2v_inst17.state2 = 1;
	defparam	b2v_inst17.state3 = 2;
	defparam	b2v_inst17.state4 = 3;


com	b2v_inst18(
	.reset(rst),
	.clock(clk),
	.n(SYNTHESIZED_WIRE_10),
	.out_n(base4));
	defparam	b2v_inst18.state1 = 0;
	defparam	b2v_inst18.state2 = 1;
	defparam	b2v_inst18.state3 = 2;
	defparam	b2v_inst18.state4 = 3;


four_bit_reg_ce	b2v_inst2(
	.ce(SYNTHESIZED_WIRE_11),
	.clk(clk),
	.rst_n(rst),
	.din(SYNTHESIZED_WIRE_12),
	.out(SYNTHESIZED_WIRE_19));


four_bit_reg_ce	b2v_inst3(
	.ce(SYNTHESIZED_WIRE_13),
	.clk(clk),
	.rst_n(rst),
	.din(SYNTHESIZED_WIRE_14),
	.out(SYNTHESIZED_WIRE_10));


four_bit_reg_ce	b2v_inst4(
	.ce(SYNTHESIZED_WIRE_15),
	.clk(clk),
	.rst_n(rst),
	.din(SYNTHESIZED_WIRE_16),
	.out(SYNTHESIZED_WIRE_20));


con2	b2v_inst9(
	.reset(rst),
	.clock(clk),
	.trigger(trigger),
	.final1(SYNTHESIZED_WIRE_18),
	.random(number),
	.En(SYNTHESIZED_WIRE_11),
	.final2(SYNTHESIZED_WIRE_12));
	defparam	b2v_inst9.state1 = 1;
	defparam	b2v_inst9.state2 = 2;
	defparam	b2v_inst9.state3 = 0;
	defparam	b2v_inst9.state4 = 3;


endmodule
