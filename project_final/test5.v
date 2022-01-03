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
// CREATED		"Thu Dec 23 13:42:13 2021"

module test5(
	rst,
	clk,
	pr,
	random_reset,
	Keypad,
	a,
	b,
	c,
	d,
	e,
	f,
	g,
	com8,
	com7,
	com6,
	com5,
	com4,
	com3,
	com2,
	com1,
	led3,
	led2,
	led1,
	led4,
	led5,
	led7,
	led6,
	led8,
	Is4Strike,
	player,
	inputnum1,
	inputnum2,
	inputnum3,
	inputnum4,
	rannum1,
	rannum2,
	rannum3,
	rannum4
);


input wire	rst;
input wire	clk;
input wire	pr;
input wire	random_reset;
input wire	[11:0] Keypad;
output wire	a;
output wire	b;
output wire	c;
output wire	d;
output wire	e;
output wire	f;
output wire	g;
output wire	com8;
output wire	com7;
output wire	com6;
output wire	com5;
output wire	com4;
output wire	com3;
output wire	com2;
output wire	com1;
output wire	led3;
output wire	led2;
output wire	led1;
output wire	led4;
output wire	led5;
output wire	led7;
output wire	led6;
output wire	led8;
output wire	Is4Strike;
output wire	player;
output wire	[3:0] inputnum1;
output wire	[3:0] inputnum2;
output wire	[3:0] inputnum3;
output wire	[3:0] inputnum4;
output wire	[3:0] rannum1;
output wire	[3:0] rannum2;
output wire	[3:0] rannum3;
output wire	[3:0] rannum4;

wire	[2:0] B_ALTERA_SYNTHESIZED;
wire	[1:0] first;
wire	[1:0] fourth;
wire	[3:0] k1;
wire	[3:0] k2;
wire	[3:0] k3;
wire	[3:0] k4;
wire	[3:0] n1;
wire	[3:0] n2;
wire	[3:0] n3;
wire	[3:0] n4;
wire	[1:0] Q0;
wire	[1:0] r_first;
wire	[1:0] r_fourth;
wire	[1:0] r_second;
wire	[1:0] r_third;
wire	[2:0] S;
wire	[1:0] second;
wire	[1:0] third;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_28;
reg	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_4;
wire	[3:0] SYNTHESIZED_WIRE_6;
wire	[3:0] SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	[3:0] SYNTHESIZED_WIRE_16;
wire	[3:0] SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;

assign	com4 = 1;
assign	com3 = 1;
assign	com2 = 1;
assign	com1 = 1;




two_bit_reg_ce	b2v_inst(
	.ce(SYNTHESIZED_WIRE_0),
	.clk(clk),
	.rst_n(rst),
	.din(first),
	.out(r_first));


