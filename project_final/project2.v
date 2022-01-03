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
// CREATED		"Thu Dec 23 11:06:02 2021"

module project2(
	dipswitch8,
	clk,
	rst,
	dipswitch,
	led3,
	led2,
	led1,
	led7,
	led6,
	led8,
	blue1,
	blue2,
	blue3,
	blue4,
	red4,
	red3,
	red2,
	red1,
	green2,
	green1,
	green4,
	green3,
	led4,
	led5,
	sci,
	ro,
	pa,
	rnd1_done,
	player1_rnd1_win,
	player2_rnd1_win,
	player,
	pr
);


input wire	dipswitch8;
input wire	clk;
input wire	rst;
input wire	[2:0] dipswitch;
output wire	led3;
output wire	led2;
output wire	led1;
output wire	led7;
output wire	led6;
output wire	led8;
output wire	blue1;
output wire	blue2;
output wire	blue3;
output wire	blue4;
output wire	red4;
output wire	red3;
output wire	red2;
output wire	red1;
output wire	green2;
output wire	green1;
output wire	green4;
output wire	green3;
output wire	led4;
output wire	led5;
output wire	sci;
output wire	ro;
output wire	pa;
output wire	rnd1_done;
output wire	player1_rnd1_win;
output wire	player2_rnd1_win;
output wire	player;
output wire	pr;

wire	[1:0] cnt;
wire	[1:0] cnt2;
wire	player_ALTERA_SYNTHESIZED;
wire	terminate;
wire	SYNTHESIZED_WIRE_49;
wire	SYNTHESIZED_WIRE_50;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_51;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_52;
wire	SYNTHESIZED_WIRE_53;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_54;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	[1:0] SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_55;
wire	SYNTHESIZED_WIRE_56;

assign	pr = dipswitch8;
assign	blue1 = SYNTHESIZED_WIRE_55;
assign	blue2 = SYNTHESIZED_WIRE_55;
assign	blue3 = SYNTHESIZED_WIRE_55;
assign	blue4 = SYNTHESIZED_WIRE_55;
assign	red4 = SYNTHESIZED_WIRE_56;
assign	red3 = SYNTHESIZED_WIRE_56;
assign	red2 = SYNTHESIZED_WIRE_56;
assign	red1 = SYNTHESIZED_WIRE_56;
assign	green2 = SYNTHESIZED_WIRE_52;
assign	green1 = SYNTHESIZED_WIRE_52;
assign	green4 = SYNTHESIZED_WIRE_52;
assign	green3 = SYNTHESIZED_WIRE_52;
assign	sci = SYNTHESIZED_WIRE_6;
assign	ro = SYNTHESIZED_WIRE_7;
assign	pa = SYNTHESIZED_WIRE_8;
assign	player1_rnd1_win = SYNTHESIZED_WIRE_51;
assign	player2_rnd1_win = SYNTHESIZED_WIRE_54;



assign	SYNTHESIZED_WIRE_35 =  ~terminate;

assign	SYNTHESIZED_WIRE_49 =  ~player_ALTERA_SYNTHESIZED;

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_49 & SYNTHESIZED_WIRE_50;


rnd1	b2v_inst100(
	.pr(dipswitch8),
	.clk(clk),
	.rst(rst),
	.scissors(SYNTHESIZED_WIRE_6),
	.rock(SYNTHESIZED_WIRE_7),
	.paper(SYNTHESIZED_WIRE_8));


four_bit_counter	b2v_inst11(
	.ce(SYNTHESIZED_WIRE_2),
	.clk(clk),
	.rst_n(dipswitch8),
	.Q0(cnt2));

assign	SYNTHESIZED_WIRE_20 = cnt[1] & cnt[0];

assign	SYNTHESIZED_WIRE_5 = cnt[0] | cnt[1];

assign	SYNTHESIZED_WIRE_27 = cnt2[1] & cnt2[0];

assign	SYNTHESIZED_WIRE_30 = cnt2[0] | cnt2[1];


four_bit_counter	b2v_inst12(
	.ce(SYNTHESIZED_WIRE_3),
	.clk(clk),
	.rst_n(rst),
	.Q0(SYNTHESIZED_WIRE_32));