SBO	b2v_inst1(
	.reset(rst),
	.clock(clk),
	.sharp(SYNTHESIZED_WIRE_27),
	.key1(k1),
	.key2(k2),
	.key3(k3),
	.key4(k4),
	.random(n1),
	.S(first[0]),
	.B(first[1]),
	.ce(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst1.state1 = 1;
	defparam	b2v_inst1.state2 = 0;
	defparam	b2v_inst1.state3 = 2;
	defparam	b2v_inst1.state4 = 3;
	defparam	b2v_inst1.state5 = 4;


always@(posedge clk or negedge rst)
begin
if (!rst)
	begin
	SYNTHESIZED_WIRE_29 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_29 <= SYNTHESIZED_WIRE_2;
	end
end


test4	b2v_inst11(
	.rst(random_reset),
	.clk(clk),
	.trigger(SYNTHESIZED_WIRE_28),
	.pr(pr),
	.base1(n1),
	.base2(n2),
	.base3(n3),
	.base4(n4));

assign	player =  ~SYNTHESIZED_WIRE_29;

assign	SYNTHESIZED_WIRE_13 = S[1] & S[0];


trigger	b2v_inst1113(
	.Din(SYNTHESIZED_WIRE_4),
	.CLK(clk),
	.rst_n(rst),
	.Dout(SYNTHESIZED_WIRE_28));

assign	SYNTHESIZED_WIRE_14 = B_ALTERA_SYNTHESIZED[1] & B_ALTERA_SYNTHESIZED[0];


Decimal_to_binary	b2v_inst1115(
	.Keypad(Keypad),
	
	.chk(SYNTHESIZED_WIRE_4),
	.sharp(SYNTHESIZED_WIRE_27),
	.bin(SYNTHESIZED_WIRE_6));


four_bit_reg_ce	b2v_inst1116(
	.ce(SYNTHESIZED_WIRE_28),
	.clk(clk),
	.rst_n(rst),
	.din(SYNTHESIZED_WIRE_6),
	.out(k4));


four_bit_reg_ce	b2v_inst1117(
	.ce(SYNTHESIZED_WIRE_28),
	.clk(clk),
	.rst_n(rst),
	.din(k4),
	.out(k3));


four_bit_reg_ce	b2v_inst1118(
	.ce(SYNTHESIZED_WIRE_28),
	.clk(clk),
	.rst_n(rst),
	.din(k3),
	.out(k2));


four_bit_reg_ce	b2v_inst1119(
	.ce(SYNTHESIZED_WIRE_28),
	.clk(clk),
	.rst_n(rst),
	.din(k2),
	.out(k1));



b2seg_bus	b2v_inst1121(
	.b_in(SYNTHESIZED_WIRE_10),
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.e(e),
	.f(f),
	.g(g));

assign	SYNTHESIZED_WIRE_11 =  ~SYNTHESIZED_WIRE_29;


mx_2x1	b2v_inst12(
	.s_1(SYNTHESIZED_WIRE_11),
	.sel(SYNTHESIZED_WIRE_27),
	.s_0(SYNTHESIZED_WIRE_29),
	.m_out(SYNTHESIZED_WIRE_2));

assign	led2 = S[1] | S[2];

assign	led1 = S[2] | S[0] | S[1];


mx_4bit_2x1	b2v_inst15(
	.ce(Q0[0]),
	.s0(k4),
	.s1(k3),
	.m_out(SYNTHESIZED_WIRE_16));

assign	led3 = SYNTHESIZED_WIRE_13 | S[2];

assign	led7 = B_ALTERA_SYNTHESIZED[1] | B_ALTERA_SYNTHESIZED[2];

assign	led8 = B_ALTERA_SYNTHESIZED[2] | B_ALTERA_SYNTHESIZED[0] | B_ALTERA_SYNTHESIZED[1];

assign	led6 = SYNTHESIZED_WIRE_14 | B_ALTERA_SYNTHESIZED[2];


SBO	b2v_inst2(
	.reset(rst),
	.clock(clk),
	.sharp(SYNTHESIZED_WIRE_27),
	.key1(k2),
	.key2(k1),
	.key3(k3),
	.key4(k4),
	.random(n2),
	.S(second[0]),
	.B(second[1]),
	.ce(SYNTHESIZED_WIRE_24));
	defparam	b2v_inst2.state1 = 1;
	defparam	b2v_inst2.state2 = 0;
	defparam	b2v_inst2.state3 = 2;
	defparam	b2v_inst2.state4 = 3;
	defparam	b2v_inst2.state5 = 4;


four_bit_counter	b2v_inst20(
	.ce(rst),
	.clk(clk),
	.rst_n(rst),
	.Q0(Q0));


mx_4bit_2x1	b2v_inst21(
	.ce(Q0[0]),
	.s0(k2),
	.s1(k1),
	.m_out(SYNTHESIZED_WIRE_17));


mx_4bit_2x1	b2v_inst23(
	.ce(Q0[1]),
	.s0(SYNTHESIZED_WIRE_16),
	.s1(SYNTHESIZED_WIRE_17),
	.m_out(SYNTHESIZED_WIRE_10));

assign	SYNTHESIZED_WIRE_30 =  ~Q0[0];

assign	SYNTHESIZED_WIRE_31 =  ~Q0[1];


SBO	b2v_inst3(
	.reset(rst),
	.clock(clk),
	.sharp(SYNTHESIZED_WIRE_27),
	.key1(k3),
	.key2(k2),
	.key3(k1),
	.key4(k4),
	.random(n3),
	.S(third[0]),
	.B(third[1]),
	.ce(SYNTHESIZED_WIRE_25));
	defparam	b2v_inst3.state1 = 1;
	defparam	b2v_inst3.state2 = 0;
	defparam	b2v_inst3.state3 = 2;
	defparam	b2v_inst3.state4 = 3;
	defparam	b2v_inst3.state5 = 4;

assign	com8 = Q0[1] | Q0[0];

assign	com7 = SYNTHESIZED_WIRE_30 | Q0[1];

assign	com6 = Q0[0] | SYNTHESIZED_WIRE_31;

assign	com5 = SYNTHESIZED_WIRE_31 | SYNTHESIZED_WIRE_30;


SBO	b2v_inst4(
	.reset(rst),
	.clock(clk),
	.sharp(SYNTHESIZED_WIRE_27),
	.key1(k4),
	.key2(k2),
	.key3(k3),
	.key4(k1),
	.random(n4),
	.S(fourth[0]),
	.B(fourth[1]),
	.ce(SYNTHESIZED_WIRE_26));
	defparam	b2v_inst4.state1 = 1;
	defparam	b2v_inst4.state2 = 0;
	defparam	b2v_inst4.state3 = 2;
	defparam	b2v_inst4.state4 = 3;
	defparam	b2v_inst4.state5 = 4;


two_bit_reg_ce	b2v_inst5(
	.ce(SYNTHESIZED_WIRE_24),
	.clk(clk),
	.rst_n(rst),
	.din(second),
	.out(r_second));


two_bit_reg_ce	b2v_inst6(
	.ce(SYNTHESIZED_WIRE_25),
	.clk(clk),
	.rst_n(rst),
	.din(third),
	.out(r_third));


two_bit_reg_ce	b2v_inst7(
	.ce(SYNTHESIZED_WIRE_26),
	.clk(clk),
	.rst_n(rst),
	.din(fourth),
	.out(r_fourth));


sb_calculate	b2v_inst8(
	.SB0(r_first[0]),
	.SB1(r_second[0]),
	.SB2(r_third[0]),
	.SB3(r_fourth[0]),
	.Result(S));


sb_calculate	b2v_inst9(
	.SB0(r_first[1]),
	.SB1(r_second[1]),
	.SB2(r_third[1]),
	.SB3(r_fourth[1]),
	.Result(B_ALTERA_SYNTHESIZED));

assign	led4 = S[2];
assign	led5 = B_ALTERA_SYNTHESIZED[2];
assign	Is4Strike = S[2];
assign	inputnum1 = k1;
assign	inputnum2 = k2;
assign	inputnum3 = k3;
assign	inputnum4 = k4;
assign	rannum1 = n1;
assign	rannum2 = n2;
assign	rannum3 = n3;
assign	rannum4 = n4;

endmodule