assign	led1 = SYNTHESIZED_WIRE_51 | SYNTHESIZED_WIRE_5;


win_lose	b2v_inst16(
	.Scissors(SYNTHESIZED_WIRE_6),
	.Rock(SYNTHESIZED_WIRE_7),
	.Paper(SYNTHESIZED_WIRE_8),
	.sw_scissors(SYNTHESIZED_WIRE_9),
	.sw_rock(SYNTHESIZED_WIRE_10),
	.sw_paper(SYNTHESIZED_WIRE_11),
	.win(SYNTHESIZED_WIRE_52),
	.draw(SYNTHESIZED_WIRE_55),
	.lose(SYNTHESIZED_WIRE_56));

assign	SYNTHESIZED_WIRE_11 = dipswitch[2] & SYNTHESIZED_WIRE_50;

assign	SYNTHESIZED_WIRE_9 = dipswitch[1] & SYNTHESIZED_WIRE_50;

assign	SYNTHESIZED_WIRE_10 = dipswitch[0] & SYNTHESIZED_WIRE_50;


two_bit_compare	b2v_inst2(
	.A2(cnt[1]),
	.B2(cnt2[1]),
	.A1(cnt[0]),
	.B1(cnt2[0]),
	.draw(SYNTHESIZED_WIRE_33),
	.Awin(SYNTHESIZED_WIRE_39),
	.Alose(SYNTHESIZED_WIRE_38));


four_bit_counter	b2v_inst20(
	.ce(SYNTHESIZED_WIRE_15),
	.clk(clk),
	.rst_n(dipswitch8),
	.Q0(cnt));

assign	SYNTHESIZED_WIRE_15 = SYNTHESIZED_WIRE_52 & player_ALTERA_SYNTHESIZED;

assign	led2 = SYNTHESIZED_WIRE_51 | cnt[1];

assign	led3 = SYNTHESIZED_WIRE_51 | SYNTHESIZED_WIRE_53 | SYNTHESIZED_WIRE_20;

assign	led4 = SYNTHESIZED_WIRE_51 | SYNTHESIZED_WIRE_53;

assign	led5 = SYNTHESIZED_WIRE_54 | SYNTHESIZED_WIRE_53;

assign	led6 = SYNTHESIZED_WIRE_54 | SYNTHESIZED_WIRE_53 | SYNTHESIZED_WIRE_27;

assign	led7 = SYNTHESIZED_WIRE_54 | cnt2[1];

assign	led8 = SYNTHESIZED_WIRE_54 | SYNTHESIZED_WIRE_30;

assign	SYNTHESIZED_WIRE_31 = dipswitch[1] | dipswitch[0] | dipswitch[2];


control_unit	b2v_inst30(
	.reset(rst),
	.clock(clk),
	.dipor(SYNTHESIZED_WIRE_31),
	.dip8(dipswitch8),
	.cnt(SYNTHESIZED_WIRE_32),
	.player(player_ALTERA_SYNTHESIZED),
	.progress(SYNTHESIZED_WIRE_34),
	.terminate(terminate));
	defparam	b2v_inst30.state1 = 0;
	defparam	b2v_inst30.state2 = 2;
	defparam	b2v_inst30.state3 = 1;
	defparam	b2v_inst30.state4 = 5;
	defparam	b2v_inst30.state5 = 3;
	defparam	b2v_inst30.state6 = 4;
	defparam	b2v_inst30.state7 = 6;

assign	SYNTHESIZED_WIRE_53 = SYNTHESIZED_WIRE_33 & terminate;

assign	SYNTHESIZED_WIRE_50 = SYNTHESIZED_WIRE_34 & SYNTHESIZED_WIRE_35;

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_52 & SYNTHESIZED_WIRE_49;

assign	SYNTHESIZED_WIRE_54 = SYNTHESIZED_WIRE_38 & terminate;

assign	SYNTHESIZED_WIRE_51 = SYNTHESIZED_WIRE_39 & terminate;

assign	rnd1_done = terminate;
assign	player = player_ALTERA_SYNTHESIZED;

endmodule
